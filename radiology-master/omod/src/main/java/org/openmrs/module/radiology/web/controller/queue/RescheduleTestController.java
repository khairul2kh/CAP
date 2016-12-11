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

package org.openmrs.module.radiology.web.controller.queue;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.openmrs.Order;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.util.RadiologyUtil;
import org.openmrs.module.hospitalcore.util.TestModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("RadiologyRescheduleTestController")
@RequestMapping("/module/radiology/rescheduleTest.form")
public class RescheduleTestController {

	@ModelAttribute("order")
	public Order getOrder(@RequestParam("orderId") Integer orderId) {
		return Context.getOrderService().getOrder(orderId);
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showRescheduleForm(Model model, @RequestParam(value="type", required=false) String type,
			@ModelAttribute("order") Order order) {
		if (order != null) {
			TestModel tm = RadiologyUtil.generateModel(order, null);
			model.addAttribute("test", tm);
			Calendar c = Calendar.getInstance();
			c.add(Calendar.DATE, 1);
			model.addAttribute("currentDate", RadiologyUtil.formatDate(c.getTime()));
		}
		if(!StringUtils.isBlank(type)){
			if(type.equalsIgnoreCase("reorder")){
				return "/module/radiology/worklist/reOrder";
			}				
		}			
		return "/module/radiology/queue/rescheduleForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String rescheduleTest(Model model,
			@ModelAttribute("order") Order order, @RequestParam("rescheduledDate") String rescheduledDateStr) {
		if (order != null) {
			RadiologyService rs = (RadiologyService) Context.getService(RadiologyService.class);
			Date rescheduledDate;
			try {
				rescheduledDate = RadiologyUtil.parseDate(rescheduledDateStr);
				String status = rs.rescheduleTest(order, rescheduledDate);
				model.addAttribute("status", status);
			} catch (ParseException e) {
				e.printStackTrace();
				model.addAttribute("status", "Invalid date!");
			}
		}
		return "/module/radiology/queue/rescheduleResponse";
	}

}
