/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.openmrs.module.billing;

import java.util.Date;
import org.openmrs.module.hospitalcore.model.DiaRmpName;
import org.openmrs.module.hospitalcore.model.DocDetail;

/**
 *
 * @author Amir
 */
public class AllDoctorOrRmpCommission {
    
    private Date createdDate;
    private Integer billId;
    private String investigationNames;
    private double servicePrice;
    private double refferralAount;
    private Integer doctorId;
    private Integer rmpId;
    private double discount;
    private Double commission;
    private double  payablerefferralAmount;
    private String billingStatus;

    public String getBillingStatus() {
        return billingStatus;
    }

    public void setBillingStatus(String billingStatus) {
        this.billingStatus = billingStatus;
    }
  
    
        public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public Integer getRmpId() {
        return rmpId;
    }

    public void setRmpId(Integer rmpId) {
        this.rmpId = rmpId;
    }


    
    
    public Integer getBillId() {
        return billId;
    }



    public void setBillId(Integer billId) {
        this.billId = billId;
    }

    public String getInvestigationNames() {
        return investigationNames;
    }

    public void setInvestigationNames(String investigationNames) {
        this.investigationNames = investigationNames;
    }

    public double getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(double servicePrice) {
        this.servicePrice = servicePrice;
    }

    public double getRefferralAount() {
        return refferralAount;
    }

    public void setRefferralAount(double refferralAount) {
        this.refferralAount = refferralAount;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Double getCommission() {
        return commission;
    }

    public void setCommission(Double commission) {
        this.commission = commission;
    }

    public double getPayablerefferralAmount() {
        return payablerefferralAmount;
    }

    public void setPayablerefferralAmount(double payablerefferralAmount) {
        this.payablerefferralAmount = payablerefferralAmount;
    }

    
    
}
