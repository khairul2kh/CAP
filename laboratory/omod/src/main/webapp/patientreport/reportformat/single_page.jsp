<%-- 
    Document   : biochemistry
    Created on : Oct 16, 2016, 11:25:59 AM
    Author     : Khairul
--%>


<!-- HBe Ag -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5153' && te.concept.conceptId eq '5153' }">	
        <tr>
            <td style="vertical-align: top; width:40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5153' && t.groupName eq '5153'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5153' && t.groupName eq '5153'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti-HBe -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2615' && te.concept.conceptId eq '2615' }">	
        <tr>
            <td style="vertical-align: top; width:40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2615' && t.groupName eq '2615'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2615' && t.groupName eq '2615'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti HBc Total -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2614' && te.concept.conceptId eq '2614' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HBc</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '2614'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '2614'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '2614'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '2614'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>

                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '2614'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '2614'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '2614'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '2614'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>

                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '2614'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '2614'}">
                        ${t.value}
                        <c:if test="${t.codedId eq '782'}"> ( &#60; Cut off rate ) </c:if>
                        <c:if test="${t.codedId eq '781'}"> ( &#62; Cut off rate ) </c:if>
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '2614'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '2614'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>

                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti HEV-IgM -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5216' && te.concept.conceptId eq '2615' }">	
        <tr>
            <td style="vertical-align: top; width:40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2615' && t.groupName eq '2615'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2615' && t.groupName eq '2615'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
    </c:if>
</c:forEach>

<!-- ANTI-NUCLEAR AB (ANA) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5216' && te.concept.conceptId eq '5216' }">
        <tr><td colspan="4"> <u>&nbsp;&nbsp;ANA/ANF (Method: ELISA) </u> </td> </tr>
<tr>
    <td style="vertical-align: top; width:40%"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6766' && t.groupName eq '5216' }">
                &emsp;&emsp;&nbsp;${t.testName}
            </c:if>	 
        </c:forEach>
    </td> 
    <td style="padding-left:3px; width:15%; vertical-align: top;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6766' && t.groupName eq '5216' }">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:0px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6766' && t.groupName eq '5216' }">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:3px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6766' && t.groupName eq '5216' }">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td style="vertical-align: top;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216' }">
                &emsp;&emsp;&nbsp;${t.testName}
            </c:if>	 
        </c:forEach>
    </td> 

    <td style="padding-left:3px; vertical-align: top;" colspan="3" > 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216' }">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>

</tr>
</c:if>

<!-- Anti HAV - IgM -->

<c:if test="${investigation eq '5216' && te.concept.conceptId eq '5728' }">
    <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HAV - IgM</b> </td> </tr>	
    <tr>
        <td style="vertical-align: top; width:40%"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                    &emsp;&emsp;&nbsp;${t.testName} 
                </c:if>	 
            </c:forEach>
        </td>
        <td style="padding-left:3px; width:15%" colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
    <tr>
        <td> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                    &emsp;&emsp;&nbsp;${t.testName}
                </c:if>	 
            </c:forEach>
        </td>
        <td style="padding-left:3px; width:15%" colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
    <tr>
        <td> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                    &emsp;&emsp;&nbsp;${t.testName}
                </c:if>	 
            </c:forEach>
        </td>
        <td style="padding-left:3px; width:15%" colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
</c:if>

<!-- Anti HEV-IgM -->

<c:if test="${investigation eq '5216' && te.concept.conceptId eq '5715' }">
    <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HEV-IgM</b> </td> </tr>	
    <tr>
        <td style="vertical-align: top; width:40%"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                    &emsp;&emsp;&nbsp;${t.testName}
                </c:if>	 
            </c:forEach>
        </td>
        <td style="padding-left:3px; width:15%" colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
    <tr>
        <td> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                    &emsp;&emsp;&nbsp;${t.testName}
                </c:if>	 
            </c:forEach>
        </td>
        <td style="padding-left:3px; width:15%" colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
    <tr>
        <td> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                    &emsp;&emsp;&nbsp;${t.testName}
                </c:if>	 
            </c:forEach>
        </td>
        <td colspan="3"> 
            <c:forEach items="${tmn}" var="t">
                <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                    ${t.value}  
                </c:if>
            </c:forEach> 
        </td>

    </tr>
</c:if>

</c:forEach>

<!-- beta - hCG -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3092' && te.concept.conceptId eq '3092' }">
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3092' }">
                        &nbsp;&nbsp;&nbsp;   ${t.testName}
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3092'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3092'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 10px;">
                Concentrations of &#946; - hCG Measured in the sera of healthy, non-pregant individuals were determined to be <5.00 mIU/ml.
            </td>	
        </tr>
        <br>
        <tr> 
            <td colspan="4" style="padding-left:50px;">   &#946; - hCG ranges during normal pregnancy are summarized as follows: </td>
        </tr>
        <tr> 
            <td colspan="2" style="padding-left:50px; line-height:20px;"><u> Weeks Post LMP </u> <br>
        3 - 4 weeks <br> 4 - 5 weeks <br> 5 - 6 weeks <br> 6 - 7 weeks <br> 7 - 12 weeks <br> 12 - 16 weeks <br> 
        16 - 29 weeks <br> (2nd Trimester) <br> 29 - 41 weeks <br> 3rd Trimester
    </td>	
    <td colspan="2" style="padding-left:5px; line-height:20px;"> <u> Approximate &#946; - hCG Range ( mIU/ml)  </u> <br>
    9 - 130 <br> 75 - 2,600 <br> 850 - 20,800  <br> 4,000 - 100,200 <br> 11,500 - 289,000 <br> 18,300 - 137,000 <br> 
    1,400 - 53,000 <br>  &nbsp; <br>  940 - 60,000  <br> &nbsp;
</td>
</tr>
</c:if>
</c:forEach>

<!--C3-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5225' && te.concept.conceptId eq '5225' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5225' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5225' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5225' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5225' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--C4-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5225' && te.concept.conceptId eq '5226' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5226' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5226' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5226' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5226' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- BT.CT. -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5692' && te.concept.conceptId eq '5692' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>BT.CT.</b> </td> </tr>	-->
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2084' && t.groupName eq '5692'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2084' && t.groupName eq '5692'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2084' && t.groupName eq '5692'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2084' && t.groupName eq '5692'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2086' && t.groupName eq '5692'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.testName}  
                    </c:if>	  
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2086' && t.groupName eq '5692'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2086' && t.groupName eq '5692'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2086' && t.groupName eq '5692'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>  
    </c:if>
</c:forEach>

<!-- Urine for Ketone Bodies  -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5148' && te.concept.conceptId eq '5148' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr>	-->
        <tr>
            <td colspan="4"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5148' }">
                <u style="font-size:16px; font-weight:bold;"> Urine for Ketone Bodies :</u> <b> ${t.value} </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ( done by strip method and urine auto analyzer).
            </c:if>	 
        </c:forEach>
    </td> 
</tr>	
</c:if>
</c:forEach>


<!-- Urinary Total Protein -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '4252' && te.concept.conceptId eq '4252' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b>Urinary Total Protein</b> </td> </tr>	-->
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5842' && t.groupName eq '4252'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5842' && t.groupName eq '4252'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5842' && t.groupName eq '4252'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5842' && t.groupName eq '4252'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '4252'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '4252'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '4252'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '4252'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal}  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>

<!-- Creatinine Clearance Rate (CCR) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3937' && te.concept.conceptId eq '3937' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b>Creatinine Clearance Rate (CCR)</b> </td> </tr>	-->
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5882' && t.groupName eq '3937'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Creatinine Clearance Rate (CCR)
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5882' && t.groupName eq '3937'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5882' && t.groupName eq '3937'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5882' && t.groupName eq '3937'}">
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
                    <c:if test="${t.investigation eq '5880' && t.groupName eq '3937'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5880' && t.groupName eq '3937'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5880' && t.groupName eq '3937'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5880' && t.groupName eq '3937'}">
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
                    <c:if test="${t.investigation eq '5881' && t.groupName eq '3937'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5881' && t.groupName eq '3937'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5881' && t.groupName eq '3937'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5881' && t.groupName eq '3937'}">
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
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '3937'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '3937'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '3937'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '3937'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach> 


<!-- HbA1c -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5158' && te.concept.conceptId eq '5158' }">
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5158' }">
                        &nbsp;&nbsp;&nbsp;   ${t.testName}
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5158'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5158'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5158'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>	
        </tr>
    </c:if>
</c:forEach>


<!-- SEMEN ANALYSIS -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2413' && te.concept.conceptId eq '2413' }">
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4655' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4655' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6768' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6768' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6767' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6767' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4640' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4640' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4652' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4652' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2529' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2529' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td width="40%"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2267' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2267' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td rowspan="3">&nbsp;&nbsp;<b>Sperm motility</b></td> 
            <td colspan="2" > 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4660' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td >
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4660' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="2"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4661' && t.groupName eq '2413'}">
                        ${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td >
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4661' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="2"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4659' && t.groupName eq '2413'}">
                        ${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td>
            <td >
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4659' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr >
            <td rowspan="2">&nbsp;&nbsp;<b>Sperm morphology</b></td> 
            <td colspan="2"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2851' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2851' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="2">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4663' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td  >
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4663' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td rowspan="3">&nbsp;&nbsp;<b>Others</b></td>
            <td colspan="2"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
                        ${t.value} / HPF 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="2"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
                        ${t.value} / HPF
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="2">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6634' && t.groupName eq '2413'}">
                        ${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6634' && t.groupName eq '2413'}">
                        ${t.value} / HPF
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6771' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6771' && t.groupName eq '2413'}">
                        ${t.value} 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4631' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4631' && t.groupName eq '2413'}">
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