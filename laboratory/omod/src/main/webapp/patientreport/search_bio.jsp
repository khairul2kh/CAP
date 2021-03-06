<%-- 
    Document   : patientInfo
    Created on : Nov 21, 2015, 11:13:48 AM
    Author     : Khairul
--%>
<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<hr/> 

<style>
    .div1 {
        width:300px;
        background-color: white;
        border:1px solid #000;
        box-shadow: 5px 5px;
    }
</style>

<center>
    <div class="div1">   <h2>BIOCHEMISTRY REPORT</h2></div><br>
</center>

<center>
    <!-- <div style="width:90%" id="patientReportTestInfo"></div> <br> -->
    <div style="width:90%" > 
        <table  style="border-collapse: collapse;  border-radius: 10px; box-shadow: 0 0 0 1px #666;" width="99%"> 
            <tr>
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:18%; font-style: italic; " >ID No <span style="float:right; font-style:normal;">:</span>  </td>
                <td colspan="2"> <b> &nbsp; ${patient_identifier}</b>

                    <div style="float:right; font-size:11px;">
                        <span  >Received date   : <b> <fmt:formatDate value="${test_orderDate}" pattern="dd-MM-yyyy" /> </b></span> 
                        <span  > &nbsp;&nbsp; Delivery date   : <b> <fmt:formatDate value="${dDate}" pattern="dd-MM-yyyy" /> </b></span>  &nbsp;&nbsp;
                </td> </div>
            </tr>
            <tr> 
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:16%; font-style: italic; " >Patient's Name <span style="float:right; font-style:normal;">:</span>  </td>
                <td style="width:45%; font-size:14px;" > <b> &nbsp; ${patient_name}</b></td>

                <td style="font-style: italic; font-size:13px; text-align:right; ">
                    <span> Age   : <b>
                            <c:if test="${age <= '6'}" >${ageD}  </c:if> 
                            <c:if test="${age > '6'}" >${age} Year(s) </c:if> 				

                            </b></span> 
                        <span  > &nbsp;&nbsp; Gender  : <b> <c:choose> 
                                <c:when test="${patient_gender eq 'M'}">Male</c:when> 
                                <c:otherwise>Female</c:otherwise> 
                            </c:choose> </b></span>  &nbsp;&nbsp;
                </td> 
            </tr>
            <tr>
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:18%; font-style: italic; " >Refd. By <span style="float:right; font-style:normal;">:</span>  </td>
                <td colspan="2" style="font-size:14px;"> <b>&nbsp; ${refBy.doctorName},${refBy.dergee}   </b></td>
            </tr>
            <tr>		
                <td height="25" style="padding-left:10px; width:18%; font-size:13px;">Specimen <span style="float:right;">:</span> </td>
                <td colspan="2" style="padding-left:10px; font-size:14px; font-weight:bold;">


                    <!--  <h2>DEPARTMENT OF BIOCHEMISTRY</h2> <br> -->
                    <c:if test="${not empty bioBlood}"> Blood</c:if>
                    <c:if test="${not empty bioUrine}"> Urine</c:if>

                    </td>	 
                </tr>
            </table>
        </div> <br>

        <table class="tablesorter" style="width:90%">
            <thead>
                <tr>		
                    <th> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Test </th>
                    <th style="padding-left:5px;"> Result </th>
                    <th style="padding-left: 0px;"> Unit </th>
                    <th style="padding-left:5px; width:30%"> Reference Range </th> 
                </tr>
            </thead> 
            <tbody>
            <h3>Estimations are carried out by Vitros-250 Random Access Automated Chemistry Analyzer</h3>
            <tr> <td colspan="4">&nbsp;</td></tr>

        <%@ include file="../patientreport/reportformat/bio.jsp"%>
        <c:forEach var="test" items="${investigation}">
            <c:forEach var="test" items="${tests}">
                <c:if test="${(test.investigation eq 'DEPARTMENT OF BIOCHEMISTRY' && investigation eq '2311') ||
                              (test.investigation eq 'DEPARTMENT OF CLINICAL PATHOLOGY' && investigation eq '5142') ||
                              (test.investigation eq 'DEPARTMENT OF MICROBIOLOGY' && investigation eq '2734') ||
                              (test.investigation eq 'DEPARTMENT OF CLINICAL IMMUNOLOGY' && investigation eq '3945') ||
                              (test.investigation eq 'DEPARTMENT OF SEROLOGY' && investigation eq '2400') ||
                              (test.investigation eq 'DEPARTMENT OF HAEMATOLOGY' && investigation eq '4679') ||
                              (test.investigation eq 'DEPARTMENT OF CYTOLOGY' && investigation eq '2399')}">
                      <tr>	
                          <td>
                             <!-- <c:if test="${test.level eq 'LEVEL_INVESTIGATION'}"><b>${test.investigation}</b></c:if> -->
                              <c:if test="${test.level eq 'LEVEL_SET'}">
                                  &nbsp;&nbsp; 
                                  ${test.set}
                              </c:if>
                              <c:if test="${test.level eq 'LEVEL_TEST'}">  
                                  ${test.test}</c:if>  
                              </td>
                              <td align="left" style="padding-left:5px;"> ${test.value}</td>
                          <td align="left" style="padding-left:0px;"> ${test.unit}</td>
                          <td align="left" style="padding-left:5px;"> 
                              <c:if test="${not empty test.refRange}"> ${test.refRange} </c:if>
                              <c:if test="${empty test.refRange}">
                                  ${test.lowNormal} 
                                  <c:if test="${not empty test.lowNormal and not empty test.hiNormal}">-</c:if>
                                  ${test.hiNormal}
                              </c:if>
                          </td>
                      </tr>	
                </c:if>
            </c:forEach>
        </c:forEach>
        </tbody>
        <div>
            <table style="width:95%">
                <thead>
                    <tr> 	
                        <th>&nbsp;&nbsp; <br><br> <b style="text-decoration: overline dotted black; "> Medical Technologist  </b> </th>
                        <th style="padding-left:0px; width:30%"><b><u> </u></b></th> 
                    </tr>
                </thead>  
                <tr>	
                    <td>  </td>
                    <td>
                        <c:if test="${not empty docInfo}">
                            &nbsp;&nbsp;<br>
                            <b>${docInfo.docName}</b><br>
                            ${docInfo.degree}<br>
                            ${docInfo.designation}<br>
                            ${docInfo.workPlace}<br>
                        </c:if>
                    </td>
                </tr>
            </table>
        </div>
    </table>
</center>

<div id="patientReportPrintArea" style="display:none;">
    <style>
        table.wltable {

            font-family: Verdana, 'Lucida Grande', 'Trebuchet MS', Arial, Sans-Serif;			
            font-style: normal;
            font-size: 14px;
        }
        table.wltable th {
            border: 1px solid;
            background-color: #fff;
        }
        table.wltable td {
            padding: 5px 5px 5px 5px;
        }
        table.wltable .right {
        }
        .div1 {
            width:400px;
            background-color: white;
            border:1px solid #000;
            box-shadow: 5px 5px;
        }
    </style>
    <center>

        <div class="div1">   <h2>BIOCHEMISTRY REPORT</h2></div><br>

        <table  style="border-collapse: collapse;  border-radius: 10px; box-shadow: 0 0 0 1px #666;" width="99%">
            <tr>
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:18%; font-style: italic; " >ID No <span style="float:right; font-style:normal;">:</span>  </td>
                <td colspan="2"> <b> &nbsp; ${patient_identifier}</b>

                    <div style="float:right; font-size:11px;">
                        <span  >Received date   : <b> <fmt:formatDate value="${test_orderDate}" pattern="dd-MM-yyyy" /> </b></span> 
                        <span  > &nbsp;&nbsp; Delivery date   : <b> <fmt:formatDate value="${dDate}" pattern="dd-MM-yyyy" /> </b></span>  &nbsp;&nbsp;
                </td> </div>
            </tr>
            <tr> 
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:16%; font-style: italic; " >Patient's Name <span style="float:right; font-style:normal;">:</span>  </td>
                <td style="width:45%; font-size:14px;" > <b> &nbsp; ${patient_name}</b></td>

                <td style="font-style: italic; font-size:13px; text-align:right; ">
                    <span> Age   : <b>
                            <c:if test="${age <= '6'}" >${ageD}  </c:if> 
                            <c:if test="${age > '6'}" >${age} Year(s) </c:if> 				

                            </b></span> 
                        <span  > &nbsp;&nbsp; Gender  : <b> <c:choose> 
                                <c:when test="${patient_gender eq 'M'}">Male</c:when> 
                                <c:otherwise>Female</c:otherwise> 
                            </c:choose> </b></span>  &nbsp;&nbsp;
                </td> 
            </tr>

            <tr>
                <td height="25" style="text-align:left; font-size:13px; padding-left:10px; width:18%; font-style: italic; " >Refd. By <span style="float:right; font-style:normal;">:</span>  </td>
                <td colspan="2" style="font-size:14px;"> <b>&nbsp; ${refBy.doctorName},${refBy.dergee}   </b></td>
            </tr>
            <tr>		
                <td height="25" style="padding-left:10px; width:18%; font-size:13px;">Specimen <span style="float:right;">:</span> </td>
                <td colspan="2" style="padding-left:10px; font-size:14px; font-weight:bold;">

                    <!--  <h2>DEPARTMENT OF BIOCHEMISTRY</h2> <br> -->
                    <c:if test="${not empty bioBlood}"> Blood</c:if>
                    <c:if test="${not empty bioUrine}"> Urine</c:if>

                    </td>	 
                </tr>
            </table>    
        </center>
        <!-- <div id="printAreaTestInfo"></div><br/><br/> -->
        <br>

        <table class="wltable" cellspacing="0" style="width:100%; border: 0px solid; margin-left: auto; margin-right: auto;">
            <thead>
                <tr>
                    <th class="right" style="padding:5px 5px 5px 5px; border-right:1px solid #fff; width:40%; ">   &nbsp;   Test </th>
                    <th class="right" style="border-left:1px solid #fff; border-right:1px solid #fff; padding-left:5px; width:13%;"> Result </th>
                    <th class="right" style="border-left:1px solid #fff; border-right:1px solid #fff; padding-left:5px; width:10%;"> Unit </th>
                    <th class="right" style="padding-left:10px; width:30%; font-size: 13px; border-left:1px solid #fff;"> Reference Range </th>
                </tr>
            </thead>
            <tbody>
            <%@ include file="../patientreport/reportformat/bio.jsp"%>

            <c:forEach var="test" items="${investigation}">
                <c:forEach var="test" items="${tests}">
                    <c:if test="${(test.investigation eq 'DEPARTMENT OF BIOCHEMISTRY' && investigation eq '2311') ||
                                  (test.investigation eq 'DEPARTMENT OF CLINICAL PATHOLOGY' && investigation eq '5142') ||
                                  (test.investigation eq 'DEPARTMENT OF MICROBIOLOGY' && investigation eq '2734') ||
                                  (test.investigation eq 'DEPARTMENT OF CLINICAL IMMUNOLOGY' && investigation eq '3945') ||
                                  (test.investigation eq 'DEPARTMENT OF SEROLOGY' && investigation eq '2400') ||
                                  (test.investigation eq 'DEPARTMENT OF HAEMATOLOGY' && investigation eq '4679') ||
                                  (test.investigation eq 'DEPARTMENT OF CYTOLOGY' && investigation eq '2399')}">
                          <tr>	
                              <td>
                                 <!-- <c:if test="${test.level eq 'LEVEL_INVESTIGATION'}"><b>${test.investigation}</b></c:if> -->
                                  <c:if test="${test.level eq 'LEVEL_SET'}">
                                      &nbsp;&nbsp; 
                                      ${test.set}
                                  </c:if>
                                  <c:if test="${test.level eq 'LEVEL_TEST'}">  
                                      ${test.test}</c:if>  
                                  </td>
                                  <td align="left" style="padding-left:5px;"> ${test.value}</td>
                              <td align="left" style="padding-left:0px;"> ${test.unit}</td>
                              <td align="left" style="padding-left:5px;"> 
                                  <c:if test="${not empty test.refRange}"> ${test.refRange} </c:if>
                                  <c:if test="${empty test.refRange}">
                                      ${test.lowNormal} 
                                      <c:if test="${not empty test.lowNormal and not empty test.hiNormal}">-</c:if>
                                      ${test.hiNormal}
                                  </c:if>
                              </td>
                          </tr>	
                    </c:if>
                </c:forEach>
            </c:forEach>

    </table>
    <label style="position:fixed; bottom:5px; font-size: 12px; width:100%" >
        <label style="position:fixed; bottom:70px;">  <b style="text-decoration: overline dotted black; font-weight: normal">   Medical Technologist  </b> </label>
        <table style="width:95%"> 
            <thead>
                <tr> 	
                    <th>&nbsp;&nbsp; <br><br> <b style="text-decoration: overline dotted black; font-weight: normal"> <!-- Checked By -->  </b> </th>
                    <th style="padding-left:0px; width:30%"><b><u> </u></b></th> 
                </tr>
            </thead>  
            <tr>	
                <td>  </td>
                <td style="font-size: 13px;">
                    <c:if test="${not empty docInfo}">
                        <b>${docInfo.docName}</b><br>
                        ${docInfo.degree}<br>
                        ${docInfo.designation}<br>
                        ${docInfo.workPlace}<br>
                    </c:if>
                </td>
            </tr>
        </table>
    </label>
</div>

<style>
    .absolute {
        position: absolute;
        top:1070px;
        right:0px;
        width: 800px;
        height: 0px;
    }
</style>