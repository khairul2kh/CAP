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

package org.openmrs.module.radiology.web.controller.form;

import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyEditFormController")
@RequestMapping("/module/radiology/editForm.form")
public class EditFormController {

	@ModelAttribute("form")
	public RadiologyForm getForm(
			@RequestParam(value = "id", required = false) Integer id) {
		if (id != null) {
			RadiologyService rs = (RadiologyService) Context
					.getService(RadiologyService.class);
			RadiologyForm form = rs.getRadiologyFormById(id);
			if (form != null)
				return form;
		}
		return new RadiologyForm();
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showForm() {
		return "/module/radiology/form/edit";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveForm(@ModelAttribute("form") RadiologyForm form,
			Model model) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
                
		rs.saveRadiologyForm(form);
		return "redirect:/module/radiology/listForm.form";
	}
}
