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
<script type="text/javascript">
    testNo = ${testNo};

    function showTestInfo(test) {
        alert("i am in alert" + test);


    }
</script>
<table id="myTable" class="tablesorter">
    <thead>
        <tr> 
            <th>Sr. No.</th>
            <th>Results</th>
            <th>Reorder</th>	
            <th>Date</th>
            <th>Patient ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Age</th>
            <th>Test</th>					
        </tr>
    </thead>
    <tbody>
        <c:forEach var="test" items="${tests}" varStatus="index">
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
                  <!--  <a href="javascript:enterResult(${test.testId}, 'Given');">
                        Enter results
                    </a> -->
                        <a href="result.form?testId=${test.testId}">Enter results</a>
						
					
                </td>
                <td>
                    <a href="rescheduleTest.form?type=reorder&orderId=${test.orderId}&modal=true&height=200&width=800" class="thickbox" title="Reschedule test">Reorder</a> 					
                </td>
                <td>
                    ${test.startDate}
                </td>
                <td>
                    ${test.patientIdentifier}
                </td>
                <td>
                    ${test.patientName}
                </td>
                <td>
                    ${test.gender}
                </td>
                <td>
                    ${test.age}
                </td>
                <td>
                    ${test.testName}
                </td>				
            </tr>	
            <c:if test='${test.xray}'>							
                <tr id='row${test.testId}' style='display:none;'>
                    <td colspan='9'>
                        <form id="contentForm${test.testId}" method="post" action="showForm.form">

                        </form>
                        <input type='button' value='Save' onClick='submitXrayForm(${test.testId});'/>
                        <input type='button' value='Cancel' onClick='jQuery("#row${test.testId}").hide();'/>						
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </tbody>
</table>

<div id='paging'>
    <a style="text-decoration:none" href='javascript:getTests(1);'>&laquo;&laquo;</a>
    <a style="text-decoration:none" href="javascript:getTests(${pagingUtil.prev});">&laquo;</a>		
    ${pagingUtil.currentPage} / <b>${pagingUtil.numberOfPages}</b>	
    <a style="text-decoration:none" href="javascript:getTests(${pagingUtil.next});">&raquo;</a>
    <a style="text-decoration:none" href='javascript:getTests(${pagingUtil.numberOfPages});'>&raquo;&raquo;</a>
</div>