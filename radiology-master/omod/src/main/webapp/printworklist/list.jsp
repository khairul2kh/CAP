 <%--
 *  Copyright 2009 Society for Health Information Systems Programmes, India (HISP India)
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
--%> 
<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="../includes/js_css.jsp" %>
<br/>
<openmrs:require privilege="Print Radiology Worklist" otherwise="/login.htm" redirect="/module/radiology/printWorklist.form" />
<%@ include file="../localHeader.jsp" %>

<script type="text/javascript">

	jQuery(document).ready(function() {
		jQuery('#date').datepicker({yearRange:'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});
    });
	
	// get all tests
	function getTests(){
		var date = jQuery("#date").val();
		var phrase = jQuery("#phrase").val();
		var investigation = jQuery("#investigation").val();
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/searchPrintWorklist.form",
			data : ({
				date			: date,
				phrase			: phrase,
				investigation	: investigation
			}),
			success : function(data) {
				jQuery("#tests").html(data);	
				if(testNo>0){
					jQuery("#myTable").tablesorter({sortList: [[0,0]]});
					tb_init("a.thickbox"); // init to show thickbox
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				/* alert("ERROR " + xhr); */
				alert("Please select an investigation!");
			}
		});
	}
	
	// reschedule a test
	function rescheduleTest(orderId, rescheduledDate) {
		jQuery.ajax({
			type : "POST",
			url : getContextPath() + "/module/radiology/rescheduleTest.form",
			data : ({
				orderId : orderId,
				rescheduledDate : rescheduledDate
			}),
			success : function(data) {
				if (data == 'success') {
					getTests();
				} else {
					alert(data);
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}
	
	// complete a test
	function completeTest(testId) {
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/ajax/completeTest.htm",
			data : ({
				testId : testId
			}),
			success : function(data) {
				if (data == 'success') {
					getTests();
				} else {
					alert(data);
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}
	
	function printWorklist(){
		/*
		jQuery("#printArea").empty();
		var styleContent = jQuery("#style").val();
		jQuery("#printArea").append("<style>" + styleContent + "</style>");		
		jQuery("#printArea").append(jQuery("#tests").html());
		*/
		jQuery("#printArea").printArea({
			mode : "popup",
			popClose : true
		});
	}
</script> 

<div class="boxHeader"> 
	<strong>See patient List by choosing lab</strong>
</div>
<div class="box">
	Date:
	<input id="date" value="${currentDate}" style="text-align:right;"/>
	Patient ID/Name:
	<input id="phrase"/>
	Investigation:
	<select name="investigation" id="investigation">
	<%-- ghanshyam 09/07/2012 New Requirement #310 --%>
	<%-- kesavulu 20/07/2012 New Requirement #322 --%>
		<option selected="selected">Select</option>		
		<c:forEach var="investigation" items="${investigations}">
			<option value="${investigation.id}">${investigation.name.name}</option>
		</c:forEach>
		<option value="0">CONSOLIDATED LIST</option>	
	</select>
	<br/>
	<input type="button" value="Get worklist" onClick="getTests();"/>
	<input type="button" value="Print worklist" onClick="printWorklist();"/> 
</div>

<div id="tests">
</div>

<%@ include file="/WEB-INF/template/footer.jsp" %>  