/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.billing.web.controller.staticreport;

import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.MedisunService;
import org.openmrs.module.hospitalcore.model.DiaCommissionCal;
import org.openmrs.module.hospitalcore.model.DiaCommissionCalAll;
import org.openmrs.module.hospitalcore.model.DiaPatientServiceBill;
import org.openmrs.module.hospitalcore.model.DiaRmpName;
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
@Controller("CommissionPaymentController")
public class AllCommissionPayment {

    @RequestMapping(value = "/module/billing/compay.htm", method = RequestMethod.GET)
    public String comPay(Model model) {

        return "module/billing/reports/allCom";
    }

    @RequestMapping(value = "/module/billing/compayview.htm", method = RequestMethod.GET)
    public String comPayView(@RequestParam("docch") Integer docch,
            @RequestParam(value = "sDate", required = false) String startDate,
            @RequestParam(value = "eDate", required = false) String endDate,
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

        if (docch > 0) {

            List<DiaCommissionCalAll> listDia = ms.listDiaComCalAll(docch, date, date1);
            model.addAttribute("listDia", listDia);
 
            List<DiaPatientServiceBill> listSerBill = ms.getCommissionCal(docch, date, date1);
            model.addAttribute("listSerBill", listSerBill);

            List<Integer> abc = new ArrayList<Integer>();
            List<Integer> withoutDueList = new ArrayList<Integer>();
            List<TestModel> tm = new ArrayList<TestModel>();

            if (docch == 1) {
                for (Integer i = 0; i < listSerBill.size(); i++) {
                    Integer docId = listSerBill.get(i).getRefDocId();
                    DocDetail docInfo = ms.getDocInfoById(docId);
                    TestModel t = new TestModel();
                    t.setDoctorName(docInfo.getDoctorName());
                    t.setAddress(docInfo.getAddress());
                    t.setDergee(docInfo.getDergee());
                    t.setDesignation(docInfo.getDesignation());
                    t.setId(docInfo.getId());
                    t.setTerritory(docInfo.getTerritory());
                    tm.add(t);

                }
                for (Integer i = 0; i < listDia.size(); i++) {
                    Integer a = listDia.get(i).getDiaPatientServiceBill().getBillId();
                    abc.add(a);
                    DiaPatientServiceBill ss = ms.getDiaPatientServiceBillId(a);
                    if (!StringUtils.equalsIgnoreCase(ss.getBillingStatus(), "DUE")) {
                        Integer b = listDia.get(i).getDiaPatientServiceBill().getBillId();
                        withoutDueList.add(b);
                    }
                }

            }

            //// for rmp / ch
            if (docch == 2) {
                for (Integer i = 0; i < listSerBill.size(); i++) {
                    Integer rmpId = listSerBill.get(i).getRefRmpId();

                    DiaRmpName drmp = ms.getDiaRmpById(rmpId);

                    TestModel t = new TestModel();
                    t.setDoctorName(drmp.getName());
                    t.setAddress(drmp.getAddress());
                    t.setDergee(drmp.getDergee());
                    t.setDesignation(drmp.getDesignation());
                    t.setId(drmp.getId());
                    t.setTerritory(drmp.getTerritory());
                    tm.add(t);

                }
                for (Integer i = 0; i < listDia.size(); i++) {
                    Integer a = listDia.get(i).getDiaPatientServiceBill().getBillId();

                    DiaPatientServiceBill ss = ms.getDiaPatientServiceBillId(a);
                    if (!StringUtils.equalsIgnoreCase(ss.getBillingStatus(), "DUE")) {
                        Integer b = listDia.get(i).getDiaPatientServiceBill().getBillId();
                        withoutDueList.add(b);
                    }
                }

            }

            model.addAttribute("docInfo", tm);
            Collections.sort(abc);
            model.addAttribute("abc", abc);
            model.addAttribute("withoutDueList", withoutDueList);
            model.addAttribute("docch", docch);

        }

        //return "module/billing/reports/allCom";
        
         if (Context.getAuthenticatedUser() != null && Context.getAuthenticatedUser().getId() != null) {
            return "module/billing/reports/allCom";
        } else {
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(value = "/module/billing/comSave.htm", method = RequestMethod.POST)
    public String comPaid(HttpServletRequest request,
            DocComModel command, //@RequestParam(value = "billId[]", required = false) Integer[] billId,
            // @RequestParam(value = "info", required = false) String[] info,
            Model model) {
        MedisunService ms = Context.getService(MedisunService.class);
        String[] myJsonData = request.getParameterValues("json[]");

        for (int i = 0; i < myJsonData.length; i++) {
            //Integer a=myJsonData[i];
            Integer a = Integer.parseInt(myJsonData[i]);

            DiaCommissionCalAll dAll = ms.getDiaAllByBillId(a);
            dAll.setStatus(Boolean.TRUE);
            ms.saveDiaComAll(dAll);

            DiaPatientServiceBill serBill = ms.getDiaPatientServiceBillId(a);
            serBill.setComStatus(Boolean.TRUE);
            ms.saveDiaPatientServiceBill(serBill);

            List<DiaCommissionCal> diaComCal = ms.listDiaComCalByBillId(a);

            for (int x = 0; x < diaComCal.size(); x++) {

                DiaCommissionCal d = (DiaCommissionCal) diaComCal.get(x);
                d.setStatus(Boolean.TRUE);
                ms.saveDiaComCal(d);
            }

            System.out.println(myJsonData[i]);
            model.addAttribute("msg", "Thanks !! Successfullay Paid Commission !!!!");
        }

       
        return "module/billing/thickbox/success_1";
    }
}
