/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.billing.web.controller.staticreport;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.openmrs.api.context.Context;
import org.openmrs.module.billing.AllDoctorOrRmpCommission;
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

        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        Date sDate = null;
        Date eDate = null;
        try {
            sDate = format.parse(startDate);
            eDate = format.parse(endDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //
        List<DiaCommissionCal> allDoctorAndRmpCommission = ms.getAllDoctorAndRmpCommission(docch, sDate, eDate);
        List<DiaCommissionCal> doctorAndRmpList = new ArrayList();
        List<Integer> billIdListWithOutDue = new ArrayList();

        for (DiaCommissionCal diaCommissionCal : allDoctorAndRmpCommission) {

            if (!StringUtils.equalsIgnoreCase(diaCommissionCal.getDiaPatientServiceBill().getBillingStatus(), "DUE")) {
                Integer billId = diaCommissionCal.getDiaPatientServiceBill().getBillId();
                billIdListWithOutDue.add(billId);
            }
            doctorAndRmpList.add(diaCommissionCal);
        }

        List<AllDoctorOrRmpCommission> allDoctorOrRmpCommissionList;
        
        if (docch == 2) {
            Collections.sort(doctorAndRmpList, new RefRmpIdComparator());
            allDoctorOrRmpCommissionList = getAllCalculatedCommission(doctorAndRmpList);

            Set<DiaRmpName> rmpIdSet = new HashSet();

            for (AllDoctorOrRmpCommission allDoctorOrRmpCommission : allDoctorOrRmpCommissionList) {
                rmpIdSet.add(ms.getDiaRmpById(allDoctorOrRmpCommission.getRmpId()));
            }
            List<DiaRmpName> rmpList = new ArrayList<DiaRmpName>(rmpIdSet);

            Collections.sort(rmpList, new RmpDetailsComparator());
            model.addAttribute("rmpDetailsList", rmpList);
            
        } else {
            
            Collections.sort(doctorAndRmpList, new DoctorRefIdComparator());

            allDoctorOrRmpCommissionList = getAllCalculatedCommission(doctorAndRmpList);
            
            Set<DocDetail> doctorIdSet = new HashSet();
            
            for (AllDoctorOrRmpCommission allDoctorOrRmpCommission : allDoctorOrRmpCommissionList) {
                doctorIdSet.add(ms.getDocInfoById(allDoctorOrRmpCommission.getDoctorId()));
            }
            List<DocDetail> doctorList = new ArrayList<DocDetail>(doctorIdSet);

            Collections.sort(doctorList, new DoctorDetailsComparator());
            model.addAttribute("docDetailsList", doctorList);
        }

        model.addAttribute("billIdListWithOutDue", billIdListWithOutDue);
        model.addAttribute("allDoctorAndRmpCommission", allDoctorOrRmpCommissionList);
        model.addAttribute("docch", docch);

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
    
      @RequestMapping(value = "/module/billing/paidCommissionPaymentView.htm", method = RequestMethod.GET)
    public String commissionPaymentView(Model model) {

        return "module/billing/reports/paidCommissionPaymentView";
    }
    
     @RequestMapping(value = "/module/billing/paidCommissionPaymentView.htm", method = RequestMethod.POST)
    public String getPaidDoctorAndRmpCommission(@RequestParam("docch") Integer docch,
            @RequestParam(value = "sDate", required = false) String startDate,
            @RequestParam(value = "eDate", required = false) String endDate,
            Model model) {
        
        
               MedisunService ms = Context.getService(MedisunService.class);

        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        Date sDate = null;
        Date eDate = null;
        try {
            sDate = format.parse(startDate);
            eDate = format.parse(endDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //
        List<DiaCommissionCal> allDoctorAndRmpCommission = ms.getAllPaidDoctorAndRmpCommission(docch, sDate, eDate);
        List<DiaCommissionCal> paidDoctorAndRmpList = new ArrayList();

        for (DiaCommissionCal diaCommissionCal : allDoctorAndRmpCommission) {

         
            paidDoctorAndRmpList.add(diaCommissionCal);
        }

        List<AllDoctorOrRmpCommission> allPaidDoctorOrRmpCommissionList;
        
        if (docch == 2) {
            Collections.sort(paidDoctorAndRmpList, new RefRmpIdComparator());
            allPaidDoctorOrRmpCommissionList = getAllCalculatedCommission(paidDoctorAndRmpList);

            Set<DiaRmpName> rmpIdSet = new HashSet();

            for (AllDoctorOrRmpCommission allDoctorOrRmpCommission : allPaidDoctorOrRmpCommissionList) {
                rmpIdSet.add(ms.getDiaRmpById(allDoctorOrRmpCommission.getRmpId()));
            }
            List<DiaRmpName> paidRmpList = new ArrayList<DiaRmpName>(rmpIdSet);

            Collections.sort(paidRmpList, new RmpDetailsComparator());
            model.addAttribute("paidRmpDetailsList", paidRmpList);
            
        } else {
            
            Collections.sort(paidDoctorAndRmpList, new DoctorRefIdComparator());

            allPaidDoctorOrRmpCommissionList = getAllCalculatedCommission(paidDoctorAndRmpList);
            
            Set<DocDetail> doctorIdSet = new HashSet();
            
            for (AllDoctorOrRmpCommission allDoctorOrRmpCommission : allPaidDoctorOrRmpCommissionList) {
                doctorIdSet.add(ms.getDocInfoById(allDoctorOrRmpCommission.getDoctorId()));
            }
            List<DocDetail> paidDoctorList = new ArrayList<DocDetail>(doctorIdSet);

            Collections.sort(paidDoctorList, new DoctorDetailsComparator());
            model.addAttribute("paidDocDetailsList", paidDoctorList);
        }

        model.addAttribute("allPaidDoctorAndRmpCommission", allPaidDoctorOrRmpCommissionList);
        model.addAttribute("docch", docch);

        if (Context.getAuthenticatedUser() != null && Context.getAuthenticatedUser().getId() != null) {
            return "module/billing/reports/paidCommissionPaymentView";
        } else {
            return "redirect:/login.htm";
        }
 }

    private List<AllDoctorOrRmpCommission> getAllCalculatedCommission(List<DiaCommissionCal> allDoctorAndRmpCommission) {
        Date previousCreatedDate=null;
        String previousBillingStatus = "";
        Integer billIdForLoopStatus = null;
        Integer rmpIdForLoopingStatus = null;
        Integer doctorIdForLoopingStatus = null;
        String commaSeparatedServiceNames = "";

        double subTotalLessAmount = 0;
        double subTotalCommissionAmount = 0;
        double subTotalServicePrice = 0;
        double subTotalRefferalAmount = 0;

        MedisunService ms = Context.getService(MedisunService.class);

        //DocDetail docInfo = ms.getDocInfoById(docId);
        //DiaRmpName drmp = ms.getDiaRmpById(rmpId);
        List<AllDoctorOrRmpCommission> allDoctorAndRmpCommissionList = new ArrayList();

        for (DiaCommissionCal diaCommissionCal : allDoctorAndRmpCommission) {

            double servicePrice = Double.valueOf(diaCommissionCal.getServicePrice().toString());
            double lessAmount = Double.valueOf(diaCommissionCal.getLessAmount().toString());
            Integer doctorCommission = Integer.parseInt(diaCommissionCal.getCommission());
            Date createdDate = diaCommissionCal.getCreatedDate();
            String serviceName = diaCommissionCal.getServiceName();
            Integer refId = diaCommissionCal.getRefId();
            Integer refRmpId = diaCommissionCal.getRefRmpId();
            Integer billId = diaCommissionCal.getDiaPatientServiceBill().getBillId();
            String billingStatus = diaCommissionCal.getDiaPatientServiceBill().getBillingStatus();

            double totalPercentage = (lessAmount / servicePrice) * 100;

            double actualRefferal = (servicePrice * doctorCommission) / 100;

            double payableRefferal = 0;

            if (diaCommissionCal.getDiaPatientServiceBill().getBillingStatus().equalsIgnoreCase("PAID")) {

                if (totalPercentage == doctorCommission) {
                    payableRefferal = 0;
                } else if (totalPercentage > doctorCommission) {
                    payableRefferal = 0;
                } else if (totalPercentage > 20) {
                    payableRefferal = actualRefferal - lessAmount;
                } else if (totalPercentage <= 20) {
                    payableRefferal = actualRefferal - (lessAmount / 2);
                }

            }

            if (billIdForLoopStatus == null) {
                billIdForLoopStatus = billId;
                previousBillingStatus = billingStatus;
            }

            if (rmpIdForLoopingStatus == null) {
                rmpIdForLoopingStatus = refRmpId;
            }

            if (doctorIdForLoopingStatus == null) {
                doctorIdForLoopingStatus = refId;
            }
            
            if(previousCreatedDate==null){
            previousCreatedDate=createdDate;
            }

            if (billIdForLoopStatus != billId) {

                AllDoctorOrRmpCommission commission = new AllDoctorOrRmpCommission();

                commission.setDoctorId(doctorIdForLoopingStatus);
                commission.setRmpId(rmpIdForLoopingStatus);
                commission.setCreatedDate(previousCreatedDate);
                commission.setBillId(billIdForLoopStatus);
                commission.setInvestigationNames(commaSeparatedServiceNames);
                commission.setServicePrice(subTotalServicePrice);
                commission.setCommission(subTotalCommissionAmount);
                commission.setDiscount(subTotalLessAmount);
                commission.setPayablerefferralAmount(subTotalRefferalAmount);
                commission.setBillingStatus(previousBillingStatus);

                allDoctorAndRmpCommissionList.add(commission);

                previousBillingStatus = billingStatus;
                rmpIdForLoopingStatus = refRmpId;
                doctorIdForLoopingStatus = refId;
                billIdForLoopStatus = billId;
                previousCreatedDate=createdDate;
                subTotalLessAmount = 0;
                subTotalCommissionAmount = 0;
                subTotalServicePrice = 0;
                subTotalRefferalAmount = 0;
                commaSeparatedServiceNames = "";
              

            }

            commaSeparatedServiceNames = commaSeparatedServiceNames + serviceName + ",";

            subTotalLessAmount = subTotalLessAmount + lessAmount;
            subTotalCommissionAmount = subTotalCommissionAmount + actualRefferal;
            subTotalServicePrice = subTotalServicePrice + servicePrice;
            subTotalRefferalAmount = subTotalRefferalAmount + payableRefferal;

            if (allDoctorAndRmpCommission.indexOf(diaCommissionCal) == allDoctorAndRmpCommission.size() - 1) {

                AllDoctorOrRmpCommission commission = new AllDoctorOrRmpCommission();
                commission.setDoctorId(doctorIdForLoopingStatus);
                commission.setRmpId(rmpIdForLoopingStatus);
                commission.setCreatedDate(previousCreatedDate);
                commission.setBillId(billIdForLoopStatus);
                commission.setInvestigationNames(commaSeparatedServiceNames);
                commission.setServicePrice(subTotalServicePrice);
                commission.setCommission(subTotalCommissionAmount);
                commission.setDiscount(subTotalLessAmount);
                commission.setPayablerefferralAmount(subTotalRefferalAmount);
                commission.setBillingStatus(previousBillingStatus);
                
                allDoctorAndRmpCommissionList.add(commission);
            }
        }
        return allDoctorAndRmpCommissionList;
    }
}

class RefRmpIdComparator implements Comparator<DiaCommissionCal> {

    @Override
    public int compare(DiaCommissionCal o1, DiaCommissionCal o2) {
        DiaCommissionCal commission = (DiaCommissionCal) o1;
        DiaCommissionCal commission2 = (DiaCommissionCal) o2;
        return commission.getRefRmpId().compareTo(commission2.getRefRmpId());
    }
}

class DoctorRefIdComparator implements Comparator<DiaCommissionCal> {

    @Override
    public int compare(DiaCommissionCal o1, DiaCommissionCal o2) {
        DiaCommissionCal commission = (DiaCommissionCal) o1;
        DiaCommissionCal commission2 = (DiaCommissionCal) o2;
        return commission.getRefId().compareTo(commission2.getRefId());
    }
}

class RmpDetailsComparator implements Comparator<DiaRmpName> {

    @Override
    public int compare(DiaRmpName o1, DiaRmpName o2) {
        DiaRmpName rmp = (DiaRmpName) o1;
        DiaRmpName rmp2 = (DiaRmpName) o2;
        return rmp.getId() - rmp2.getId();
    }
}

class DoctorDetailsComparator implements Comparator<DocDetail> {

    @Override
    public int compare(DocDetail o1, DocDetail o2) {
        DocDetail rmp = (DocDetail) o1;
        DocDetail rmp2 = (DocDetail) o2;
        return rmp.getId() - rmp2.getId();
    }
}
