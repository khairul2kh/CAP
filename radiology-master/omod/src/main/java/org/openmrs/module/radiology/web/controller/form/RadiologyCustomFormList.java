package org.openmrs.module.radiology.web.controller.form;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.openmrs.Concept;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Amir
 */
@Controller("RadiologyCustomFormList")
@RequestMapping("/module/radiology/radiologyCustomFormList.form")
public class RadiologyCustomFormList {

//    @ModelAttribute("forms")
//	public List<RadiologyForm> getAllForms(){
//		RadiologyService rs = (RadiologyService) Context.getService(RadiologyService.class);
//                System.out.println("RadiologyCustomFOrmListController****************************88");
//		return rs.getAllRadiologyForms();
//	}
    @ModelAttribute("forms")
    public List<RadiologyForm> getAllForms() {
        List<RadiologyForm> fileList = new ArrayList();

        boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\DefaultTest").mkdirs();

        File dir = new File("D:\\OpenMRS\\Radiology\\DefaultTest");
        for (File file : dir.listFiles()) {

            //fileList.add(new RadiologyForm(file.getName()));
            ConceptService conceptService = Context.getConceptService();
            Concept concept = conceptService.getConceptByName(replaceInvalidCharacter(removeFileExtention(file.getName())));

            RadiologyForm form = new RadiologyForm();
            form.setConceptName(replaceInvalidCharacter(removeFileExtention(file.getName())));
            form.setConcept(concept);

            fileList.add(form);
        }
        return fileList;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listForms(
            Model model) {

        return "/module/radiology/form/radiologyCustomFormList";
    }

    private String removeFileExtention(String fileName) {
        if (fileName.indexOf(".") > 0) {
            fileName = fileName.substring(0, fileName.lastIndexOf("."));
        }
        return fileName;
    }

    private String replaceInvalidCharacter(String testName) {
        if (testName.contains("slash")) {
            testName = testName.replaceAll("slash", "/");
        }
        return testName;
    }
}
