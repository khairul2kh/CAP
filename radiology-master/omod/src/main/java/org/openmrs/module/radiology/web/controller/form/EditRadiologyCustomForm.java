package org.openmrs.module.radiology.web.controller.form;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import org.openmrs.Concept;
import org.openmrs.ConceptName;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
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
@Controller("EditRadiologyCustomForm")
@RequestMapping("/module/radiology/editRadiologyCustomForm.form")
public class EditRadiologyCustomForm {

    @ModelAttribute("form")
    public RadiologyForm getForm(
            @RequestParam(value = "concept", required = false) Concept concept
            ) {
        
       // ConceptService conceptService = Context.getConceptService();
       // String conceptName = conceptService.getConcept(conceptId).getName().toString();
        
        if(concept!=null){
             String conceptName = concept.getName().toString();
            RadiologyForm form = new RadiologyForm();
            form.setConceptName(conceptName);
            form.setContent(getReportContent(replaceInvalidCharacter(conceptName)));
            return form;
        }
        return new RadiologyForm();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showForm(
            Model model) {
        return "/module/radiology/form/editRadiologyCustomForm";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveForm(@ModelAttribute("form") RadiologyForm form, HttpServletRequest request,
            Model model) {

        saveContentAsTextFile(form.getContent(), form.getConceptName(), request);

        return "redirect:/module/radiology/radiologyCustomFormList.form";
    }

    private void saveContentAsTextFile(String content, String testName, HttpServletRequest request) {

        String testCode = getPropertiesTestCode(request, testName);
        try {

            // File file = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + patientId+"-"+testName+ ".txt"));
            testName = replaceInvalidCharacter(testName);

            boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\DefaultTest").mkdirs();

            System.out.println("****************************8" + testName);

            File file = new File("D:\\OpenMRS\\Radiology\\DefaultTest\\" + testName + ".txt");

            if (!file.exists()) {
                System.out.println("****************************i am in" + testName);
                file.createNewFile();
            }

            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(content);
            bw.close();
        } catch (IOException ex) {
            Logger.getLogger(EditRadiologyCustomForm.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private String getPropertiesTestCode(HttpServletRequest request, String testNames) {

        try {

            File file = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/radiologyMapping.properties"));
            File xmlFile = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/radiologyMapping.xml"));
            if (!file.exists()) {
                file.createNewFile();
            }
            PropertyFilesUtil pf = new PropertyFilesUtil();

            String propertyFileName = "DB.properties";
            // String xmlFileName = "DB.xml";
            pf.writePropertyFile(file, xmlFile);
            // readPropertyFile(propertyFileName, xmlFileName);
            // readAllKeys(propertyFileName, xmlFileName);
            // readPropertyFileFromClasspath(propertyFileName);
            return "";
        } catch (IOException ex) {
            Logger.getLogger(EditRadiologyCustomForm.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
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

    private String replaceInvalidCharacter(String testName) {

        if (testName.contains("/")) {
            testName = testName.replaceAll("/", "slash");
        }
        
//        if(testName.contains("&")){
//     testName=testName.replaceAll("&", " and");
//     }
        return testName;
    }
}
