/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.radiology.web.controller.worklist;

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
import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.openmrs.module.hospitalcore.util.PatientUtils;
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
@Controller("RadiologyResultController")
@RequestMapping("/module/radiology/result.form")
public class ResultController {

    @ModelAttribute("form")
    public RadiologyForm getForm(@RequestParam(value = "testId", required = false) Integer testId) {

        if (testId != null) {
          //  System.out.println("I ma in getForm and this is test id*********************************************" + testId);
            RadiologyForm form = new RadiologyForm();

            RadiologyTest test = getTest(testId);
            Integer testOrderId = test.getOrder().getOrderId();
            Patient patient = test.getPatient();
            Integer patientId = patient.getPatientId();
            String testName = test.getConcept().getName().toString();

            String fileName = patientId + "_" + testOrderId + "-" + replaceCharacterToString(testName) + ".txt";

            form.setId(testId);
            form.setOrderId(String.valueOf(testOrderId));
            form.setPatientId(String.valueOf(patientId));
            form.setConceptName(testName);
            form.setContent(getDefaultTest(fileName, replaceCharacterToString(testName)));
            // System.out.println(getReportContent(replaceInvalidCharacter(testName)));
            return form;
        }
        return new RadiologyForm();
    }
 
    @RequestMapping(method = RequestMethod.GET)
    public String showForm(@RequestParam(value = "testId", required = false) Integer testId,
            Model model) {

        RadiologyTest test = getTest(testId);
 
        Integer testOrderId = test.getOrder().getOrderId();
        Patient patient = test.getPatient();

        String patientName = PatientUtils.getFullName(patient);
        Integer patientId = patient.getPatientId();
        String age = patient.getAge().toString();
        String gender = patient.getGender();
        String refdBy = "Self";
        String testName = test.getConcept().getName().toString();

        model.addAttribute("patientId", patientId);
        model.addAttribute("patientName", patientName);
        model.addAttribute("age", age);
        model.addAttribute("gender", gender);
        model.addAttribute("refdBy", refdBy);
        model.addAttribute("testName", testName);
        model.addAttribute("testId", testId);
        model.addAttribute("orderId", testOrderId);
        model.addAttribute("deliveryDate", "delivery date");

        return "/module/radiology/worklist/editRadiologyCustomFormResult";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveForm(@ModelAttribute("form") RadiologyForm form, HttpServletRequest request,
            Model model) {
        saveContentAsTextFile(form.getContent(), form.getConceptName(), form.getId(), form.getOrderId(), form.getPatientId(), request);

        return "/module/radiology/worklist/editRadiologyCustomFormResult";
    }

    public String getDefaultTest(String fileName, String testName) {
        BufferedReader reader = null;
        StringBuilder stringBuilder = null;
        try {
            
            boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\TestFiles").mkdirs();

            File testFile = new File("D:\\OpenMRS\\Radiology\\TestFiles\\" + fileName);

            if (!testFile.exists()) {
//                String[] parts = fileName.split("-");
//              String  name = parts[1];
                testFile = new File("D:\\OpenMRS\\Radiology\\DefaultTest\\" + testName + ".txt");
            }

            if (!testFile.exists()) {
                return null;
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
            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if(reader!=null){
                reader.close();
                }
            } catch (IOException ex) {
                Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return stringBuilder.toString();
    }

    private void saveContentAsTextFile(String content, String testName, Integer testId, String orderId, String patientId, HttpServletRequest request) {

        try {

            boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\TestFiles").mkdirs();

            File file = new File("D:\\OpenMRS\\Radiology\\TestFiles\\" + patientId + "_" + orderId + "-" + replaceCharacterToString(testName) + ".txt");

            if (!file.exists()) {
                file.createNewFile();
            }

            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(content);
            bw.close();
            RadiologyService rs = (RadiologyService) Context
                    .getService(RadiologyService.class);
            RadiologyTest test = rs.getRadiologyTestById(testId);
            test.setStatus("completed");
            rs.saveRadiologyTest(test);

        } catch (IOException ex) {
            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private String replaceCharacterToString(String testName) {
        if (testName.contains("/")) {
            testName = testName.replaceAll("/", "slash");
        }
        return testName;
    }

    private String replaceStringToCharacter(String testName) {
        if (testName.contains("slash")) {
            testName = testName.replaceAll("slash", "/");
        }
        return testName;
    }

    private RadiologyTest getTest(Integer testId) {
        RadiologyService rs = (RadiologyService) Context
                .getService(RadiologyService.class);
        RadiologyTest test = rs.getRadiologyTestById(testId);

        return test;
    }
}
