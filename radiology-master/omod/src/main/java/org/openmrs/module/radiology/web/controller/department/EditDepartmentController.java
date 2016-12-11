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

package org.openmrs.module.radiology.web.controller.department;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.openmrs.Role;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyCoreService;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyDepartment;
import org.openmrs.module.radiology.web.controller.propertyeditor.RadiologyDepartmentPropertyEditor;
import org.openmrs.module.radiology.web.controller.propertyeditor.RolePropertyEditor;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyEditDepartmentController")
@RequestMapping("/module/radiology/editDepartment.form")
public class EditDepartmentController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(RadiologyDepartment.class,
				new RadiologyDepartmentPropertyEditor());
		binder.registerCustomEditor(Role.class, new RolePropertyEditor());
		binder.registerCustomEditor(Set.class, "investigations",
				new CustomCollectionEditor(Set.class) {
					ConceptService conceptService = Context.getConceptService();

					protected Object convertElement(Object element) {
						String conceptName = null;
						if (element instanceof String)
							conceptName = (String) element;
						return conceptName != null ? conceptService
								.getConcept(conceptName) : null;
					}
				});
	}

	@ModelAttribute("department")
	public RadiologyDepartment getDepartment(
			@RequestParam(value = "id", required = false) Integer id) {
		RadiologyDepartment department = new RadiologyDepartment();
		if (id != null) {
			RadiologyService rs = (RadiologyService) Context
					.getService(RadiologyService.class);
			department = rs.getRadiologyDepartmentById(id);
		}
		return department;
	}

	@ModelAttribute("roles")
	public List<Role> getRoles(
			@RequestParam(value = "id", required = false) Integer id) {		
		List<Role> roles = Context.getUserService().getAllRoles();
		RadiologyCoreService rcs = Context.getService(RadiologyCoreService.class);
		List<RadiologyDepartment> departments = rcs.getAllRadiologyDepartments();

		// get all existing roles
		Set<Role> existingRoles = new HashSet<Role>();
		for (RadiologyDepartment d : departments) {
			if (!d.getId().equals(id)) {
				existingRoles.add(d.getRole());
			} else {
				System.out.println("department ==> " + d);
			}
		}

		// eliminate them from all roles list
		for (Role r : existingRoles) {
			roles.remove(r);
		}

		return roles;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showDepartment(
			@RequestParam(value = "id", required = false) Integer id,
			Model model) {
		return "/module/radiology/department/edit";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveForm(
			@ModelAttribute("department") RadiologyDepartment department,
			Model model) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		rs.saveRadiologyDepartment(department);
		return "redirect:/module/radiology/listDepartment.form";
	}
}
