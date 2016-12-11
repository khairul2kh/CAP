<%-- 
    Document   : biochemistry
    Created on : Oct 17, 2016, 10:56:59 AM
    Author     : Khairul
--%>
 
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