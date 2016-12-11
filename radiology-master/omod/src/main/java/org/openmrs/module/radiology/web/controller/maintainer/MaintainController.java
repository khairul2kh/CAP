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

package org.openmrs.module.radiology.web.controller.maintainer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;

import org.openmrs.Concept;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("RadiologyMaintainController")
public class MaintainController {

	/**
	 * Accept a test
	 * 
	 * @param orderId
	 * @param model
	 * @return id of accepted radiology test
	 * @throws IOException 
	 */
	@RequestMapping(value = "/module/radiology/maintain/checkRadiologyForm.htm", method = RequestMethod.GET)
	public void checkRadiology(HttpServletResponse response) throws IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		Pattern pattern = Pattern.compile("name=\"[a-zA-Z0-9 ]*\"");
		List<RadiologyForm> forms = Context.getService(RadiologyService.class).getAllRadiologyForms();
		Set<String> invalidConcepts = new HashSet<String>();
		Set<Integer> formIds = new HashSet<Integer>();
		for(RadiologyForm form:forms){			
			Matcher matcher = pattern.matcher(form.getContent());
			while (matcher.find()) {	
				String name = matcher.group().substring(6, matcher.group().length()-1);
				Concept concept = Context.getConceptService().getConcept(name);
				if(concept==null){
					invalidConcepts.add(name);
					formIds.add(form.getId());
				}
			}			
		}
		writer.println(formIds);
		for(String name:invalidConcepts){
			writer.println(name);
		}
	}
}
