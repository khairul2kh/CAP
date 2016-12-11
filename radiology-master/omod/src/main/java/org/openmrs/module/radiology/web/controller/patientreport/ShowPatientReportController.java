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

package org.openmrs.module.radiology.web.controller.patientreport;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.openmrs.Concept;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.openmrs.module.hospitalcore.template.RadiologyTemplate;
import org.openmrs.module.hospitalcore.util.GlobalPropertyUtil;
import org.openmrs.module.hospitalcore.util.RadiologyConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyShowPatientReportControllerController")
@RequestMapping("/module/radiology/showPatientReport.form")
public class ShowPatientReportController {

	@RequestMapping(method = RequestMethod.GET)
	public String showView(@RequestParam("testId") Integer testId, Model model) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		RadiologyTest test = rs.getRadiologyTestById(testId);
		String testName = test.getConcept().getName().getName();
		RadiologyTemplate template = getTemplate(test.getConcept());
		
		model.addAttribute("testName", testName);
		model.addAttribute("patientId", test.getPatient().getPatientId());
		model.addAttribute("orderId", test.getOrder().getOrderId());
		model.addAttribute("template", template);
		model.addAttribute("testId", testId);
		return "/module/radiology/patientreport/showPatientReport";
	}

	private RadiologyTemplate getTemplate(Concept concept) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		List<RadiologyTemplate> templates = rs.getRadiologyTemplates(concept);
		if (CollectionUtils.isEmpty(templates)) {
			Integer templateId = GlobalPropertyUtil.getInteger(RadiologyConstants.PROPERTY_TEMPLATE_DEFAULT, 3);
			return rs.getRadiologyTemplate(templateId);
		} else {
			return templates.get(0);
		}
	}
}
