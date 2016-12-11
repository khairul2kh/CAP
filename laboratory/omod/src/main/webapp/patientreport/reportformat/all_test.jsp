<%-- 
    Document   : biochemistry
    Created on : Feb 9, 2016, 11:25:59 AM
    Author     : Khairul
--%>

<!-- BIOCHEMISTRY -->

<!-- APTT with PT embedded code starts -->

<c:forEach items="${te}" var="te"> 

    <!-- embedded aptt -->
    <c:if test="${investigation eq '2577' && te.concept.conceptId eq '2920' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>APTT</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4734'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4734'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4734'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4734'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4735'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4735'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4735'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4735'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- embedded pt-->
<c:forEach items="${te}" var="te"> 

    <c:if test="${investigation eq '2577' && te.concept.conceptId eq '2577'}">

        <tr> <td colspan="4">&nbsp;&nbsp;<b>PROTHROMBIN TIME</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5903'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Control  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5903'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5903'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5903'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5850'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Patient 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5850'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5850'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5850'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5848'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5848'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5848'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5848'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5849'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5849'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5849'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5849'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>

                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td > 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2805'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2805'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2805'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2805'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>

                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>
 
<!-- S. Electrolytes -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2543' && te.concept.conceptId eq '2543' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>S. Electrolytes</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5189'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5189'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5189'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5189'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5190'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5190'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5190'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5190'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>

<!-- End -->
 
<!--  DEPARTMENT OF CLINICAL PATHOLOGY -->
<!-- Mantrux Test (MT) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5718' && te.concept.conceptId eq '5718' }">
        <tr style="border:none;"><td colspan="4">&nbsp;</td> </tr>
        <tr align="center"> <td colspan="4"> <u style="font-weight:bold; font-size:17px;"> TUBERCULIN TEST REPORT </u> </td> </tr>	
<tr> <td colspan="4">&nbsp;</td> </tr>

<tr style="line-height:200%;">
    <td width="6%"> &nbsp; </td>
    <td ><b style="font-size:15px;"> Site of injection </b></td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;" >  Medial aspect of forearm  </td> 
</tr>

<tr style="line-height:200%;">
    <td width="6%"> &nbsp; </td>  
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5885' && t.groupName eq '5718'}">
                <b style="font-size:15px;">  ${t.testName}  </b>
            </c:if>	 
        </c:forEach>
    </td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5885' && t.groupName eq '5718'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>
<tr style="line-height:200%;">
    <td width="6%"> &nbsp; </td>
    <td ><b style="font-size:15px;"> Dose </b> </td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;" > <span style="font-size:15px;"> 10 TU of PPD  </span></td> 
</tr>
<tr style="line-height:200%;">
    <td width="6%"> &nbsp; </td> 
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5886' && t.groupName eq '5718'}">
                <b style="font-size:15px;"> ${t.testName} </b> 
            </c:if>	 
        </c:forEach>
    </td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5886' && t.groupName eq '5718'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>
<tr style="line-height:200%;">
    <td width="10%"> &nbsp; </td>  
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5887' && t.groupName eq '5718'}">
                <b style="font-size:15px;">  ${t.testName}  </b>
            </c:if>	 
        </c:forEach>
    </td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5887' && t.groupName eq '5718'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>
<tr style="line-height:200%;">
    <td width="10%"> &nbsp; </td> 
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6712' && t.groupName eq '5718'}">
                <b style="font-size:15px;"> ${t.testName}  </b>
            </c:if>	 
        </c:forEach>
    </td>
    <td width="2%"> : </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6712' && t.groupName eq '5718'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>
</c:if>
</c:forEach>

<!-- MICROBIOLOGY -->

<!-- Sputum for AFB -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2734' && te.concept.conceptId eq '5444' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Sputum for AFB</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5444'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5444'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5444'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5444'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5444'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5444'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5444'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5444'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5444'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5444'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5444'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5444'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5444'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5444'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5444'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5444'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5444'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5444'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5444'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5444'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach> 


<!-- Sputum C/S for AFB -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2734' && te.concept.conceptId eq '5644' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Sputum C/S for AFB</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5644'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5644'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5644'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5875' && t.groupName eq '5644'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5644'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5644'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5644'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5853' && t.groupName eq '5644'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5644'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5644'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5644'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5862' && t.groupName eq '5644'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5644'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5644'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5644'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5863' && t.groupName eq '5644'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5644'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5644'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5644'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5864' && t.groupName eq '5644'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach> 
 
<!-- Febrile Antigens -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5219' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Febrile Antigens</b> </td> </tr>
        <tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;<u style="font-weight:bold;">Widal Test :</u> </td> </tr>		
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5967' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5967' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5967' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5967' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5966' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5966' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5966' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5966' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5969' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5969' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5969' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5969' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5970' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5970' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5970' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5970' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>

<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4259' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4259' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4259' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4259' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4260' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4260' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4260' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4260' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<!-- Weil Felix -->  
<tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;<u style="font-weight:bold;">Weil Felix :</u> </td> </tr>	

<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2385' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2385' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2385' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2385' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2386' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2386' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2386' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2386' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2387' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2387' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2387' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2387' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>

<!-- Brucella -->  
<tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;<u style="font-weight:bold;">Brucella :</u> </td> </tr>	


<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5918' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5918' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5918' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5918' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5919' && t.groupName eq '5219'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5919' && t.groupName eq '5219'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5919' && t.groupName eq '5219'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5919' && t.groupName eq '5219'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>
</c:if>
</c:forEach> 



<!-- Triple Antigen -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5708' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Triple Antigen</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2385' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2385' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2385' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2385' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2386' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2386' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2386' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2386' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2387' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2387' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2387' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2387' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5918' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <i> ${t.testName} </i>
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5918' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5918' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5918' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5919' && t.groupName eq '5708'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="font-style: italic;"> ${t.testName}  </span>
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5919' && t.groupName eq '5708'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5919' && t.groupName eq '5708'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5919' && t.groupName eq '5708'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach> 


<!-- IgG -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5310' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>IgG</b> </td> </tr>	 
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5310'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5310'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5310'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5310'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5310'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5310'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5310'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5310'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5310'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5310'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5310'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5310'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>

    </c:if>
</c:forEach>

<!-- IgM -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5311' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>IgM</b> </td> </tr>	 
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5311'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5311'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5311'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5311'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5311'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5311'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5311'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5311'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5311'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5311'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5311'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5311'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach>


<!-- HBsAG (ELISA) Single test -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3693' && te.concept.conceptId eq '3693' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>HBsAG(ELISA)</b></td> </tr> 
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '3693'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px; width: 15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '3693'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '3693'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '3693'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '3693'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '3693'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
    </c:if>
</c:forEach>

<!-- HBe Ag -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '6399' && te.concept.conceptId eq '6399' }">	
        <tr>
            <td style="vertical-align: top; width:40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6399' && t.groupName eq '6399'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6399' && t.groupName eq '6399'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:if>
</c:forEach>
        
<style> 
    table.report {
        font-family:arial;
        background-color: #CDCDCD;
        margin:10px 0pt 15px;
        font-size: 8pt;
        width: 100%;
        text-align: center;
    }
    table.report thead tr th, table.report tfoot tr th {
        background-color: #e6EEEE;
        border: 1px solid #FFF;
        font-size: 8pt;
        padding: 4px;
    }
    table.report thead tr .header {
        background-image: url(bg.gif);
        background-repeat: no-repeat;
        background-position: center right;
        cursor: pointer;
    }
    table.report tbody td {
        color: #3D3D3D;
        padding: 4px;
        background-color: #FFF;
        vertical-align: top;
    }
    table.report tbody tr.odd td {
        background-color:#F0F0F6;
    }
    table.report thead tr .headerSortUp {
        background-image: url(asc.gif);
    }
    table.report thead tr .headerSortDown {
        background-image: url(desc.gif);
    }
    table.report thead tr .headerSortDown, table.report thead tr .headerSortUp {
        background-color: #8dbdd8;
    }
</style>