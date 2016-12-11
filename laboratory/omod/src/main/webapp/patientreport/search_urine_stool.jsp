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

<!-- Urine, Stool -->
<center>
    <c:forEach var="test" items="${investigation}">
        <c:choose>
            <c:when test="${investigation eq '2415'}">
                <div class="div1">   <h2>URINE EXAMINATION REPORT</h2></div><br>
            </c:when> 
            <c:when test="${investigation eq '3117'}">
                <div class="div1">   <h2>STOOL EXAMINATION REPORT</h2></div><br>
            </c:when>

            <c:otherwise>
                <!--  <h2>ALL TESTS BY GROUP</h2> -->
            </c:otherwise>                
        </c:choose>
    </c:forEach>
</center>

<center>

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
                    <c:forEach var="test" items="${investigation}">
                        <c:choose>

                            <c:when test="${investigation eq '2415'}"> Urine </c:when>
                            <c:when test="${investigation eq '3117'}"> Stool </c:when>
                            <c:otherwise>
                            </c:otherwise>   
                        </c:choose>
                    </c:forEach>
                </td>	 
            </tr>
        </table>
    </div> <br>

    <table class="tablesorter" style="width:90%">
        <thead>

        </thead> 
        <tbody>
            <!-- <h3>Estimations are carried out by Vitros-250 Random Access Automated Chemistry Analyzer</h3> -->
            <tr> <td colspan="4">&nbsp;</td></tr>
            <%@ include file="../patientreport/reportformat/urine_stool.jsp"%>
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
        <c:forEach var="test" items="${investigation}">
            <c:choose>
                <c:when test="${investigation eq '2415'}">
                    <div class="div1">   <h2>URINE EXAMINATION REPORT</h2></div><br>
                </c:when> 
                <c:when test="${investigation eq '3117'}">
                    <div class="div1">   <h2>STOOL EXAMINATION REPORT</h2></div><br>
                </c:when>
                <c:otherwise>
                    <!--  <h2>ALL TESTS BY GROUP</h2> -->
                </c:otherwise>                
            </c:choose>
        </c:forEach>

        <br>
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
                    <c:forEach var="test" items="${investigation}">
                        <c:choose>

                            <c:when test="${investigation eq '2415'}"> Urine </c:when>
                            <c:when test="${investigation eq '3117'}"> Stool </c:when>
                            <c:otherwise>
                            </c:otherwise>   
                        </c:choose>
                    </c:forEach>
                </td>	 
            </tr>
        </table>    
    </center>
    <!-- <div id="printAreaTestInfo"></div><br/><br/> -->
    <br>

    <table class="wltable" cellspacing="0" style="width:100%; border: 0px solid; margin-left: auto; margin-right: auto;">
        <thead>

        </thead>
        <tbody>
            <%@ include file="../patientreport/reportformat/urine_stool.jsp"%>

        </tbody>
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