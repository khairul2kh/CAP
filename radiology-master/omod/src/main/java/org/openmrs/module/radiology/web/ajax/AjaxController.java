/**
 * Copyright 2010 Society for Health Information Systems Programmes, India (HISP
 * India)
 *
 * This file is part of Radiology module.
 *
 * Radiology module is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option) any
 * later version.
 *
 * Radiology module is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Radiology module. If not, see <http://www.gnu.org/licenses/>.
 *
 *
 */
package org.openmrs.module.radiology.web.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.openmrs.Concept;
import org.openmrs.ConceptWord;
import org.openmrs.Order;
import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyCoreService;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.concept.TestTree;
import org.openmrs.module.hospitalcore.form.RadiologyForm;
import org.openmrs.module.hospitalcore.model.RadiologyDepartment;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.openmrs.module.hospitalcore.util.PatientUtils;
import org.openmrs.module.hospitalcore.util.RadiologyUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyAjaxController")
public class AjaxController {
    Set<String>  conceptNames;

    /**
     * Accept a test
     *
     * @param orderId
     * @param model
     * @return id of accepted radiology test
     */
    @RequestMapping(value = "/module/radiology/ajax/acceptTest.htm", method = RequestMethod.GET)
    public String acceptTest(@RequestParam("orderId") Integer orderId,
            @RequestParam("date") String dateStr, Model model) {
        Order order = Context.getOrderService().getOrder(orderId);
        if (order != null) {
            try {
                RadiologyService rs = (RadiologyService) Context
                        .getService(RadiologyService.class);
                Integer acceptedTestId = rs.acceptTest(order);
                model.addAttribute("acceptedTestId", acceptedTestId);
            } catch (Exception e) {
                model.addAttribute("acceptedTestId", "0");
            }
        }
        return "/module/radiology/ajax/acceptTest";
    }

    /**
     * Unaccept a test
     *
     * @param testId
     * @param model
     * @return
     */
    @RequestMapping(value = "/module/radiology/ajax/unacceptTest.htm", method = RequestMethod.GET)
    public String unacceptTest(@RequestParam("testId") Integer testId,
            Model model) {
        RadiologyService rs = (RadiologyService) Context
                .getService(RadiologyService.class);
        RadiologyTest test = rs.getRadiologyTestById(testId);
        String unacceptStatus = rs.unacceptTest(test);
        model.addAttribute("unacceptStatus", unacceptStatus);
        return "/module/radiology/ajax/unacceptTest";
    }

    /**
     * Complete a test
     *
     * @param testId
     * @param model
     * @return
     */
    @RequestMapping(value = "/module/radiology/ajax/completeTest.htm", method = RequestMethod.GET)
    public String completeTest(@RequestParam("testId") Integer testId,
            Model model) {
        RadiologyService rs = (RadiologyService) Context
                .getService(RadiologyService.class);
        RadiologyTest test = rs.getRadiologyTestById(testId);
        String completeStatus = rs.completeTest(test);
        model.addAttribute("completeStatus", completeStatus);
        return "/module/radiology/ajax/completeTest";
    }

    /**
     * Concept search autocomplete for form
     *
     * @param name
     * @param model
     * @return
     */
    @SuppressWarnings("deprecation")
    @RequestMapping(value = "/module/radiology/ajax/autocompleteConceptSearch.htm", method = RequestMethod.GET)
    public String autocompleteConceptSearch(
            @RequestParam(value = "q", required = false) String name,
            Model model) {
        List<ConceptWord> cws = Context.getConceptService().findConcepts(name,
                new Locale("en"), false);
               // Context.getConceptService().get
  

//        Set<String> conceptNames = new HashSet<String>();
//        for (ConceptWord word : cws) {
//            String conceptName = word.getConcept().getName().getName();
//            conceptNames.add(conceptName);
//        }
//        List<String> concepts = new ArrayList<String>();
//        concepts.addAll(conceptNames);
//        Collections.sort(concepts, new Comparator<String>() {
//
//            public int compare(String o1, String o2) {
//                return o1.compareToIgnoreCase(o2);
//            }
//        });
//        model.addAttribute("conceptNames", concepts);
                

      if(conceptNames== null){
       conceptNames =   getConceptNames(getRadiologyConcepts());
       
       System.out.println("************i am null");
        List<String> sortedConceptNames = new ArrayList<String>();
        sortedConceptNames.addAll(conceptNames);
        Collections.sort(sortedConceptNames, new Comparator<String>() {
            public int compare(String o1, String o2) {
                return o1.compareToIgnoreCase(o2);
            }
        });
        
      }
      
        
        
        List<String> selectedNames=new ArrayList();
        for (String string : conceptNames) {
            
            if(string.contains(name)){
                //System.out.println("**********8conceptName"+name);
            selectedNames.add(string);
            }
            name="";
        }
        System.out.println("********size"+selectedNames.size());
        model.addAttribute("conceptNames", selectedNames);
        return "/module/radiology/ajax/autocompleteConceptSearch";
    }
    
    private Set<Integer> getConceptIdSet(Set<Concept> concepts) {
        Set<Integer> conceptIdSet = new HashSet<Integer>();
        for (Concept concept : concepts) {
            TestTree tree = new TestTree(concept);
            conceptIdSet.addAll(tree.getConceptIDSet());
        }
        return conceptIdSet;
    }
    
    private Set<Concept> getConceptsSet(Set<Concept> concepts) {
        Set<Concept> conceptNameSet = new HashSet<Concept>();
        for (Concept concept : concepts) {
            TestTree tree = new TestTree(concept);
            conceptNameSet.addAll(tree.getConceptSet());
        }
        return conceptNameSet;
    }

//    private Set<String> getRadiologyConceptIds() {
//        Set<Integer> conceptIdSet = new HashSet<Integer>();
//        Set<String> conceptNameSet = new HashSet<String>();
//        RadiologyCoreService rcs = (RadiologyCoreService) Context.getService(RadiologyCoreService.class);
//        List<RadiologyDepartment> departments = rcs.getAllRadiologyDepartments();
//        for (RadiologyDepartment department : departments) {
//          //  conceptIdSet.addAll(getConceptIdSet(department.getInvestigations()));
//            conceptNameSet.addAll(getConceptNameSet(department.getInvestigations()));
//        }
//        //return conceptIdSet;
//        return conceptNameSet;
//    }
    
    
    
    
        private Set<Concept> getRadiologyConcepts() {
        Set<Concept> conceptNameSet = new HashSet<Concept>();
        RadiologyCoreService rcs = (RadiologyCoreService) Context.getService(RadiologyCoreService.class);
        List<RadiologyDepartment> departments = rcs.getAllRadiologyDepartments();
        for (RadiologyDepartment department : departments) {
            conceptNameSet.addAll(getConceptsSet(department.getInvestigations()));
        }
        return conceptNameSet;
    }
        
        private Set<String> getConceptNames(Set<Concept> concepts){
         Set<String> conceptNames = new HashSet<String>();
        
            for (Concept concept : concepts) {
                conceptNames.add(concept.getName().toString());
            }
         
        return conceptNames;
        }

    /**
     * Show patient/test information when showing on patient report page
     *
     * @param patientIdentifier
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping(value = "/module/radiology/ajax/showTestInfo.htm", method = RequestMethod.GET)
    public String showTestInfo(@RequestParam("patientId") Integer patientId,
            @RequestParam(value = "orderId", required = false) Integer orderId,
            Model model) {
        Patient patient = Context.getPatientService().getPatient(patientId);
        if (patient != null) {
            model.addAttribute("patient_identifier", patient
                    .getPatientIdentifier().getIdentifier());
            model.addAttribute("patient_age", patient.getAge());
            model.addAttribute("patient_gender", patient.getGender());
            model.addAttribute("patient_name", PatientUtils.getFullName(patient));
        }
        if (orderId != null) {
            Order order = Context.getOrderService().getOrder(orderId);
            if (order != null) {
                model.addAttribute("test_orderDate",
                        RadiologyUtil.formatDate(order.getDateCreated()));
                model.addAttribute("test_name", order.getConcept().getName()
                        .getName());
            }
        }
        return "/module/radiology/ajax/showTestInfo";
    }

    @RequestMapping(value = "/module/radiology/ajax/checkExistingForm.htm", method = RequestMethod.GET)
    public String checkExistingForm(
            @RequestParam("conceptName") String conceptName,
            @RequestParam(value = "formId", required = false) Integer formId,
            Model model) {
        Concept concept = RadiologyUtil.searchConcept(conceptName);
        boolean duplicatedFormFound = false;
        if (concept != null) {
            RadiologyService rs = (RadiologyService) Context
                    .getService(RadiologyService.class);
            List<RadiologyForm> forms = rs.getRadiologyForms(conceptName);
            if (!CollectionUtils.isEmpty(forms)) {
                if (formId != null) {
                    RadiologyForm form = rs.getRadiologyFormById(formId);
                    if ((forms.size() == 1) && (forms.contains(form))) {

                    } else {
                        duplicatedFormFound = true;
                    }
                    if (forms.contains(form)) {
                        forms.remove(form);
                    }
                } else {
                    duplicatedFormFound = true;
                }

            }
            model.addAttribute("duplicatedFormFound", duplicatedFormFound);
            model.addAttribute("duplicatedForms", forms);
        }
        return "/module/radiology/ajax/checkExistingForm";
    }

    @RequestMapping(value = "/module/radiology/ajax/validateRescheduleDate.htm", method = RequestMethod.GET)
    public void validateRescheduleDate(
            @RequestParam("rescheduleDate") String rescheduleDateStr,
            HttpServletResponse response) throws IOException, ParseException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter writer = response.getWriter();

        Date rescheduleDate = RadiologyUtil.parseDate(rescheduleDateStr
                + " 00:00:00");
        Date now = new Date();
        String currentDateStr = RadiologyUtil.formatDate(now) + " 00:00:00";
        Date currentDate = RadiologyUtil.parseDate(currentDateStr);
        if (rescheduleDate.after(currentDate)) {
            writer.print("success");
        } else {
            writer.print("fail");
        }
    }
}
