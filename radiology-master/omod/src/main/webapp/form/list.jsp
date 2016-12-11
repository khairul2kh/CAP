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
	jQuery(document).ready(function() 
		{ 
			jQuery("#myTable").tablesorter({sortList: [[0,0]]}); 
		} 
	); 
</script>
<a href="editForm.form">Add new form</a>
<table id="myTable" class="tablesorter">
	<thead>
		<tr>			
			<th>Name</th>			
			<th>Concept</th>
			<th>Description</th>
			<th width="200px;"></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="form" items="${forms}" varStatus="index">
			<c:choose>
				<c:when test="${index.count mod 2 == 0}">
					<c:set var="klass" value="odd"/>
				</c:when>					
				<c:otherwise>
					<c:set var="klass" value="even"/>
				</c:otherwise>
			</c:choose>
			<tr class="${klass}">				
				<td>
					<a href="editForm.form?id=${form.id}">${form.name}</a>
				</td>				
				<td>
					${form.conceptName}
				</td>
				<td>
					${form.description}
				</td>
				<td>
					<center>
						<a href="deleteForm.form?id=${form.id}">
							Delete
						</a>
						&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="showForm.form?id=${form.id}&mode=preview&height=600&width=800" class="thickbox">
							Preview
						</a>
					</center>
				</td>
			</tr>	
		</c:forEach>
	</tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp" %>  