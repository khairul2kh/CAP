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
<openmrs:require privilege="Manage Radiology Queue" otherwise="/login.htm" redirect="/module/radiology/queue.form" />
<%@ include file="../localHeader.jsp" %>
<script type="text/javascript">

	testNo = 0;
	var validateRescheduleDateResult = false;
	
	jQuery(document).ready(function() {
		jQuery('#date').datepicker({yearRange:'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});
    });
	
	// get all tests
	function getTests(currentPage){
		var date = jQuery("#date").val();
		var phrase = jQuery("#phrase").val();
		var investigation = jQuery("#investigation").val();
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/searchTest.form",
			data : ({
				date			: date,
				phrase			: phrase,
				investigation	: investigation,
				currentPage		: currentPage
			}),
			success : function(data) {
				jQuery("#tests").html(data);	
				if(testNo>0){
					jQuery("#myTable").tablesorter({sortList: [[0,0]]});
					tb_init("a.thickbox"); // init to show thickbox
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}

	// accept a test
	function acceptTest(orderId) {
		var scrollTop = jQuery("#acceptBox_" + orderId).scrollTop();
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/ajax/acceptTest.htm",
			data : ({
				orderId : orderId,
				date	: jQuery("#date").val()
			}),
			success : function(data) {
				testId = parseInt(data);		
				jQuery("#acceptBox_" + orderId).scrollTop(scrollTop);
				jQuery("#acceptBox_" + orderId).html("<b>Accepted</b>");
				jQuery("#rescheduleBox_" + orderId).html("Reschedule");
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}

	// unaccept a test
	function unacceptTest(testId, orderId) {
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/ajax/unacceptTest.htm",
			data : ({
				testId : testId
			}),
			success : function(data) {
				if (data.indexOf('success')>=0) {
					jQuery("#acceptBox_" + orderId).html(
							"<a href='javascript:acceptTest(" + orderId
									+ ");'>Accept</a>");
				} else {
					alert(data);
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}

	// reschedule a test
	function rescheduleTest(orderId, rescheduledDate) {		
		validateRescheduleDate(orderId, rescheduledDate);
	}
	
	// validate reschedule date
	function validateRescheduleDate(orderId, rescheduledDate){			
		validateRescheduleDateResult = false;
		jQuery.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/ajax/validateRescheduleDate.htm",
			data : ({				
				rescheduleDate : rescheduledDate
			}),
			success : function(data) {
				
				if (data.indexOf('success')>=0) {						
					jQuery.ajax({
						type : "POST",
						url : getContextPath() + "/module/radiology/rescheduleTest.form",
						data : ({
							orderId : orderId,
							rescheduledDate : rescheduledDate
						}),
						success : function(data) {
							if (data.indexOf('success')>=0) {
								getTests();
							} else {
								alert(data);
							}
						},
						error : function(xhr, ajaxOptions, thrownError) {
							alert("ERROR " + xhr);
						}
					});
					tb_remove();
				} else {
					alert('Invalid reschedule date! It must be after the current date');
				}
			},
			error : function(xhr, ajaxOptions, thrownError) {
				
			}
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
		<option value="0">Select an investigation</option>
		<c:forEach var="investigation" items="${investigations}">
			<option value="${investigation.id}">${investigation.name.name}</option>
		</c:forEach>	
	</select>
	<br/>
	<input type="button" value="Get patients" onClick="getTests(1);"/>
	<input type="button" value="Reset" onClick="alert('Reset');"/>
</div>

<div id="tests">
</div>

<%@ include file="/WEB-INF/template/footer.jsp" %>  