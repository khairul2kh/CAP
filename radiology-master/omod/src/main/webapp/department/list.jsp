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
<openmrs:require privilege="Manage Radiology" otherwise="/login.htm" redirect="/module/radiology/listDepartment.form" />
<%@ include file="../localHeader.jsp" %>
<script type="text/javascript">
	jQuery(document).ready(function() 
		{ 
			jQuery("#myTable").tablesorter({sortList: [[0,0]]}); 
		} 
	); 
</script>
<a href="editDepartment.form">Add new department</a>
<table id="myTable" class="tablesorter">
	<thead>
		<tr> 
			<th>No</th>
			<th>Name</th>
			<th>Description</th>
			<th>Role</th>
			<th width="100px;"></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="department" items="${departments}" varStatus="index">
			<c:choose>
				<c:when test="${index.count mod 2 == 0}">
					<c:set var="klass" value="odd"/>
				</c:when>					
				<c:otherwise>
					<c:set var="klass" value="even"/>
				</c:otherwise>
			</c:choose>
			<tr class="${klass}">
				<td>${index.count}</td>
				<td>
					<a href="editDepartment.form?id=${department.id}">${department.name}</a>
				</td>
				<td>
					${department.description}
				</td>
				<td>
					${department.role.role}
				</td>
				<td>
					<center>
						<a href="deleteDepartment.form?id=${department.id}">
							<img border="0" src="${pageContext.request.contextPath}/moduleResources/hospitalcore/delete.gif"/>
						</a>
					</center>
				</td>
			</tr>	
		</c:forEach>
	</tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp" %>  