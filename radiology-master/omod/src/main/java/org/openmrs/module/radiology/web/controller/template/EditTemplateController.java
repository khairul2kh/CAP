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

package org.openmrs.module.radiology.web.controller.template;

import java.util.Set;

import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyDepartment;
import org.openmrs.module.hospitalcore.template.RadiologyTemplate;
import org.openmrs.module.hospitalcore.util.RadiologyUtil;
import org.openmrs.module.radiology.web.controller.propertyeditor.RadiologyTemplatePropertyEditor;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyEditTemplateController")
@RequestMapping("/module/radiology/editTemplate.form")
public class EditTemplateController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(RadiologyDepartment.class,
				new RadiologyTemplatePropertyEditor());
		binder.registerCustomEditor(Set.class, "tests",
				new CustomCollectionEditor(Set.class) {

					protected Object convertElement(Object element) {
						String conceptName = null;
						if (element instanceof String)
							conceptName = (String) element;
						return conceptName != null ? RadiologyUtil.searchConcept(conceptName) : null;
					}
				});
	}

	@ModelAttribute("template")
	public RadiologyTemplate getTemplate(
			@RequestParam(value = "id", required = false) Integer id) {
		RadiologyTemplate template = new RadiologyTemplate();
		if (id != null) {
			RadiologyService rs = (RadiologyService) Context
					.getService(RadiologyService.class);
			template = rs.getRadiologyTemplate(id);
		}
		return template;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showDepartment(
			@RequestParam(value = "id", required = false) Integer id,
			Model model) {
		return "/module/radiology/template/edit";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveForm(
			@ModelAttribute("template") RadiologyTemplate template,
			Model model) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		rs.saveRadiologyTemplate(template);
		return "redirect:/module/radiology/listTemplate.form";
	}
}
