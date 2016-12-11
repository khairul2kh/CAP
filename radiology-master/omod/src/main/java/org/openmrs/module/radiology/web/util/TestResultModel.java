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

package org.openmrs.module.radiology.web.util;

import org.openmrs.Concept;

public class TestResultModel implements Comparable<TestResultModel> {

	public static final String LEVEL_INVESTIGATION = "LEVEL_INVESTIGATION";
	public static final String LEVEL_SET = "LEVEL_SET";
	public static final String LEVEL_TEST = "LEVEL_TEST";
	public static final String LEVEL_RESULT = "LEVEL_RESULT";

	public String investigation;
	public String set;
	public String test;
	public String value;
	public String hiNormal;
	public String lowNormal;
	public String unit;
	public String level = LEVEL_TEST;
	public Concept concept;
	public Integer givenFormId;
	public Integer notGivenFormId;
	public Integer givenEncounterId;
	public Integer notGivenEncounterId;
	public Integer radiologyTestId;

	public String getInvestigation() {
		return investigation;
	}

	public void setInvestigation(String investigation) {
		this.investigation = investigation;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public String getHiNormal() {
		return hiNormal;
	}

	public void setHiNormal(String hiNormal) {
		this.hiNormal = hiNormal;
	}

	public String getLowNormal() {
		return lowNormal;
	}

	public void setLowNormal(String lowNormal) {
		this.lowNormal = lowNormal;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getSet() {
		return set;
	}

	public void setSet(String set) {
		this.set = set;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public Concept getConcept() {
		return concept;
	}

	public void setConcept(Concept concept) {
		this.concept = concept;
	}

	public Integer getGivenFormId() {
		return givenFormId;
	}

	public void setGivenFormId(Integer formId) {
		this.givenFormId = formId;
	}

	public Integer getGivenEncounterId() {
		return givenEncounterId;
	}

	public void setGivenEncounterId(Integer encounterId) {
		this.givenEncounterId = encounterId;
	}

	public Integer getNotGivenEncounterId() {
		return notGivenEncounterId;
	}

	public void setNotGivenEncounterId(Integer notGivenEncounterId) {
		this.notGivenEncounterId = notGivenEncounterId;
	}

	public Integer getRadiologyTestId() {
		return radiologyTestId;
	}

	public void setRadiologyTestId(Integer radiologyTestId) {
		this.radiologyTestId = radiologyTestId;
	}

	public Integer getNotGivenFormId() {
		return notGivenFormId;
	}

	public void setNotGivenFormId(Integer notGivenFormId) {
		this.notGivenFormId = notGivenFormId;
	}


	public int compareTo(TestResultModel o) {
		if (o != null) {
			String tInvestigation = this.getInvestigation();
			String tSet = this.getSet();
			String oInvestigation = o.getInvestigation();
			String oSet = o.getSet();
			int investigationCompare = tInvestigation
					.compareToIgnoreCase(oInvestigation);
			int setCompare = tSet.compareToIgnoreCase(oSet);
			if (investigationCompare != 0) {
				return investigationCompare;
			} else if (setCompare != 0) {
				return setCompare;
			} 
		}
		return -1;
	}
}
