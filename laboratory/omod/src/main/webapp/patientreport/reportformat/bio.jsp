<%-- 
    Document   : bio
    Created on : Oct 12, 2016, 9:57:47 PM
    Author     : Khairul
--%>

<!-- BIOCHEMISTRY -->

<!-- Fasting Blood Glucose -->
<c:forEach items="${te}" var="te">  
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5942' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5942'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5942'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5942'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5942'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5942'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5942'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood Glucose 2 Hour ABF. -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5944' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5167' && t.groupName eq '5944'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5167' && t.groupName eq '5944'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5167' && t.groupName eq '5944'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5167' && t.groupName eq '5944'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5944'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5944'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Random Blood Glucose (RBS) -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '4392' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5943' && t.groupName eq '4392'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5943' && t.groupName eq '4392'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5943' && t.groupName eq '4392'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5943' && t.groupName eq '4392'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '4392'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '4392'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- FBS -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5730' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5730'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5730'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5730'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5730'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5730'}">
                        &nbsp;&nbsp;${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5730'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
    </c:if>

    <!-- Blood glucose 1 hour after 75gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5171' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '5171'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '5171'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '5171'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '5171'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5171'}">
                        &nbsp;&nbsp;${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5171'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1.5 hour after 75gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5173' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5173'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5173'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5173'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5173'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5173'}">
                        &nbsp;&nbsp;${t.testName}   
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5173'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Glucose Tolerance Test  GTT 3 Sample-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2404' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Glucose Tolerance Test (GTT)</b> </td> </tr>	
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '2404'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '2404'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '2404'}">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '2404'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '2404' }">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '2404'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
        </tr>
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '2404'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939'&& t.groupName eq '2404'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '2404'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5939' && t.groupName eq '2404'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5839' && t.groupName eq '2404'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5839' && t.groupName eq '2404'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
        </tr>
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '2404'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '2404'}">
                        ${t.test}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '2404'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '2404'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '2404'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '2404'}">
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
        </tr>
    </c:if>

    <!-- Glucose 1hours After 100gm Glucose Blood -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6439' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6440' && t.groupName eq '6439' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6440' && t.groupName eq '6439' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6440' && t.groupName eq '6439' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6440' && t.groupName eq '6439' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6439' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6439' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose 1hours After Lunch Blood -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6442' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6443' && t.groupName eq '6442' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6443' && t.groupName eq '6442' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6443' && t.groupName eq '6442' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6443' && t.groupName eq '6442' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6442' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6442' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose 2.5 hours After 100gm Glucose Blood -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6444' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6445' && t.groupName eq '6444' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6445' && t.groupName eq '6444' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6445' && t.groupName eq '6444' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6445' && t.groupName eq '6444' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6444' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6444' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose 2hours After 100gm Glucose Blood -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6446' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6447' && t.groupName eq '6446' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6447' && t.groupName eq '6446' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6447' && t.groupName eq '6446' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6447' && t.groupName eq '6446' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6446' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6446' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose ½ hours After 75gm Glucose -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6450' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6451' && t.groupName eq '6450' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6451' && t.groupName eq '6450' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6451' && t.groupName eq '6450' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6451' && t.groupName eq '6450' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6450' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6450' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose 2hours After Food -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6448' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6449' && t.groupName eq '6448' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6449' && t.groupName eq '6448' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6449' && t.groupName eq '6448' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6449' && t.groupName eq '6448' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6448' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6448' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>

    <!-- Glucose ½ hours After Breakfast -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6452' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6453' && t.groupName eq '6452' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6453' && t.groupName eq '6452' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6453' && t.groupName eq '6452' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '6453' && t.groupName eq '6452' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6452' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6452' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- GTT (2 Sample) -->
<c:forEach items="${te}" var="te"> 
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5769' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>GTT (2 Sample)</b></td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2291' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5769'}"> 
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        ${t.test}  
                    </c:if>
                </c:forEach>   
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5941' && t.groupName eq '5769'}"> 
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5840' && t.groupName eq '5769'}"> 
                        ${t.value}  
                    </c:if>
                </c:forEach>   
            </td>
        </tr>
    </c:if>

    <!--Blood Glucose 1 Hour ABF-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5165' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b>Blood Glucose 1 Hour ABF</b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5934' && t.groupName eq '5165'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5934' && t.groupName eq '5165'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5934' && t.groupName eq '5165'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5934' && t.groupName eq '5165'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5165'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5165'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- 2 Hours 75gm ABF -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6711' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4246' && t.groupName eq '6711'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4246' && t.groupName eq '6711'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4246' && t.groupName eq '6711'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4246' && t.groupName eq '6711'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6711'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '6711'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood Glucose 1.5 Hour ABF -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5166' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5935' && t.groupName eq '5166'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5935' && t.groupName eq '5166'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5935' && t.groupName eq '5166'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5935' && t.groupName eq '5166'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5166'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5166'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1 hour after 50gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5168' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5936' && t.groupName eq '5168'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5936' && t.groupName eq '5168'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5936' && t.groupName eq '5168'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5936' && t.groupName eq '5168'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5168'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5168'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1.5 hour after 50gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5169' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5937' && t.groupName eq '5169'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5937' && t.groupName eq '5169'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5937' && t.groupName eq '5169'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5937' && t.groupName eq '5169'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5169'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5169'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 2 hour after 50gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5170' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5938' && t.groupName eq '5170'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5938' && t.groupName eq '5170'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">    
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5938' && t.groupName eq '5170'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5938' && t.groupName eq '5170'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} <c:if test="${not empty t.lowNormal and not empty t.hiNormal}"> - </c:if>
                            ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5170'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5170'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1.5 hour after 75gm glu -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5172' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5940' && t.groupName eq '5172'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5940' && t.groupName eq '5172'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5940' && t.groupName eq '5172'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5940' && t.groupName eq '5172'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5172'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5172'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>

        </tr>
    </c:if>


    <!-- Blood glucose 2 hour after lunch -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5174' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5945' && t.groupName eq '5174'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5945' && t.groupName eq '5174'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5945' && t.groupName eq '5174'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5945' && t.groupName eq '5174'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5174'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5174'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose before lunch -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5175' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5946' && t.groupName eq '5175'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5946' && t.groupName eq '5175'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5946' && t.groupName eq '5175'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5946' && t.groupName eq '5175'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5175'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5175'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1 hour after meal -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5176' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5947' && t.groupName eq '5176'}">
                        &nbsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5947' && t.groupName eq '5176'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5947' && t.groupName eq '5176'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5947' && t.groupName eq '5176'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5176'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5176'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 1.5 hour after meal -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5177' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5948' && t.groupName eq '5177'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5948' && t.groupName eq '5177'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5948' && t.groupName eq '5177'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5948' && t.groupName eq '5177'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5177'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5177'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 2 hour after meal -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5178' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5949' && t.groupName eq '5178'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5949' && t.groupName eq '5178'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5949' && t.groupName eq '5178'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5949' && t.groupName eq '5178'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5178'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5178'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Postprandial blood glucose -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5179' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5950' && t.groupName eq '5179'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5950' && t.groupName eq '5179'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5950' && t.groupName eq '5179'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5950' && t.groupName eq '5179'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5179'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5179'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- 1 hour Postprandial blood glucose -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5180' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5951' && t.groupName eq '5180'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5951' && t.groupName eq '5180'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5951' && t.groupName eq '5180'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5951' && t.groupName eq '5180'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5180'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5180'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- 1.5 hour Postprandial blood glucose -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5181' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5952' && t.groupName eq '5181'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5952' && t.groupName eq '5181'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5952' && t.groupName eq '5181'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5952' && t.groupName eq '5181'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5181'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5181'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- 2 hour Postprandial blood glucose -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5182' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5953' && t.groupName eq '5182'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5953' && t.groupName eq '5182'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5953' && t.groupName eq '5182'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5953' && t.groupName eq '5182'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5182'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5182'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose before dinner -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5183' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5954' && t.groupName eq '5183'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5954' && t.groupName eq '5183'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5954' && t.groupName eq '5183'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5954' && t.groupName eq '5183'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5183'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5183'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!-- Blood glucose 2 hour after dinner -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5184' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5955' && t.groupName eq '5184'}">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5955' && t.groupName eq '5184'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">    
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5955' && t.groupName eq '5184'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5955' && t.groupName eq '5184'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5184'}">
                        &nbsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:3px; width:15%;" colspan="3">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5832' && t.groupName eq '5184'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>
</c:forEach>

<!-- BUNN-->
<c:forEach items="${te}" var="te"> 
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5186' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5186' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5186' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5186' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5186' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!-- Blood urea-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5185' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5185' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5185' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5185' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5185' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--SERUM CREAtinine -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2215' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2215' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2215' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2215' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2215' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S.URIC ACID -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2294' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2294' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2294' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2294' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2294' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S>BILIRUBIN totall-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2739' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2739'  }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2739'   }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2739'  }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739'  && t.groupName eq '2739' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S. bilibrubin direct-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2232' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S. bilibrubin Indirect-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2738' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' }">
                        ${t.value}
                    </c:if>  
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!-- Bilirubin (D/I)-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5196' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Bilirubin (D/I)</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '5196'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '5196'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '5196'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '5196'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' && t.groupName eq '5196'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' && t.groupName eq '5196'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' && t.groupName eq '5196'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2232' && t.groupName eq '5196'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' && t.groupName eq '5196'}">
                        &emsp;&emsp;&nbsp;${t.testName}  
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' && t.groupName eq '5196'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' && t.groupName eq '5196'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2738' && t.groupName eq '5196'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!--ALT SGPT-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2209' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2209' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2209' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209'  && t.groupName eq '2209'}">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2209' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--AST SGPT-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2208' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2208' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2208' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2208' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2208' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S ALKALINE PHOSHPHATE-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2214' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S PHOSphate-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5687' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5687' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5687' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5687' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5687' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- Sodium & Potassium Serum -->
<c:forEach items="${te}" var="te">
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '6459' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Sodium & Potassium Serum </b> </td> </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187' && t.groupName eq '6459' }">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187' && t.groupName eq '6459' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187' && t.groupName eq '6459' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5187' && t.groupName eq '6459' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188' && t.groupName eq '6459' }">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188' && t.groupName eq '6459' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188' && t.groupName eq '6459' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5188' && t.groupName eq '6459' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!--S Calcium-->
<c:forEach items="${te}" var="te"> 
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2500' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2500' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2500' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2500' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2500' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>
</c:forEach>

<!-- Livr Function Test (LFT)-->
<c:forEach items="${te}" var="te">
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2407' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Liver Function Test (LFT)</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2407'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2407'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2407'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2739' && t.groupName eq '2407'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2407'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2407'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2407'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2209' && t.groupName eq '2407'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2407'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2407'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2407'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2208' && t.groupName eq '2407'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' && t.groupName eq '2407'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' && t.groupName eq '2407'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' && t.groupName eq '2407'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2214' && t.groupName eq '2407'}">
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
        <tr> <td colspan="4">&nbsp;&nbsp;<b>S. Total Protein & AG Ratio</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2212' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2217' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2679' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        ${t.test}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5841' && t.groupName eq '5702'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
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

<!--S LIPASE-->
<c:forEach items="${te}" var="te">
    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2230' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2230' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2230' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2230' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2230' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S AMYLASE-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2234' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2234' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2234' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2234' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2234' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S CPK-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5198' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5198' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5198' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5198' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5198' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--CK MB-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2228' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2228' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2228' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2228' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2228' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--Gama Glutamile Transference (GGT)-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2461' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2461' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2461' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2461' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2461' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--LDH-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5199' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5199' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5199' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5199' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5199' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--IRON-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '3993' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3993' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3993' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3993' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3993' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--TIBC-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2559' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2559' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2559' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2559' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2559' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--ESTIMATED GFR-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5291' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5291' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5291' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5291' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5291' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--AMMONIA-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5301' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5301' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5301' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5301' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5301' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--ALDOLASE-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5163' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5163' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5163' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5163' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5163' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--LACTATE-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2229' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2229' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2229' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2229' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2229' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--LITHIUM-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2554' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2554' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2554' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2554' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2554' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--MAGNESIUM-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2502' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2502' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2502' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2502' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2502' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--CERULOPLASMIN-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5271' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5271' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5271' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5271' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5271' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--FIBRINOGEN-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '3074' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3074' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3074' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3074' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '3074' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--S. Cholestrol (Total) -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '4248' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--SERUM HDL-CHOLESTROL -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '4249' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--SERUM LDL - CHOLESTROL -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '4250' }">
        <!--  <tr> <td colspan="4">&nbsp;&nbsp;<b> Urine for Ketone Bodies </b> </td> </tr> -->
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--SERUM TRIGLYCERIDE-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2227' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!-- LIPID PROFILE -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '2408' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Lipid Profile</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '2408'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '2408'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '2408'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '2408'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '2408'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '2408'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '2408'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '2408'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '2408'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '2408'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '2408'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '2408'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '2408'}">
                        &emsp;&emsp;&nbsp;${t.testName} 
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '2408'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '2408'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '2408'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>

    <!-- LIPID PROFILE Fasting -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '4247' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Lipid Profile</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '4247'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '4247'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '4247'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4248' && t.groupName eq '4247'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '4247'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '4247'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '4247'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4249' && t.groupName eq '4247'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '4247'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '4247'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '4247'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '4250' && t.groupName eq '4247'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '4247'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '4247'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">   
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '4247'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2227' && t.groupName eq '4247'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                        <c:if test="${empty t.refRange}"> ${t.lowNormal} -  ${t.hiNormal} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>

    </c:if>

    <!--Sugar-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5860' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 

            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!--Protein-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5861' }">
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' }">
                        &nbsp;&nbsp;${t.testName}
                    </c:if>  
                </c:forEach>
            </td> 
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' }">
                        ${t.value}
                    </c:if> 
                </c:forEach>
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' }">
                        ${t.unit}
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' }">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if> 
                    </c:if>
                </c:forEach> 
            </td>
        </tr> 
    </c:if>

    <!-- Ascitic Fluid for Biochemical test -->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5353' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Ascitic Fluid for Biochemical test</b> </td> </tr>	
        <tr>
            <td style="width:40%;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td style="padding-left:0px; width:15%;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;">  
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5860' && t.groupName eq '5353'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        &emsp;&emsp;&nbsp;${t.testName}
                    </c:if>	 
                </c:forEach>
            </td>
            <td align="left" style="padding-left:3px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        ${t.value}  
                    </c:if>
                </c:forEach> 
            </td>
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:3px;">
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5861' && t.groupName eq '5353'}">
                        <c:if test="${not empty t.refRange}"> ${t.refRange} </c:if>
                    </c:if>
                </c:forEach> 
            </td>
        </tr>
    </c:if>

    <!--Albumin Creatinine Ration-->

    <c:if test="${investigation eq '2311' && te.concept.conceptId eq '5239' }">
        <tr> <td colspan="4">&nbsp;&nbsp;<b>Albumin Creatinine Ratio</b> </td> </tr>	
        <tr>
            <td> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        &emsp;&emsp;&nbsp;${t.testName}
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
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5873' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px;">
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
                        &emsp;&emsp;&nbsp;${t.testName} 
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
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '2782' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px; ">
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
                        &emsp;&emsp;&nbsp;${t.testName}
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
            <td style="padding-left:0px;"> 
                <c:forEach items="${tmn}" var="t">
                    <c:if test="${t.investigation eq '5874' && t.groupName eq '5239'}">
                        ${t.unit}  
                    </c:if>
                </c:forEach> 
            </td>
            <td align="left" style="padding-left:10px;  ">
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
