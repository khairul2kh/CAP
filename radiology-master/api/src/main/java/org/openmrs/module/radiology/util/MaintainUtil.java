/**
 *  Copyright 2010 Society for Health Information Systems Programmes, India (HISP India)
 *
 *  This file is part of Radiology module.
 *
 *  Radiology module is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  Radiology module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Radiology module.  If not, see <http://www.gnu.org/licenses/>.
 *
 **/

package org.openmrs.module.radiology.util;

import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.openmrs.Concept;
import org.openmrs.ConceptWord;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.openmrs.module.hospitalcore.template.RadiologyTemplate;
import org.openmrs.module.hospitalcore.util.GlobalPropertyUtil;
import org.openmrs.module.hospitalcore.util.RadiologyConstants;

public class MaintainUtil {

	/**
	 * Create necessary concepts for default xray form
	 */
	public static void createConceptsForXrayDefaultForm() {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		rs.createConceptsForXrayDefaultForm();
	}

	/**
	 * Create X-ray default form
	 */
	public static void createXRayDefaultForm() {
		// create x-ray form
		String content = "<table border='0'>"
				+ "<tr>"
				+ "<td>"
				+ "<select name='RADIOLOGY XRAY DEFAULT FORM REPORT STATUS' title='RADIOLOGY XRAY DEFAULT FORM REPORT STATUS'>"
				+ "<option>Please select</option>"
				+ "<option value='RADIOLOGY XRAY DEFAULT FORM FILM GIVEN'>Film Given</option>"
				+ "<option value='RADIOLOGY XRAY DEFAULT FORM FILM NOT GIVEN'>Film Not Given</option>"
				+ "</select>"
				+ "</td>"
				+ "<td>"
				+ "Note: <input type='text' name='RADIOLOGY XRAY DEFAULT FORM NOTE' title='RADIOLOGY XRAY DEFAULT FORM NOTE'/>"
				+ "</td>" + "</tr>" + "</table>";
		RadiologyForm form = new RadiologyForm();
		form.setContent(content);
		form.setName("X-Ray default form");
		form.setDescription("This form will be used as the default form for all x-ray tests");
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		RadiologyForm createdForm = rs.saveRadiologyForm(form);

		// save the id to a global property
		GlobalPropertyUtil.saveGlobalProperty(
				RadiologyConstants.PROPERTY_FORM_DEFAULTXRAY,
				"The id of default X-Ray form", createdForm.getId());
	}

	/**
	 * Create default templates
	 */
	public static void createTemplates() {
		createDefaultTemplate();
		createAntenatalTemplate();
	}

	private static void createDefaultTemplate() {
		String content = "<table border='0' cellpadding='1' cellspacing='1' style='width: 100%;'><tbody><tr><td><div align='center' style='font-weight:bold; margin-bottom: 50px'> ROGI KALYAN SAMITI<br /> DEPARTMENT OF RADIO-DIAGNOSIS &amp; IMAGING<br /><span style='color:#ffffff; background-color: black;'>&nbsp;X-RAY/ULTRA SOUND REPORT&nbsp;</span><br /><br /><hr /></div></td></tr><tr><td><div id='forminfo' style='text-align: center;' title='form content'><input disabled='disabled' style='width:200px; border:2px solid red; text-align: center;' value='&lt;&lt;&lt; TEST INFORMATION &gt;&gt;&gt;' /></div><div title='form content'><div id='formcontent' title='form content'><input disabled='disabled' style='width:200px; border:2px solid red; text-align: center;' value='&lt;&lt;&lt; FORM CONTENT &gt;&gt;&gt;' /></div></div></td></tr><tr><td><div style='font-weight:bold; margin-left:400px; margin-top: 50px;'> RADIOLOGIST<br /><br /> DDUZH , SHIMLA HP</div></td></tr></tbody></table><p> &nbsp;</p>";
		RadiologyTemplate template = createTemplate("Default template",
				"Default template for all tests ", content, null);
		
		GlobalPropertyUtil.saveGlobalProperty(
				RadiologyConstants.PROPERTY_TEMPLATE_DEFAULT,
				"The id of default template", template.getId());		
	}

	private static void createAntenatalTemplate() {
		String content = "<table border='0' cellpadding='1' cellspacing='1' style='width: 100%;'><tbody><tr><td><div align='center' style='font-weight:bold; margin-bottom: 50px'> ROGI KALYAN SAMITI<br /> DEPARTMENT OF RADIO-DIAGNOSIS &amp; IMAGING<br /><span style='color:#ffffff; background-color: black;'>&nbsp;X-RAY/ULTRA SOUND REPORT&nbsp;</span><br /> (A Single Living Fetus Seen with Normal Skull Spine &amp;Heart)<br /><br /><hr /></div></td></tr><tr><td><div id='forminfo' style='text-align: center;' title='form content'><input disabled='disabled' style='width:200px; border:2px solid red; text-align: center;' value='&lt;&lt;&lt; TEST INFORMATION &gt;&gt;&gt;' /></div><div title='form content'><div id='formcontent' title='form content'><input disabled='disabled' style='width:200px; border:2px solid red; text-align: center;' value='&lt;&lt;&lt; FORM CONTENT &gt;&gt;&gt;' /></div></div></td></tr><tr><td><div style='margin-top: 50px;'><hr /><p align='center'> DECLARATION OF DOCTOR PERSON CONDUCTING ULTRASONOGRAPHY<br /> IMAGE SCANNING</p><p> I..................................................(Name of the person conducting Ultrasonography/Image scanning on Ms..................................................(Name of the pregnant woman), I have neither detected nor disclosed the sex of her foetus to anybody in any manner.</p><br /><br /><p style='text-align: right;'> Name and signature of the person conducting<br /> Ultrasonography/Image scanning/<br /> Director or owner of Genetic clinic/<br /> Ultrasound Clinic /Image Centre</p></div></td></tr></tbody></table><p> &nbsp;</p>";

		// create the set of concepts for ULTRASOUND ANTENATAL
		Set<Concept> tests = new HashSet<Concept>();		
		Concept concept = searchConcept(RadiologyConstants.ULTRASOUND_ANTENATAL_CONCEPT_NAME);
		tests.add(concept);
		
		createTemplate("ULTRASOUND ANTENATAL",
				"Template for ULTRASOUND ANTENATAL test ", content, tests);
	}
	
	@SuppressWarnings("deprecation")
	private static Concept searchConcept(String name) {
		Concept concept = Context.getConceptService().getConcept(name);
		if (concept != null) {
			return concept;
		} else {
			List<ConceptWord> cws = Context.getConceptService().findConcepts(
					name, new Locale("en"), false);
			if (!cws.isEmpty())
				return cws.get(0).getConcept();
		}
		return null;
	}

	private static RadiologyTemplate createTemplate(String name,
			String description, String content, Set<Concept> tests) {
		RadiologyTemplate template = new RadiologyTemplate();
		template.setName(name);
		template.setContent(content);
		template.setDescription(description);
		template.setTests(tests);
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		return rs.saveRadiologyTemplate(template);
	}
	
	/**
	 * Update select elements in radiology form for validation
	 */
	public static void updateFormSelects(){
		RadiologyService rs = (RadiologyService) Context.getService(RadiologyService.class);
		List<RadiologyForm> forms = rs.getAllRadiologyForms();
		for(RadiologyForm form:forms){
			String content = form.getContent();
			content = content.replace("<option>Please select", "<option value=''>Please select</option>");
			form.setContent(content);
			rs.saveRadiologyForm(form);
		}
	}
}
