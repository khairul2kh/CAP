/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.openmrs.module.billing.web.controller.staticreport;

import java.util.Arrays;

/**
 *
 * @author Khairul
 */
public class DocComModel {
     private Integer[] billId;

    public Integer[] getBillId() {
        return billId;
    }

    public void setBillId(Integer[] billId) {
        this.billId = billId;
    }
    
      @Override
    public String toString() {
        return "DocComModel [billId="
                + Arrays.toString(billId)
                + "]";
    }
}
