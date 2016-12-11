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
<hr/>
<div id="patientReportTestInfo" style='display:none;'></div>

<c:forEach var="test" items="${tests}">
	<c:if test="${test.level eq 'LEVEL_INVESTIGATION'}">
		<div style='margin-left:30px;'>
			<b>${test.investigation}</b>
		</div>
	</c:if>
	<c:if test="${test.level eq 'LEVEL_SET'}">
		<div style='margin-left:60px;'>			
			<a href='showPatientReport.form?testId=${test.radiologyTestId}' target='_blank'>
				${test.set}
			</a> 
		</div>	
	</c:if>		
</c:forEach>