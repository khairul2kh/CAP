/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.radiology.web.controller.form;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.openmrs.Concept;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Amir
 */
@Controller("DeleteRadiologyFileController")
@RequestMapping("/module/radiology/deleteRadiologyFile.form")
public class DeleteRadiologyFileController {

//    @RequestMapping(method = RequestMethod.POST)
//    public String deleteForm(@RequestParam(value = "conceptName", required = false) String conceptName,
//            Model model) {
//        if (conceptName != null) {
//            System.out.println("before check invalid character************************" + conceptName);
//
//            String fileName = replaceInvalidCharacter(conceptName);
//            System.out.println("fileName************************" + fileName);
//            File file = new File("D:\\OpenMRS\\Radiology\\DefaultTest\\" + fileName + ".txt");
//          // System.out.println("File name**************************8"+file.getName()); 
//            //  file.delete();
//            System.out.println("File Status **********************************************" + file.delete());
//        }
//        return "redirect:/module/radiology/radiologyCustomFormList.form";
//    }
    

    @RequestMapping(method = RequestMethod.GET)
    public String deleteForm(@RequestParam(value = "concept", required = false) Concept concept,HttpServletRequest request,
            Model model) {
        String conceptName=concept.getName().toString();
        if (conceptName != null) {
            System.out.println("before check invalid character************************" + conceptName);

            String fileName = replaceInvalidCharacter(conceptName);
            System.out.println("fileName************************" + fileName);
            File file = new File("D:\\OpenMRS\\Radiology\\DefaultTest\\" + fileName + ".txt");
            System.out.println("File Status **********************************************" + file.delete());
        }
        return "redirect:/module/radiology/radiologyCustomFormList.form";
    }

    private String replaceInvalidCharacter(String fileName) {
        if (fileName.contains("/")) {
            fileName = fileName.replaceAll("/", "slash");
        }

//        if (fileName.contains("(AND)")) {
//    	  fileName = fileName.replaceAll("\\(AND\\)", "&");
//      }
        return fileName;
    }
}
