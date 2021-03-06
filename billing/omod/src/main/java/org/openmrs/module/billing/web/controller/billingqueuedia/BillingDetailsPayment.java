/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.billing.web.controller.billingqueuedia;

import java.util.Date;
import java.util.List;
import org.openmrs.Concept;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.MedisunService;

import org.openmrs.module.hospitalcore.model.BillableService;
import org.openmrs.module.hospitalcore.model.DiaBillingOrder;
import org.openmrs.module.hospitalcore.model.DiaPatientServiceBill;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.openmrs.module.hospitalcore.model.PatientSearch;

/**
 *
 * @author khairul
 */
@Controller("BillingDetailsController")
public class BillingDetailsPayment {

    @RequestMapping(value = "/module/billing/billdetails.form", method = RequestMethod.GET)
    public String billAddEdit(@RequestParam(value="patientId", required = false) Integer patientId,
            @RequestParam(value = "refDocId", required = false) Integer refDocId,
            @RequestParam(value = "refMarId", required = false) Integer refMarId,
            @RequestParam(value = "orderId", required = false) Integer orderId,
            @RequestParam(value = "encounterId", required = false) Integer enocounterId,
            @RequestParam(value = "date", required = false) String dStr, Model model) {
        
        MedisunService ms = Context.getService(MedisunService.class);
        List<BillableService> diaBillOrderList = ms.getDiaBillingOrderandPatientId(orderId, patientId);
        model.addAttribute("billOrderList", diaBillOrderList);
        
        List<DiaBillingOrder> dbo=ms.getDiaBillOrderByPatientIdOrderId(patientId, orderId);
        model.addAttribute("dbo", dbo);
        ConceptService cs = Context.getConceptService();
      //  Concept c=cs.getConcept(2215);
      //  model.addAttribute("c", c);
//        List<String> cn = new ArrayList();
//           
//        for (int i = 0; i < dbo.size(); i++) {
//             Concept c=cs.getConcept(dbo.get(i).getConceptId()); 
//             String a = c.getName().getName();
//      }     model.addAttribute("cn", cn);
//        
        PatientSearch patientSearch = ms.getPatientSerachByID(patientId);
        model.addAttribute("patientSearch", patientSearch);

        model.addAttribute("patientId", patientId);
        model.addAttribute("orderId", orderId);
        model.addAttribute("encounterId", enocounterId);
        
        return "module/billing/private/addedit";
    }
    
    @RequestMapping(value = "/module/billing/removeSer.htm", method = RequestMethod.GET)
    public String serviceReomve( //@RequestParam("patientId") Integer patientId,
            
            @RequestParam(value = "id", required = false) Integer id,
            @RequestParam(value = "patientId", required = false) Integer patientId,
            @RequestParam(value = "orderId", required = false) Integer orderId,
            @RequestParam(value = "date", required = false) String dStr, Model model) {
        
        MedisunService ms = Context.getService(MedisunService.class);
        
        DiaBillingOrder d=ms.getDiaBillOrderById(id);
        ms.removeDiaBillOrder(d);
        model.addAttribute("patientId",patientId);
        model.addAttribute("orderId",orderId);
        model.addAttribute("encounterId",d.getEncounterId());
        return "redirect:/module/billing/billdetails.form";               
    }
    @RequestMapping(value = "/module/billing/serviceUpdate.htm", method = RequestMethod.POST)
    public String serviceUpdate( //@RequestParam("patientId") Integer patientId,
            
            //@RequestParam(value = "id", required = false) Integer id,
            ServiceResultCommandNew command,
            @RequestParam(value = "patientId", required = false) Integer patientId,
            @RequestParam(value = "orderId", required = false) Integer orderId,
            @RequestParam(value = "encounterId", required = false) Integer encounterId,      
            @RequestParam(value = "date", required = false) String dStr, Model model) {
        
        MedisunService ms = Context.getService(MedisunService.class);
        ConceptService cs=Context.getService(ConceptService.class);
        
         for (Integer pId : command.getSelectedTestDetails()) {
                DiaBillingOrder dbo = new DiaBillingOrder();
                dbo.setPatientId(patientId);
                dbo.setOrderId(orderId);
                dbo.setCreator(Context.getAuthenticatedUser().getId());
                dbo.setCreatedDate(new Date());
                dbo.setConceptId(pId);
                dbo.setEncounterId(encounterId);
                Concept c=cs.getConcept(pId);
                String a = c.getName().getName();
                dbo.setServiceName(a);
                ms.saveDiaBillingOrder(dbo);
            }
        return "module/billing/thickbox/success";           
    }
    //Due Bill Collect 
    @RequestMapping(value = "/module/billing/searchBill.htm", method = RequestMethod.GET)
    public String searchBill(@RequestParam("billId") String billId, Model model) {
        MedisunService ms = Context.getService(MedisunService.class);
        int bId = 0;
        try {
            bId = Integer.parseInt(billId);
        } catch (NumberFormatException e) {
            model.addAttribute("Found", "Cannot find bill");
            return "redirect:/module/billing/directbillingqueue.form";
        }
        DiaPatientServiceBill dpsb = ms.getDiaPatientServiceBillId(bId);
        if (null != dpsb) {
            return "redirect:/module/billing/dueBill.htm?patientId=" + dpsb.getPatient().getId()
                    + "&billId=" + dpsb.getBillId() + "&refDocId=" + dpsb.getRefDocId();
        } else {
            model.addAttribute("Found", "Cannot find bill");
            return "redirect:/module/billing/directbillingqueue.form";
        }
    }

   

}
