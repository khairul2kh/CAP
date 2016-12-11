/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.openmrs.module.pharmacy.extension.html;

import org.openmrs.module.Extension;

/**
 *
 * @author Khairul
 */
public class PharmacyHeader extends Extension{

    public Extension.MEDIA_TYPE getMediaType() {
        return Extension.MEDIA_TYPE.html;
    }

    public String getRequiredPrivilege() {
        return "View Pharmacy Module";
    }

    public String getLabel() {
        return "Pharmacy";
    }

    public String getUrl() {
        return "/module/pharmacy/main.form";
    }
}
