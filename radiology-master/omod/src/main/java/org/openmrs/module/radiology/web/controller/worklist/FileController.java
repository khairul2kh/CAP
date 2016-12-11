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
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Amir
 */
@Controller("FileController")
//@RequestMapping("/module/radiology/file.htm")
public class FileController {

//    @RequestMapping(method = RequestMethod.GET)
//    public String createFile(@RequestParam(value = "element") String element, @RequestParam(value = "testName") String testName, HttpServletRequest request, Model model) {
//     
//        System.out.println("*******************" + testName);
//
//        try {
//
//            File file = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + testName + ".xml"));
//            if (file.createNewFile()) {
//                System.out.println("File is created!");
//            }
//            generateXmlFile(element, request, testName);
//        } catch (IOException ex) {
//            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        //  model.addAttribute("patient",patient.getNames());
//        return "/module/radiology/ajax/saveReportIntoXmlFile";
//    }
//
//    private void generateXmlFile(String element, HttpServletRequest request, String testName) {
//   System.out.println("************** i am in file Controller" + element);
//        InputStream isInHtml = null;
//        DataInputStream disInHtml = null;
//        FileOutputStream fosOutHtml = null;
//        FileWriter fwOutXml = null;
//        BufferedWriter bwOutXml = null;
//        try {
//            SAXBuilder saxBuilder = new SAXBuilder("org.ccil.cowan.tagsoup.Parser", false);
//            // org.jdom.Document jdomDocument = saxBuilder.build(brInHtml);
//            InputStream stream = new ByteArrayInputStream(element.getBytes(StandardCharsets.UTF_8));
//            org.jdom.Document jdomDocument = saxBuilder.build(stream);
//
//            XMLOutputter outputter = new XMLOutputter();
//            outputter.output(jdomDocument, System.out);
//            fwOutXml = new FileWriter(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + testName + ".xml"));
//            bwOutXml = new BufferedWriter(fwOutXml);
//            outputter.output(jdomDocument, bwOutXml);
//            System.out.flush();
//        } catch (FileNotFoundException ex) {
//            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (JDOMException ex) {
//            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (IOException ex) {
//            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            System.out.flush();
//            try {
//                fwOutXml.flush();
//                fwOutXml.close();
//                bwOutXml.close();
//            } catch (Exception w) {
//
//            }
//        }
//    }
    @RequestMapping(value = "/module/radiology/file.htm", method = RequestMethod.GET)
    public String createFile(@RequestParam(value = "element", required = false) String element, HttpServletRequest request, Model model) {
System.out.println("*********************************** 0");
     //   try {

//            boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\TestFiles").mkdirs();
//            System.out.println("*********************************** 1");
//            File file = new File("D:\\OpenMRS\\Radiology\\TestFiles\\" + patientId + "_" + orderId + "-" + replaceCharacterToString(testName) + ".txt");
//
//            if (!file.exists()) {
//                System.out.println("*********************** 2");
//                file.createNewFile();
//            }
//System.out.println("*************************************** 3");
//            FileWriter fw = new FileWriter(file.getAbsoluteFile());
//            BufferedWriter bw = new BufferedWriter(fw);
//            bw.write(element);
//            bw.close();
//System.out.println("*************************************** 4");
//            RadiologyService rs = (RadiologyService) Context
//                    .getService(RadiologyService.class);
//           // RadiologyTest test = rs.getRadiologyTestById(testId);
//           // test.setStatus("completed");
//           // rs.saveRadiologyTest(test);
//            System.out.println("*************************************** 5");
//
//        } catch (IOException ex) {
//            Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//System.out.println("*************************************** 6");
        return "/module/radiology/ajax/saveReportIntoXmlFile";
    }

    @RequestMapping(value = "/module/radiology/getReportFromTextFile.htm", method = RequestMethod.GET)
    public String getText(@RequestParam(value = "fileName") String fileName, HttpServletRequest request, Model model) {
        BufferedReader reader = null;
        StringBuilder stringBuilder = null;
        try {
            // reader = new BufferedReader(new FileReader(new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + fileName))));
            // reader = new BufferedReader(new FileReader(new File("D:\\OpenMRS\\Radiology\\TestFiles\\"+fileName)));
            // reader = new BufferedReader(new FileReader(new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + fileName))));

            reader = new BufferedReader(new FileReader(new File("D:\\OpenMRS\\Radiology\\TestFiles\\" + fileName)));
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
                reader.close();
            } catch (IOException ex) {
                Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        model.addAttribute("htmlContentAsString", stringBuilder.toString());
        return "/module/radiology/ajax/getReportFromTextFile";
    }

    @RequestMapping(value = "/module/radiology/getDefaultTextFile.htm", method = RequestMethod.GET)
    public String getDefaultTest(@RequestParam(value = "fileName") String fileName, @RequestParam(value = "testName") String testName, Model model) {
        BufferedReader reader = null;
        StringBuilder stringBuilder = null;
        try {
            // reader = new BufferedReader(new FileReader(new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + fileName))));
            // reader = new BufferedReader(new FileReader(new File("D:\\OpenMRS\\Radiology\\TestFiles\\"+fileName)));
            // reader = new BufferedReader(new FileReader(new File(request.getSession().getServletContext().getRealPath("/WEB-INF/view/module/radiology/file/" + fileName))));
            // reader = new BufferedReader(new FileReader(new File("D:\\OpenMRS\\Radiology\\TestFiles\\"+fileName)));

            boolean isFolderCreated = new File("D:\\OpenMRS\\Radiology\\TestFiles").mkdirs();

            fileName = replaceCharacterToString(fileName);

            File testFile = new File("D:\\OpenMRS\\Radiology\\TestFiles\\" + fileName);

            if (!testFile.exists()) {
//                String[] parts = fileName.split("-");
//              String  name = parts[1];
                testName = replaceCharacterToString(testName);
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
                reader.close();
            } catch (IOException ex) {
                Logger.getLogger(FileController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        model.addAttribute("htmlContentAsString", stringBuilder.toString());
        return "/module/radiology/ajax/getReportFromTextFile";
    }

    private String replaceStringToCharacter(String testName) {
        if (testName.contains("slash")) {
            testName = testName.replaceAll("slash", "/");
        }
        return testName;
    }

    private String replaceCharacterToString(String testName) {
        if (testName.contains("/")) {
            testName = testName.replaceAll("/", "slash");
        }
        return testName;
    }
}
