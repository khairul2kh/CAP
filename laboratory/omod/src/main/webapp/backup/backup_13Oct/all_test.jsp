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

<!--Albumin Creatinine Ration-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5239' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Albumin Creatinine Ratio</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5239'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5239'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5239'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5239'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5239'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5239'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>
<!--S. Total Protein & AG Ratio-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5702' }">
        <tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>S. Total Protein & AG Ratio</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>
<!--Micro Albumin Creatinine Ration-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5240' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Micro Albumin Creatinine Ratio</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5240'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5240'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5240'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5240'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5240'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5240'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5240'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5240'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5240'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5240'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5240'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5240'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- GTT (2 Sample) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5769' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>GTT (2 Sample)</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5769'}"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5769'}"> 
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5769'}"> 
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        ${t.test}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '5769'}"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '5769'}"> 
                        ${t.test}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:20px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '5769'}"> 
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

 

<!-- STP AG Ratio-->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5197' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>STP AG Ratio</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5197'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5197'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5197'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5197'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5197'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5197'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5197'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5197'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5197'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5197'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5197'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5197'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5197'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5197'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5197'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5197'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Urine Electrolytes -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5294' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Urine Electrolytes</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5294'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5294'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5294'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5294'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5294'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5294'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5294'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5294'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5294'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5294'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5294'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5294'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5294'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5294'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5294'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5294'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- 24 hours. Urine Electrolytes -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5295' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>24 hours. Urine Electrolytes</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5826' && t.groupName eq '5295'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5826' && t.groupName eq '5295'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5826' && t.groupName eq '5295'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5826' && t.groupName eq '5295'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5827' && t.groupName eq '5295'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5827' && t.groupName eq '5295'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5827' && t.groupName eq '5295'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5827' && t.groupName eq '5295'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5828' && t.groupName eq '5295'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5828' && t.groupName eq '5295'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5828' && t.groupName eq '5295'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5828' && t.groupName eq '5295'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>


<!-- Ascitic Fluid for Biochemical test -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5353' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Ascitic Fluid for Biochemical test</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>

<!-- Spot Urine Electrolytes -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5515' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Spot Urine Electrolytes</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5515'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5515'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5515'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5515'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5515'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5515'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5515'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5515'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5515'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5515'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5515'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5515'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5515'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5515'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5515'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5515'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>		    
    </c:if>
</c:forEach>

<!-- Urinary Electrolytes -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5735' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Urinary Electrolytes</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5735'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5735'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5735'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5296' && t.groupName eq '5735'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5735'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5735'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5735'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5297' && t.groupName eq '5735'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5735'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5735'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5735'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5298' && t.groupName eq '5735'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5735'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5735'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5735'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3936' && t.groupName eq '5735'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>
</c:forEach>


<!-- URINE ROUTINE EXAMINATION -->
<c:forEach items="${te}" var="te">   
    <c:if test="${investigation eq '2415' && te.concept.conceptId eq '2415' }">
        
        <tr style="height:25px; line-height:30px;">
            <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> PHYSICAL EXAMINATION </u> </td> 
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> MICROSCOPIC EXAMINATION </u> </td> 	
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4640' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4640' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"> <u style="font-style:italic; font-weight:bold; "> CELL/HPF </u> </td>
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4647' && t.groupName eq '2415'}">
                &nbsp;&nbsp; Colour
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4647' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td width="30%"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5876' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td  >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5876' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td width="25%">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4649' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td width="20%">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4649' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td width="25%"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5931' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td  >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5931' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4650' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4650' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5932' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5932' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2654' && t.groupName eq '2415'}">
                &nbsp;&nbsp; Urine for S. Gravity
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2654' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"> &nbsp;   </td>	
</tr>

<tr> <td colspan="4"> &nbsp; </td> </tr>

<tr>
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> CHEMICAL EXAMINATION </u> </td> 
<td colspan="2"> <u style="font-style: italic; font-weight:bold;"> CASTS / LPF </u> </td> 	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4230' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4230' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6634' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6634' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6632' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6632' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6635' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6635' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5987' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5987' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6628' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6628' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6633' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6633' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1871' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1871' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td colspan="2"> &nbsp;  </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1870' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1870' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr> <td colspan="4"> &nbsp; </td> </tr>

<tr>
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> ON REQUEST </u> </td> 
<td colspan="2"> <u style="font-style: italic; font-weight:bold;"> CRYSTALS & OTHERS </u> </td> 	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5988' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5988' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5993' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5993' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5989' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5989' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5992' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5992' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4232' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4232' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5991' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5991' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2659' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2659' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '622' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '622' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2550' && t.groupName eq '2415'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '2550' && t.groupName eq '2415'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1854' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '1854' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>
<tr>
    <td colspan="2"> &nbsp; </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '712' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '712' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>
<tr>
    <td colspan="2"> &nbsp; </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6637' && t.groupName eq '2415'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6637' && t.groupName eq '2415'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

</c:if>
</c:forEach>

<!-- STOOL ROUTINE EXAMINATION -->

<c:forEach items="${te}" var="te">   
    <c:if test="${investigation eq '3117' && te.concept.conceptId eq '3117' }">
        <br>
        <tr style="height:25px; line-height:30px;">
            <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> PHYSICAL EXAMINATION </u> </td> 
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> CHEMICAL EXAMINATION </u> </td> 	
</tr>
<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6007' && t.groupName eq '3117'}">
                &nbsp;&nbsp; Color
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6007' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4230' && t.groupName eq '3117'}">
                &nbsp;&nbsp; 
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4230' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6638' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6638' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td width="30%"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6011' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td  >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6011' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td width="25%">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6009' && t.groupName eq '3117'}">
                &nbsp;&nbsp; Consistency
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td width="20%">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6009' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td width="25%"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6010' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td  >
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6010' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6008' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6008' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"> </td>
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4233' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '4233' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"> &nbsp;   </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6639' && t.groupName eq '3117'}">
                &nbsp;&nbsp; 
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6639' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"> &nbsp;   </td>	
</tr>

<tr> <td colspan="4"> &nbsp; </td> </tr>

<tr>
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> PROTOZOA </u> </td> 
<td colspan="2"> <u style="font-style: italic; font-weight:bold;"> OTHERS </u> </td> 	
</tr>

<tr>
    <td colspan="2"> 
        E. Histolytica
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5876' && t.groupName eq '3117'}">
                &nbsp;&nbsp; 
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5876' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '621' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '621' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5931' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5931' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3902' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3902' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6012' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6012' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6641' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6641' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5932' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5932' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6640' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6640' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3906' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3906' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td colspan="2"></td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3903' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3903' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td colspan="2"> <u style="font-style: italic; font-weight:bold;"> OVA OF </u> </td>
<td> 
    <c:forEach items="${tmn}" var="t">
        <c:if test="${t.investigation eq '613' && t.groupName eq '3117'}">
            &nbsp;&nbsp;
            ${t.testName}
            <span style="float:right; font-style:normal;">:</span>
        </c:if>	 
    </c:forEach>
</td>
<td>
    <c:forEach items="${tmn}" var="t">
        <c:if test="${t.investigation eq '613' && t.groupName eq '3117'}">
            ${t.value}
        </c:if>
    </c:forEach> 
</td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6642' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6642' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3904' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3904' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6643' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6643' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '712' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '712' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6644' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '6644' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3905' && t.groupName eq '3117'}">
                &nbsp;&nbsp;
                ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3905' && t.groupName eq '3117'}">
                ${t.value}
            </c:if>
        </c:forEach> 
    </td>	
</tr>

<tr>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3907' && t.groupName eq '3117'}">
                &nbsp;&nbsp; ${t.testName}
                <span style="float:right; font-style:normal;">:</span>
            </c:if>	 
        </c:forEach>
    </td>
    <td>
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '3907' && t.groupName eq '3117'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td colspan="2"></td>			
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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

<!-- DEPARTMENT OF HAEMATOLOGY -->
<!-- BT.CT. -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5692' && te.concept.conceptId eq '5692' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>BT.CT.</b> </td> </tr>	-->
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2084' && t.groupName eq '5692'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
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

<!-- ANTI-NUCLEAR AB (ANA) -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '5216' && te.concept.conceptId eq '5216' }">
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5216' }">
                        &nbsp;&nbsp;&nbsp;   ${t.testName}
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5216'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5216'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5216'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
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
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '2413' }">
        <tr> <td colspan="4"> &nbsp;&nbsp;<b>SEMEN ANALYSIS</b> </td> </tr>	
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Physical Examination: </b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5921' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
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
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td> 
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5922' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5923' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5924' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5924' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5924' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5924' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5925' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5925' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5925' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5925' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5926' && t.groupName eq '2413'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>

        <tr> <td colspan="4">&nbsp;&nbsp;<b>Microscopic Examination: </b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5928' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5928' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5928' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5928' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5929' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5929' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5929' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5929' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '2268' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2268' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2268' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2268' && t.groupName eq '2413'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>

        <tr> <td colspan="4">&nbsp;&nbsp;<b>Other's cells: </b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5931' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5932' && t.groupName eq '2413'}">
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
                    <c:if test="${t.investigation eq '5879' && t.groupName eq '2413'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5879' && t.groupName eq '2413'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5879' && t.groupName eq '2413'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5879' && t.groupName eq '2413'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach>  
            </td>
        </tr>
    </c:if>
</c:forEach> 



<!-- Anti-Nuclear Ab (ANA) --> 
<!--
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2400' && te.concept.conceptId eq '5216' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti-Nuclear Ab (ANA)</b> </td> </tr>	
        <tr>
            <td> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5851' && t.groupName eq '5216'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5851' && t.groupName eq '5216'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5851' && t.groupName eq '5216'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5851' && t.groupName eq '5216'}">
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
            <c:if test="${t.investigation eq '5852' && t.groupName eq '5216'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5852' && t.groupName eq '5216'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5852' && t.groupName eq '5216'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5852' && t.groupName eq '5216'}">
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
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216'}">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${t.testName}  
            </c:if>	 
        </c:forEach>
    </td>
    <td style="padding-left:20px;"> 
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216'}">
                ${t.value}  
            </c:if>
        </c:forEach> 
    </td>
    <td style="padding-left:20px;">  
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216'}">
                ${t.unit}  
            </c:if>
        </c:forEach> 
    </td>
    <td align="left" style="padding-left:10px; font-size: 11px;">
        <c:forEach items="${tmn}" var="t">
            <c:if test="${t.investigation eq '5847' && t.groupName eq '5216'}">
                <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                    ${t.hiNormal} </c:if>
            </c:if>
        </c:forEach>  
    </td>
</tr>

    </c:if>
</c:forEach> -->

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


<!-- Anti HBc -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '2614' }">
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

<!-- Anti HBC-IgM -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '5714' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HBC-IgM</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5714'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5714'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5714'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5714'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5714'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5714'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5714'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5714'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5714'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5714'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5714'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5714'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti HEV -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '5155' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HEV</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5155'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5155'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5155'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5155'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5155'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5155'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5155'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5155'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5155'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5155'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5155'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5155'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti HEV-IgM -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '5715' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HEV-IgM</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5715'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5715'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5715'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- Anti HAV - IgM -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '5728' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Anti HAV - IgM</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5728'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5728'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5728'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- HIV - 1&2 -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '3945' && te.concept.conceptId eq '5162' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>HIV - 1&2 </b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5162'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5162'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5162'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5845' && t.groupName eq '5162'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5162'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5162'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5162'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5846' && t.groupName eq '5162'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5162'}">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:20px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5162'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:20px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5162'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; font-size: 11px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5847' && t.groupName eq '5162'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
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