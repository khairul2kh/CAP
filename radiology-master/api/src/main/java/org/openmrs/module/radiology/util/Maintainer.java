/**
 *  Copyright 2010 Society for Health Information Systems Programmes, India (HISP India)
 *
 *  This file is part of Radiology module.
 *
 *  Radiology module is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  Radiology module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Radiology module.  If not, see <http://www.gnu.org/licenses/>.
 *
 **/

package org.openmrs.module.radiology.util;

import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.util.GlobalPropertyUtil;
import org.openmrs.module.hospitalcore.util.RadiologyConstants;

public class Maintainer {

	/**
	 * Maintain the module
	 */
	public static void maintain() {

		if (Context.getAuthenticatedUser() != null) {
			if (Context.getAuthenticatedUser().isSuperUser()) {

				String maintainCode = GlobalPropertyUtil.getString(
						RadiologyConstants.PROPERTY_MAINTAINCODE, "");
				// create necessary concepts for default xray form
				if (!maintainCode.contains("{1}")) {
					maintainCode += "{1}";
					MaintainUtil.createConceptsForXrayDefaultForm();
					GlobalPropertyUtil.setString(
							RadiologyConstants.PROPERTY_MAINTAINCODE,
							maintainCode);
				}

				// create default form for xray tests
				if (!maintainCode.contains("{2}")) {
					maintainCode += "{2}";
					MaintainUtil.createXRayDefaultForm();
					GlobalPropertyUtil.setString(
							RadiologyConstants.PROPERTY_MAINTAINCODE,
							maintainCode);
				}

				// create default templates
				if (!maintainCode.contains("{3}")) {
					maintainCode += "{3}";
					MaintainUtil.createTemplates();
					GlobalPropertyUtil.setString(
							RadiologyConstants.PROPERTY_MAINTAINCODE,
							maintainCode);
				}

				// Update select elements in radiology form for validation
				if (!maintainCode.contains("{4}")) {
					maintainCode += "{4}";
					MaintainUtil.updateFormSelects();
					GlobalPropertyUtil.setString(
							RadiologyConstants.PROPERTY_MAINTAINCODE,
							maintainCode);
				}
			}
		}

	}

}
