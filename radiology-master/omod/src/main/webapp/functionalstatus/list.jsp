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
<openmrs:require privilege="Manage Radiology" otherwise="/login.htm" redirect="/module/radiology/listForm.form" />
<%@ include file="../localHeader.jsp" %>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#myTable").tablesorter({sortList: [[0,0]]});
    });	
	
	// enable/disable a test
	function toggleTest(serviceId){
		serviceIds = jQuery('#serviceIds').val();
		if(serviceIds.indexOf("<" + serviceId + ">")>=0){
			serviceIds = serviceIds.replace("<" + serviceId + ">", "");
		} else {
			serviceIds += "<" + serviceId + ">"
		}
		jQuery('#serviceIds').val(serviceIds);
	}
</script> 

<table id='myTable' class='tablesorter' style='width: 500px;'>
	<thead>
		<tr> 
			<th>Test</th>
			<th>Disabled</th>
		</tr>
	</thead>
	<tbody>

<c:forEach var='bs' items='${billableServices}'>
		<tr>
			<td>${bs.name}</td>
			<td>
				<center>					
					<input id='cb${bs.serviceId}' type='checkbox' onClick='toggleTest(${bs.serviceId});' <c:if test='${bs.disable}'>checked='checked'</c:if>/>
				</center>				
			</td>
		</tr>	
</c:forEach>		
	</tbody>
</table>
<form method="POST">	
	<input type='hidden' id='serviceIds' name='serviceIds' value=''/>	
	<input type='submit' value='Save'/>	
</form>	



<%@ include file="/WEB-INF/template/footer.jsp" %>  