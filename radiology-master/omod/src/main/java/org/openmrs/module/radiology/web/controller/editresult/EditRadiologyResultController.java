/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.openmrs.module.radiology.web.controller.editresult;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;
import org.openmrs.Concept;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyDepartment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Amir
 */
@Controller("EditRadiologyResultController")
@RequestMapping("/module/radiology/editRadiologyResult.form")
public class EditRadiologyResultController {
    
	@ModelAttribute("investigations")
	public Set<Concept> getAllForms(){
		RadiologyService rs = (RadiologyService) Context.getService(RadiologyService.class);
		RadiologyDepartment department = rs.getCurrentRadiologyDepartment();
		if(department!=null){
			Set<Concept> investigations = department.getInvestigations();
			return investigations;
		}
		return null;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showView(
			Model model) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		String dateStr = sdf.format(new Date());
		model.addAttribute("currentDate", dateStr);
		return "/module/radiology/editresult/radiologyList";
	}
}
