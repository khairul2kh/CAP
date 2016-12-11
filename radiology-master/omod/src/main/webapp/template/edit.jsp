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

<openmrs:require privilege="Manage Radiology" otherwise="/login.htm" redirect="/module/radiology/editTemplate.form" />
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="../includes/js_css.jsp" %>
<br/>
<%@ include file="../localHeader.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/moduleResources/hospitalcore/scripts/CKEditor/ckeditor.js"></script>
<h2>Manage Template</h2>

<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#conceptAutocomplete").autocomplete(getContextPath() + '/module/radiology/ajax/autocompleteConceptSearch.htm').result(function(event, item){
			insertConcept(item);
		});
    });
	
	function insertConcept(item){
		jQuery("#testNames").append("<option value='" + item + "'>" + item + "</option>");
		jQuery("#conceptAutocomplete").val('');
	}
	
	function deleteConcept() {
		options = jQuery('#testNames option:checked').each(function(index, element){
			e = jQuery(this);
			e.remove();
		});
	}

	function submitForm(){
		var invest = document.getElementById("testNames");
		for( var i=0; i< invest.childNodes.length; i++ ){
			invest.childNodes[i].selected=true;
		}
		document.forms["radiologyTemplate"].submit(); 
	}
</script>

<c:forEach items="${errors.allErrors}" var="error">
	<span class="error"><spring:message code="${error.defaultMessage}" text="${error.defaultMessage}"/></span>
</c:forEach>
<spring:bind path="template">
	<c:if test="${not empty status.errorMessages}">
		<div class="error">
			<ul>
				<c:forEach items="${status.errorMessages}" var="error">
					<li>${error}</li>   
				</c:forEach>
			</ul>
		</div>
	</c:if>
</spring:bind>

<form method="post" class="box" id="radiologyTemplate" onsubmit="return false;">
<table>
	<tr>
		<td>Name</td>
		<td>
			<spring:bind path="template.name">
				<input type="text" tabindex="1"  name="${status.expression}" value="${status.value}" size="35" />
				<c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
			</spring:bind>
		</td>
	</tr>
	<tr>
		<td valign="top">Description</td>
		<td>
			<spring:bind path="template.description">
				<input type="text" tabindex="2"  name="${status.expression}" value="${status.value}" size="35" />
				<c:if test="${status.errorMessage != ''}"><span class="error">${status.errorMessage}</span></c:if>
			</spring:bind> 
		</td>
	</tr>	
	<tr>
		<td valign="top">Tests</td>
		<td><input type='text' id='conceptAutocomplete' style="width:290px;"/><input type='button' value='Delete' onClick='deleteConcept();'/></td>
	</tr>
	<tr>
		<td></td>
		<td>
			<table cellspacing="0" cellpadding="0">
				<tr>
					<td valign="top">
						<spring:bind path="template.tests">
							<select class="largeWidth" size="6" name="${status.expression}" id="testNames" multiple="multiple">
								<c:forEach items="${template.tests}" var="item">
									<option value="${item.conceptId}">${item.name}</option>
								</c:forEach>
							</select>
							<c:if test="${not empty status.errorMessage}"><span class="error">${status.errorMessage}</span></c:if>
						</spring:bind>
					</td>
				</tr>
			</table>
		</td>
	</tr>	
</table>
Content<br/>
<spring:bind path="template.content">
	<textarea class="ckeditor" cols="80" id="editor1" name="${status.expression}" rows="10">
		${status.value}
	</textarea>
</spring:bind>
<br/>
<input type="button" onclick="submitForm()" value="<spring:message code="general.save"/>">
<input type="button" value="<spring:message code="general.cancel"/>" onclick="javascript:window.location.href='listTemplate.form'">
</form>
<%@ include file="/WEB-INF/template/footer.jsp"%>