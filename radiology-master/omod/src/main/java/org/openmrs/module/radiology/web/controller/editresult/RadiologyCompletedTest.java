/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.openmrs.module.radiology.web.controller.editresult;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.openmrs.Concept;
import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.RadiologyService;
import org.openmrs.module.hospitalcore.model.RadiologyTest;
import org.openmrs.module.hospitalcore.util.GlobalPropertyUtil;
import org.openmrs.module.hospitalcore.util.RadiologyConstants;
import org.openmrs.module.hospitalcore.util.RadiologyUtil;
import org.openmrs.module.hospitalcore.util.TestModel;
import org.openmrs.module.radiology.web.util.PagingUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Amir
 */
@Controller("CompletedRadiologyTest")
@RequestMapping("/module/radiology/completedRadiologyTest.form")
public class RadiologyCompletedTest {
    @SuppressWarnings("unchecked")
	@RequestMapping(method = RequestMethod.GET)
	public String searchTest(
			@RequestParam(value = "date", required = false) String dateStr,
			@RequestParam(value = "phrase", required = false) String phrase,
			@RequestParam(value = "investigation", required = false) Integer investigationId, HttpServletRequest request,
			@RequestParam(value = "currentPage", required = false) Integer currentPage,
			Model model) {
		RadiologyService rs = (RadiologyService) Context
				.getService(RadiologyService.class);
		Concept investigation = Context.getConceptService().getConcept(
				investigationId);
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date date = null;
                 System.out.println("i am in RadiologyCompletedTest ********************************");
		try {
			date = sdf.parse(dateStr);
			Map<Concept, Set<Concept>> testTreeMap = (Map<Concept, Set<Concept>>) request
			.getSession().getAttribute(
					RadiologyConstants.SESSION_TEST_TREE_MAP);
			Set<Concept> allowableTests = new HashSet<Concept>();
			if (investigation != null) {
				allowableTests = testTreeMap.get(investigation);
			} else {
				for (Concept c : testTreeMap.keySet()) {
					allowableTests.addAll(testTreeMap.get(c));
				}
			}
			if (currentPage == null)
				currentPage = 1;
			List<RadiologyTest> radiologyTests = rs.getRadiologyCompletedTests(date, phrase, allowableTests, currentPage);	
                        
                        
                        
                        List<TestModel> tests = RadiologyUtil.generateModelsFromTests(radiologyTests, testTreeMap);
			//ghanshyam 04/07/2012 New Requirement #274
			Collections.sort(tests);
			int total = rs.countAcceptedRadiologyTests(date, phrase, allowableTests);
			PagingUtil pagingUtil = new PagingUtil(GlobalPropertyUtil.getInteger(RadiologyConstants.PROPERTY_PAGESIZE, 20), currentPage,
					total);
			model.addAttribute("pagingUtil", pagingUtil);
			model.addAttribute("tests", tests);
			model.addAttribute("testNo", tests.size());
                        
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("Error when parsing order date!");
			return null;
		}
                return "/module/radiology/editresult/radiologySearch";
	}
}
