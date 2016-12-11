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

package org.openmrs.module.radiology.web.controller.editresult;

import org.openmrs.Encounter;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.openmrs.module.hospitalcore.util.RadiologyUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyGetDefaultXRayFormController")
@RequestMapping("/module/radiology/getDefaultXRayForm.form")
public class GetDefaultFormController {

	@RequestMapping(method = RequestMethod.GET)
	public String getDefaultXRayForm(@RequestParam(value = "testId") Integer testId,
			Model model) {
		RadiologyService rs = (RadiologyService) Context.getService(RadiologyService.class);
		RadiologyTest test = rs.getRadiologyTestById(testId);
		Encounter encounter = test.getEncounter();
		RadiologyForm form = test.getForm();
		model.addAttribute("form", form);
		if (encounter != null)
			model.addAttribute("encounterId", encounter.getEncounterId());
		RadiologyUtil.generateDataFromEncounter(model, encounter, form);
		model.addAttribute("testId", testId);
		return "/module/radiology/editresult/getDefaultXRayForm";
	}
}
