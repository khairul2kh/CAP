<%-- 
    Document   : biochemistry
    Created on : Feb 9, 2016, 11:25:59 AM
    Author     : Khairul
--%>

<!-- Serology Sequence -->

<!-- ABO BLOOD GROUP & RH FACTOR -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '3962' }">
        <!-- <tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>ABO BLOOD GROUP & RH FACTOR</b> </td> </tr>	-->
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2203' && t.groupName eq '3962'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2203' && t.groupName eq '3962'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2203' && t.groupName eq '3962'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2203' && t.groupName eq '3962'}">
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
                    <c:if test="${t.investigation eq '3059' && t.groupName eq '3962'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3059' && t.groupName eq '3962'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3059' && t.groupName eq '3962'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3059' && t.groupName eq '3962'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>

    </c:if>
</c:forEach>

<!--VDRL-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '3967' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3967' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width: 15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3967' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3967' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3967' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>        

<!--ASO TITRE-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '4256' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4256' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width: 15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4256' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4256' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4256' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- Widal Test -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '2406' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>WIDAL TEST</b> </td> </tr>	
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width: 15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5967' && t.groupName eq '2406'}">
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
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5966' && t.groupName eq '2406'}">
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
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5969' && t.groupName eq '2406'}">
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
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5970' && t.groupName eq '2406'}">
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
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4259' && t.groupName eq '2406'}">
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
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '2406'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '2406'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '2406'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4260' && t.groupName eq '2406'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>

    </c:if>
</c:forEach>

<!--CRP-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5242' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5242' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5242' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5242' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5242' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--R/A TEST-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5218' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5218' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5218' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5218' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5218' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--ICT for Filaria -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5308' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5308' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5308' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5308' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5308' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>


<!--ICT for KALAZAR -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5366' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5366' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5366' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5366' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5366' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- VDRL Q+Q -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '6024' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>VDRL(Q+Q)</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2202' && t.groupName eq '6024'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width: 15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2202' && t.groupName eq '6024'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2202' && t.groupName eq '6024'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2202' && t.groupName eq '6024'}">
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
                    <c:if test="${t.investigation eq '2623' && t.groupName eq '6024'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2623' && t.groupName eq '6024'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2623' && t.groupName eq '6024'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2623' && t.groupName eq '6024'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach>


<!--TPHA TEST -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5221' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5221' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5221' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5221' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5221' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--TPHA (ICT) -->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '2561' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2561' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2561' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2561' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2561' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--COMBS TEST(DIRECT)-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '2261' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--COMBS TEST(INDIRECT)-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '2262' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="width: 15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>


<!-- Coombs Test (D/I) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5315' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Coombs Test (D/I)</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' && t.groupName eq '5315'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width: 15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' && t.groupName eq '5315'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' && t.groupName eq '5315'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2261' && t.groupName eq '5315'}">
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
                    <c:if test="${t.investigation eq '2262' && t.groupName eq '5315'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' && t.groupName eq '5315'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' && t.groupName eq '5315'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:0px; font-size: 14px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2262' && t.groupName eq '5315'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach>



<!--FDP-->

<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '3002' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3002' }">
                        &nbsp;&nbsp;   
                        ${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3002' }">
                        &nbsp;&nbsp; 
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3002' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3002' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>
        
<!-- CBC -->

<c:forEach items="${te}" var="te">
    <c:if test="${investigation eq '4679' && te.concept.conceptId eq '2410' }">
        <tr>
            <td colspan="4">   
                &nbsp;&nbsp;<b>CBC (Hb Percentage ESR TC DC With PC)</b> 				
            </td>
        </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '995' && t.groupName eq '2410'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '995' && t.groupName eq '2410'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '995' && t.groupName eq '2410'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '995' && t.groupName eq '2410'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2220' && t.groupName eq '2410'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2220' && t.groupName eq '2410'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2220' && t.groupName eq '2410'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2220' && t.groupName eq '2410'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2242' && t.groupName eq '2410' }">
                        &emsp;&emsp;&nbsp;${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2242' && t.groupName eq '2410'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2242' && t.groupName eq '2410'}">
                        ${t.unit} 
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2242' && t.groupName eq '2410'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td colspan="4"> &emsp;&emsp;&nbsp;<b>DIFFERENTIAL LEUCOCYTE COUNT</b>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2237'}">
                        &emsp;&emsp;&emsp;&emsp;&nbsp;${t.testName}    
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2237'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2237'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2237'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2238'}">
                        &emsp;&emsp;&emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2238'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2238'}">
                        ${t.unit}   
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2238'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2239'}">
                        &emsp;&emsp;&emsp;&emsp;&nbsp;${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2239'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2239'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2240'}">
                        &emsp;&emsp;&emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2240'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2240'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2240'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2241'}">
                        &emsp;&emsp;&emsp;&emsp;&nbsp;${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2241'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2241'}">
                        ${t.unit}   
                    </c:if>
                </c:forEach> 
            </td>
            <td>  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2241'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
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
