/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.billing.web.controller.staticreport;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.openmrs.User;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.MedisunService;
import org.openmrs.module.hospitalcore.model.DiaCommissionCal;
import org.openmrs.module.hospitalcore.model.DiaCommissionCalAll;
import org.openmrs.module.hospitalcore.model.DiaCommissionCalPaid;
import org.openmrs.module.hospitalcore.model.DiaCommissionCalPaidAdj;
import org.openmrs.module.hospitalcore.model.DiaPatientServiceBill;
import org.openmrs.module.hospitalcore.model.DocDetail;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Khairul
 */
@Controller("CommissionReportsView")
public class DocCommissionPayment {

    @RequestMapping(value = "/module/billing/comView.htm", method = RequestMethod.GET)
    public String comView(Model model) {
        //   Patient patient = Context.getPatientService().getPatient(patientId);
        //model.addAttribute("patientId", patientId);

        return "module/billing/reports/comView";
    }

    @RequestMapping(value = "/module/billing/comResult.htm", method = RequestMethod.GET)
    public String getCommision(HttpServletRequest request,
            @RequestParam("docIdName") Integer docId,
            @RequestParam(value = "sDate", required = false) String startDate,
            @RequestParam(value = "eDate", required = false) String endDate,
            //@RequestParam(value = "docch", required = false) Integer docch,
            Model model) {

        MedisunService ms = Context.getService(MedisunService.class);

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date date = null;
        Date date1 = null;
        try {
            date = sdf.parse(startDate);
            date1 = sdf.parse(endDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        List<DiaCommissionCal> diaComCal = ms.getDiaComCal(docId, date, date1);
        model.addAttribute("diaComCal", diaComCal);
        model.addAttribute("diaComCalSize", diaComCal.size());
        Integer docch = 1;
        if (docch == 1) {
            List<Integer> listBillId = new ArrayList<Integer>();

            List<DiaCommissionCal> listBillIdGroup = ms.listDiaComCalGroupByBillId(docId, docch, date, date1);
            for (int i = 0; i < listBillIdGroup.size(); i++) {
                Integer bId = listBillIdGroup.get(i).getDiaPatientServiceBill().getBillId();
                listBillId.add(bId);
            }

            model.addAttribute("listBillId", listBillId);
         //   System.out.println("**Group**" + listBillIdGroup);
            // System.out.println("**Singel**" + listBillId);
        }

        DocDetail docInfo = ms.getDocInfoById(docId);
        model.addAttribute("docInfo", docInfo);

        model.addAttribute("startDate", date);
        model.addAttribute("endDate", date1);

        if (Context.getAuthenticatedUser() != null && Context.getAuthenticatedUser().getId() != null) {
            return "module/billing/reports/comView";
        } else {
            return "redirect:/login.htm";
        }

        //  return "module/studentmanagement/session/checkSession";   
    }

    @RequestMapping(value = "/module/billing/commSave.form", method = RequestMethod.POST)
    public String saveCommission(HttpServletRequest request,
            @RequestParam("comId") Integer comID,
            @RequestParam("indCount") Integer indCount,
            @RequestParam("docId") Integer docId,
            @RequestParam(value = "note", required = false) String note,
            @RequestParam(value = "sDateValue", required = false) Date startDate,
            @RequestParam(value = "eDateValue", required = false) Date endDate,
            @RequestParam(value = "totalBill", required = false) String totalBill,
            @RequestParam(value = "dcomm", required = false) String dcomm,
            @RequestParam(value = "docNet", required = false) String docNet,
            @RequestParam(value = "paid", required = false) String paid,
            @RequestParam(value = "due", required = false) String due,
            Model model) {

        String[] billID = request.getParameterValues("bill[]");

        MedisunService ms = Context.getService(MedisunService.class);
        User user = Context.getAuthenticatedUser();

        BigDecimal serviceAmount = null;

        BigDecimal docComm = null;

        BigDecimal paidAmount = null;

        BigDecimal dueAmount = null;

        BigDecimal netAmount = null;

        try {
            serviceAmount = new BigDecimal(Double.parseDouble(totalBill));

            docComm = new BigDecimal(Double.parseDouble(dcomm));

            paidAmount = new BigDecimal(Double.parseDouble(paid));

            dueAmount = new BigDecimal(Double.parseDouble(due));

            netAmount = new BigDecimal(Double.parseDouble(docNet));
        } catch (Exception e) {
            e.printStackTrace();
        }

        DiaCommissionCalPaid dpaid = new DiaCommissionCalPaid();
        dpaid.setServiceAmount(serviceAmount);
        dpaid.setNetAmount(netAmount);
        dpaid.setDocCommission(docComm);
        dpaid.setCreatedDate(new Date());
        dpaid.setCreator(user);
        dpaid.setDocId(docId);
        dpaid.setPaidAmount(paidAmount);
        dpaid.setDueAmount(dueAmount);
        dpaid.setNote(note);

        ms.saveDiaComCalPaid(dpaid);

        DiaCommissionCalPaidAdj diaAdj = new DiaCommissionCalPaidAdj();
        diaAdj.setDiaComPaid(dpaid);
        diaAdj.setPayableAmount(docComm);
        diaAdj.setPaidAmount(paidAmount);
        diaAdj.setDueAmount(dueAmount);
        diaAdj.setUser(user);
        diaAdj.setCreatedDate(new Date());
        ms.saveDiaComPaidAdj(diaAdj);

        List<DiaCommissionCal> diaComCal = ms.getDiaComCal(comID, startDate, endDate);

        // List<DiaCommissionCal> diaList = ms.getDiaComCalByBillId(comID); //  Get By Ref Id then save it
        for (int i = 0; i < diaComCal.size(); i++) {
            DiaCommissionCal d = (DiaCommissionCal) diaComCal.get(i);
            d.setStatus(Boolean.TRUE);
            d.setDiaComPaid(dpaid);
            ms.saveDiaComCal(d);
        }

        for (int x = 0; x < billID.length; x++) {
            Integer a = Integer.parseInt(billID[x]);

            DiaPatientServiceBill diaSer = ms.getDiaPatientServiceBillId(a);
            diaSer.setComStatus(Boolean.TRUE);
            ms.saveDiaPatientServiceBill(diaSer);

            DiaCommissionCalAll dAll = ms.getDiaAllByBillId(a);
            dAll.setStatus(Boolean.TRUE);
            ms.saveDiaComAll(dAll);

        }

        return "module/billing/reports/comView";

    }

    @RequestMapping(value = "/module/billing/commUpdate.htm", method = RequestMethod.POST)
    public String commissionUpdate(HttpServletRequest request,
            @RequestParam(value = "id", required = false) Integer id,
            @RequestParam(value = "commission", required = false) String commission,
            Model model) {

        MedisunService ms = Context.getService(MedisunService.class);
        User user = Context.getAuthenticatedUser();

        DiaCommissionCal d = ms.getDiaComCalById(id);
        d.setCommission(commission);
        ms.saveDiaComCal(d);

        return "module/billing/thickbox/success";

    }
}
