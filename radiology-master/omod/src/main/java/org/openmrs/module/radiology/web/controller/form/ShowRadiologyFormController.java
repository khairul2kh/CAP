/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.openmrs.module.radiology.web.controller.form;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.openmrs.Concept;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Amir
 */

@Controller("ShowRadiologyFormController")
@RequestMapping("/module/radiology/showRadiologyForm.form")
public class ShowRadiologyFormController {
    
    
     @RequestMapping(method = RequestMethod.GET)
    public String showForm( @RequestParam(value = "concept", required = false) Concept concept,
            Model model) {
        
        model.addAttribute("content", getReportContent(replaceInvalidCharacter(concept.getName().toString())));
        return "/module/radiology/form/showRadiologyForm";
    }
    
    
    private String getReportContent(String fileName) {

        BufferedReader reader = null;
        StringBuilder stringBuilder = null;
        try {
            File testFile = new File("D:\\OpenMRS\\Radiology\\DefaultTest\\" + fileName + ".txt");
            if (!testFile.exists()) {
                return "";
            }

            reader = new BufferedReader(new FileReader(testFile));

            String line = null;
            stringBuilder = new StringBuilder();
            String ls = System.getProperty("line.separator");

            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
                stringBuilder.append(ls);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(EditRadiologyCustomForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(EditRadiologyCustomForm.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {

                if (reader != null) {
                    reader.close();
                }

            } catch (IOException ex) {
                Logger.getLogger(EditRadiologyCustomForm.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return stringBuilder.toString();
    }
    
    private String replaceInvalidCharacter(String testName){
    if(testName.contains("/")){
             testName=testName.replaceAll("/", "slash");
     }
    return testName;
    }
    
}
