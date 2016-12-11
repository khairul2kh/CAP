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
<openmrs:require privilege="Manage Radiology Patient Report" otherwise="/login.htm" redirect="/module/radiology/patientReport.form" />
<%@ include file="../localHeader.jsp" %>

<script type="text/javascript">

	$(document).ready(function(){
		insertTestInfo();
		getPatientReport();
	});
	
	// Insert test information
	function insertTestInfo(){		
		$.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/ajax/showTestInfo.htm",
			data : ({
				patientId	: '${patientId}',
				orderId		: '${orderId}'
			}),
			success : function(data) {
				$("#forminfo").html(data);	
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + xhr);
			}
		});
	}
	
	// Insert test information
	function getPatientReport(){		
		$.ajax({
			type : "GET",
			url : getContextPath() + "/module/radiology/showForm.form",
			data : ({
				radiologyTestId	: '${testId}',
				mode			: 'view'
			}),
			success : function(data) {
				$("#formcontent").html(data);	
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("ERROR " + thrownError);
			}
		});
	}
	
	// Print report
	function printPatientReport(){
		$("#formPrintArea").printArea({
			mode : "popup",
			popClose : true
		});
	}
</script>

<div>	
	<input type='button' value='Print' onClick='printPatientReport();'/>
	<input type='button' value='Close' onClick='window.close();'/>
</div>

<div id='formPrintArea' style="width:800px; margin-left:auto; margin-right:auto;">
	${template.content}
</div>