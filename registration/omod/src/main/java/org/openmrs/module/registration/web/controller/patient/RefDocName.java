/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.registration.web.controller.patient;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.openmrs.Concept;
import org.openmrs.ConceptAnswer;
import org.openmrs.User;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.openmrs.module.registration.RegistrationService;
import org.openmrs.module.registration.model.DocDetails;
import org.openmrs.module.registration.model.MarketedBy;
import org.openmrs.module.registration.model.RefDoctor;
import org.openmrs.module.registration.model.MarketedBy;
import org.openmrs.module.hospitalcore.MedisunService;
import org.openmrs.module.hospitalcore.model.DocDetail;
import org.openmrs.module.hospitalcore.model.MarDetails;
import org.openmrs.module.registration.model.RmpName;

/**
 *
 * @author khairul
 */
@Controller("RefDocName")
public class RefDocName {

    @RequestMapping(value = "/refDoc.htm", method = RequestMethod.GET)
    public String viewForm(Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        List<DocDetails> docDetails = rs.getdocName();
        model.addAttribute("docDetails", docDetails);
 
        return "/module/registration/mhc/refDocName";
    }

    @RequestMapping(value = "/refDoc.htm", method = RequestMethod.POST)
    public String submitForm(@RequestParam("docName") String docName,
            @RequestParam("designation") String designation,
            @RequestParam("phone") String phone,
            @RequestParam("address") String address,
            @RequestParam("refferedCode") String refferedCode,
            @RequestParam("docDeg") String docDeg,
            @RequestParam("terr") String terr, Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        User creator = Context.getAuthenticatedUser();
        DocDetails doc = new DocDetails();
        doc.setCreatedDate(new Date());
        doc.setCreator(creator.getId());
        doc.setDoctorName(docName);
        doc.setDesignation(designation);
        doc.setAddress(address);
        doc.setPhone(phone);
        doc.setRefferedCode(refferedCode);
        doc.setDergee(docDeg);
        doc.setTerritory(terr);

        rs.saveDocDetails(doc);

        return "/module/registration/mhc/refDocName";
    }

    @RequestMapping(value = "/marketedBy.htm", method = RequestMethod.GET)
    public String viewMarketedBy(Model model) {
        RegistrationService rs = Context.getService(RegistrationService.class);
        List<MarketedBy> marketedBy = rs.getMarketedBy();
        model.addAttribute("marketedBy", marketedBy);
        return "/module/registration/mhc/marketedBy";
    }

    @RequestMapping(value = "/marketedBy.htm", method = RequestMethod.POST)
    public String saveMarketedBy(@RequestParam("personName") String personName, Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        MarketedBy mar = new MarketedBy();
        mar.setCreatedDate(new Date());
        mar.setCreator(Context.getAuthenticatedUser().getId());
        mar.setName(personName);
        rs.saveMarketedBy(mar);
        return "/module/registration/mhc/marketedBy";
    }

    @RequestMapping(value = "/editRefDoc.htm", method = RequestMethod.GET)
    public String refForm(@RequestParam("id") int docId, Model model) {
        // MedisunService ms = Context.getService(MedisunService.class);
        // DocDetail docInfo = ms.getDocInfoById(docId);
        // model.addAttribute("docInfo", docInfo);
        // model.addAttribute("docId", docId);

        RegistrationService rs = Context.getService(RegistrationService.class);
        DocDetails docInfo = rs.getDocInById(docId);
        model.addAttribute("docInfo", docInfo);
        model.addAttribute("docId", docId);

        return "/module/registration/mhc/editRefDocName";
    }

    @RequestMapping(value = "/editSaveRef.htm", method = RequestMethod.POST)
    public String editRef(@RequestParam("id") Integer docId,
            @RequestParam("designation") String designation,
            @RequestParam("phone") String phone,
            @RequestParam("address") String address,
            @RequestParam("refferedCode") String refferedCode,
            @RequestParam("docDeg") String docDeg,
            @RequestParam("terr") String terr, HttpServletRequest request, Model model) {
        RegistrationService rs = Context.getService(RegistrationService.class);
        DocDetails docInfo = rs.getDocInById(docId);
        String name = request.getParameter("docName");
        docInfo.setDoctorName(name);
        docInfo.setDesignation(designation);
        docInfo.setAddress(address);
        docInfo.setPhone(phone);
        docInfo.setRefferedCode(refferedCode);
        docInfo.setTerritory(terr);
        docInfo.setDergee(docDeg);
        rs.saveById(docInfo);
        return "/module/registration/thickbox/success";
    }

    @RequestMapping(value = "/editMar.htm", method = RequestMethod.GET)
    public String marForm(@RequestParam("id") int marId, Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        MarDetails marInfo = rs.getMarInById(marId);
        model.addAttribute("marInfo", marInfo);
        model.addAttribute("marId", marId);

        return "/module/registration/mhc/editMarName";
    }

    @RequestMapping(value = "/editSaveMar.htm", method = RequestMethod.POST)
    public String editMar(@RequestParam("id") Integer marId, HttpServletRequest request, Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        MarDetails marInfo = rs.getMarInById(marId);
        String name = request.getParameter("marName");
        marInfo.setName(name);
        rs.saveByIdMar(marInfo);

        return "/module/registration/thickbox/success";
    }

    @RequestMapping(value = "/refRmp.htm", method = RequestMethod.GET)
    public String viewRMPForm(Model model) {
        RegistrationService rs = Context.getService(RegistrationService.class);
        List<RmpName> rmp = rs.getRmpNameAll();
        model.addAttribute("rmp", rmp);

        return "/module/registration/mhc/rmpName";
    }

    @RequestMapping(value = "/refRmp.htm", method = RequestMethod.POST)
    public String saveRMPForm(@RequestParam("rmpName") String rmpName,
            @RequestParam("designation") String designation,
            @RequestParam("phone") String phone,
            @RequestParam("chDeg") String chDeg,
            @RequestParam("address") String address,
            @RequestParam("terr") String terr, Model model) {
        RegistrationService rs = Context.getService(RegistrationService.class);

        RmpName rmp = new RmpName();
        rmp.setName(rmpName);
        rmp.setCreatedDate(new Date());
        rmp.setCreator(Context.getAuthenticatedUser().getId());
        rmp.setAddress(address);
        rmp.setDesignation(designation);
        rmp.setPhone(phone);
        rmp.setDergee(chDeg);
        rmp.setTerritory(terr);

        rs.saveRmp(rmp);
        return "/module/registration/mhc/rmpName";
    }

    @RequestMapping(value = "/editRmp.htm", method = RequestMethod.GET)
    public String editRmp(@RequestParam("id") int marId, Model model) {

        RegistrationService rs = Context.getService(RegistrationService.class);
        RmpName rmp = rs.getRmpById(marId);
        model.addAttribute("rmp", rmp);
        return "/module/registration/mhc/editRmpName";
    }

    @RequestMapping(value = "/editSaveRmp.htm", method = RequestMethod.POST)
    public String editSaveRmp(@RequestParam("id") Integer rmpId, HttpServletRequest request, Model model) {

        String name = request.getParameter("rmpName");
        String degree = request.getParameter("deg");
        String desig = request.getParameter("des");
        String phone = request.getParameter("pho");
        String address = request.getParameter("add");
        String terr = request.getParameter("ter");

        RegistrationService rs = Context.getService(RegistrationService.class);
        RmpName rmp = rs.getRmpById(rmpId);
        rmp.setName(name);

        rmp.setDergee(degree);
        rmp.setDesignation(desig);
        rmp.setPhone(phone);
        rmp.setAddress(address);
        rmp.setTerritory(terr);

        rs.reSaveRmpById(rmp);

        return "/module/registration/thickbox/success";
    }

}
