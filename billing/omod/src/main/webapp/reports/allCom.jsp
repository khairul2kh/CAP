<%-- 
    Document   : allCom
    Created on : Jul 31, 2016, 12:00:23 PM
    Author     : Khairul
--%>
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="../includes/js_css.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    jQuery(document).ready(function() {
        jQuery('#eDate, #sDate').datepicker({yearRange: 'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});

        jQuery("#searchKey").keyup(function(event) {
            if (event.keyCode == 13) {
                getBillingQueue(1);
            }
        });

        //$("#paidcommission").hidden();
        $("#id option").each(function() {
            $(this).attr('selected', true);
        });
    });

    function saveCommission() {
        var bill = $("#id").val();

        var json = bill;
        $.ajax({
            url: getContextPath() + "/module/billing/comSave.htm",
            type: "POST",
            dataType: 'json',
            data: {json: json},
            success: function() {
                alert("Successfully added!");
            },
            error: function() {
                alert("Successfully Paid Commission!");
                window.location = "compay.htm";
            }
        });

    }
    function validate() {
        if (SESSION.checkSession()) {
            var dName = document.getElementById("docch").value;
            var sDate = document.getElementById("sDate").value;
            var eDate = document.getElementById("eDate").value;

            if (dName == null || dName == "" || dName == "0")
            {
                alert("Please Select Doctor / CH List!!");
                $("#docch").focus();
                $("#docch").css({"background-color": "yellow", "color": "red"});
                // jQuery("#paidcommission").hide();
                return false;
            }
            else if (sDate == null || sDate == "")
            {
                alert("Please Enter Start Date!!");
                $("#sDate").focus();
                // jQuery("#paidcommission").hide();
                return false;
            }
            else if (eDate == null || eDate == "")
            {
                alert("Please Enter End Date !!");
                $("#eDate").focus();
                // jQuery("#paidcommission").hide();
                return false;
            }
        }
    }

    function printDiv3() {
        var printer = window.open('left=0', 'top=0', 'width=300,height=300');
        printer.document.open("text/html");
        printer.document.write(document.getElementById('p').innerHTML);
        printer.print();
        printer.document.close();
        printer.window.close();
        document.getElementById('printbill').value = "Printed !!!";
        $('#printbill').css({"background-color": "#eee", "color": "red", "font-weight": "bold"});
        //  jQuery("#billPrint").submit();
        // window.location = "directbillingqueue.form";
    }
    function back() {
        window.location = "reportsView.form";
    }
</script>

<input type="hidden" id="pageId" value="allCommissionPayment" />
<form class="form-rep-view" method="get" action="compayview.htm" id="commissionCalForm" onsubmit="return validate()" >
    <div class="boxHeader1">   <strong>Commission Payment/Print</strong></div>
    <div class="box1">
        <span style="font-size:14px; font-weight: bold;"> Select Doctor / CH List </span> 
        <select id="docch" name="docch" class="styled-select blue semi-square" >
            <option value="0"  >  -- Please Select Doctor / Ch -- </span> </option>
            <option value="1"  > Doctor List </option>
            <option value="2"  > CH List </option>
        </select>

        <select id="selectedDocId" size="4" style="display:none;" name="selectedDocId" ><option value="0">Please Select</option></select>
        <span style="font-size:14px; font-weight: bold;"> Start Date : </span> 
        <input type="text" placeholder="Please Enter Start Date " id="sDate" name="sDate" style="width:250px;"/> &nbsp;&nbsp;&nbsp;
        <span style="font-size:14px; font-weight: bold;"> End Date : </span>  
        <input type="text" placeholder="Please Enter End Date " id="eDate" name="eDate" style="width:250px;"/> &nbsp;&nbsp;&nbsp;
        <input type="submit" value="Get View" id="getview"    class="bu-normal"  /> &emsp;&emsp; 

        <c:if test="${not empty listDia}">
            <input type="button" class="bs" id="printbill" value="Print" onClick="printDiv3();"  /> 
            <input type="button" id="paidcommission" class="bs" value="Paid" onclick="saveCommission();" /> </c:if>
            <div id="billingqueue" style="padding:4px;"></div>
        </div>

        <div class="box1" id="pf" >    
            <!-- for data save all bill id-->
            <select id="id" multiple style="display:none;" />
        <c:forEach items="${withoutDueList}" var="a" varStatus="index">
            <option value="${a}" >${a}</option>
        </c:forEach>
        </select>


        <c:if test="${docch eq '1'}">
            <center><b style="color:black; font-size:18px;  "> Referral Doctor List </b> </center>
                <c:if test="${not empty listDia}">
                    <c:forEach items="${docInfo}" var="q" varStatus="index">

                    <center> <b style="font-size:18px;"> BILL </b> </br> 
                        Period :  <%= request.getParameter("sDate") %> - <%= request.getParameter("eDate") %>
                    </center> <br>

                    <b> Referral  :  ${q.id}  &emsp;&emsp;&emsp; ${q.doctorName}, ${q.dergee} </b> <br> 
                    <c:if test="${not empty q.address}" > <b> Address : </b> ${q.address} </c:if> </br> &nbsp;
                        <table style=" font-size:12px;  border-collapse: collapse; border :1pt solid #999; width: 100%;  font-family:arial;"  >  						
                            <tr>
                                <th width="5%"  class="a left"><b>Voucher Date</b></th>
                                <th width="5%" class="a left"><b>Voucher No</b></th>
                                <th width="40%;" class="a" style="text-align:left;"><b>Investigation Name</b></th>
                                <th width="7%" style="text-align:center; padding-right:10px;"  class="a right"><b>Rate (Tk)</b></th>
                                <th width="7%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Referral Amount (Tk)</b></th>
                                <th width="7%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b>Discount (Tk)</b></th> 
                                <th width="4%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b> % </b></th> 
                                <th width="7%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Total Referral (Tk)</b></th>
                            </tr>
                            <tbody>
                                <!-- Doctor -->
                            <c:set var="rate" value="${0}"/> 
                            <c:set var="refAmount" value="${0}"/> 
                            <c:set var="discount" value="${0}"/> 
                            <c:set var="aaa" value="${0}"/>

                            <c:set var="netTotalReferal" value="${0.0}"/>

                            <c:forEach items="${listDia}" var="d" >
                                <c:if test="${q.id eq d.refId}" >

                                    <c:set var="ll"><fmt:parseNumber  type="number"    value="${d.lessAmount}" /> </c:set>
                                    <c:set var="ssss"> <fmt:parseNumber  type="number" value="${d.servicePrice}" /> </c:set>
                                    <c:set var="docCom"> <fmt:parseNumber  type="number" value="${d.comAmount}" /> </c:set>

                                    <c:set var="totper" value="${(ll/ssss)*100}" />
                                    <c:set var="oneper" value="${(ssss*1)/100}" />

                                    <c:set var="doctorCommission" value="${(docCom/ssss)*100} " /> 



                                    <c:set var="totalreferal" value="0.0"/> 

                                    <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">   

                                        <!-- Doctor 
                                        
                                        
                                        
                                        
                                        <c:if test="${ totper <= '20.00'}"> <c:set var="totalreferal" value="${d.comAmount} "/> </c:if>
                                        <c:if test="${ totper > '20.01' && totper < '30.01' }">
                                            <c:set var="totalreferal" value="${ docCom -((totper - 20)* oneper)} " /> 
                                        </c:if>
                                        <c:if test="${ totper > '30.00'}"> <c:set var="totalreferal" value="${0.00} "/> </c:if> 
 
 
 
 
                                            -->									




                                        <c:choose>
                                            <c:when test="${ totper == doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > 20}">
                                                <c:set var="totalreferal" value="${ docCom-ll}"/>

                                            </c:when>						

                                            <c:when test="${ totper <= 20 }">
                                                <c:set var="totalreferal" value="${ (docCom-(ll/2))}"/>

                                            </c:when>
                                            <c:otherwise>

                                            </c:otherwise>
                                        </c:choose>


                                    </c:if> 




                                    <tr> 
                                        <td  class="a left"><openmrs:formatDate date="${d.createdDate}" /> </td> <!-- date -->
                                        <td  class="a left"> ${d.diaPatientServiceBill.billId}   </td>  <!-- bill id -->
                                        <td  class="a left"> ${d.serviceName}   </td> <!-- investigation name -->
                                        <td  align="right" class="a right"> ${d.servicePrice}   </td>  <!-- rate -->
                                        <td  align="right" class="a right">   ${d.comAmount}    </td>  <!-- referrel amount -->
                                        <td  align="right" class="a right"  >  ${d.lessAmount}   </td> <!-- discount -->
                                        <td  align="center" class="a right"  >  
                                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${(ll/ssss)*100}" />

                                        </td> <!-- Percentage -->
                                        <td  align="right" class="a right"> <c:if test="${d.diaPatientServiceBill.billingStatus eq 'DUE'}">  DUE  </c:if>
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'FREE'}">  FREE  </c:if>
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">
                                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalreferal}" /> 												
                                            </c:if> 
                                        </td>     <!-- total referrel -->
                                    </tr>
                                    <c:set var="rate" value="${rate + d.servicePrice}"/>
                                    <c:set var="refAmount" value="${refAmount + d.comAmount}"/>
                                    <c:set var="discount" value="${discount + d.lessAmount}"/>
                                    <c:set var="netTotalReferal" value="${netTotalReferal + totalreferal}"/>

                                </c:if>
                            </c:forEach>
                            <tr style="font-size:15px; font-weight:bold;"> <td colspan="3"  align="right" class="a right" style="height:20px; font-size:15px;"> <span style="display: block;   text-align: right; padding-right:15px; color:#000;"> Total  </span> </td>
                                <td  style="text-align:right;"   class="a right" >   &#2547; ${rate} </td>
                                <td  style="text-align:right;"   class="a right">  &#2547; ${refAmount}  </td>
                                <td  style="text-align:right;"   class="a right">  &#2547; ${discount}  </td>
                                <td class="a right"> &nbsp; </td>
                                <td  style="text-align:right;"    class="a right"> &#2547; <fmt:formatNumber type="number" maxFractionDigits="3" value="${netTotalReferal}" /> </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <label style="padding-left:80%; "> MPO ID : ${q.territory} </label> <br>
                    <label style="font-family:arial;"> Kindly expedite the receipt of the bill <br><br>
                        Thanking You<br>
                        Sincerely yours, <br> <br>
                        <b style="text-decoration: overline dotted black; width:100px;"> &emsp; &emsp; MANAGER &emsp;&emsp;</b>
                    </label>
                    <p style="page-break-after:always;"></p>
                </c:forEach>
            </c:if>
        </c:if>


        <!-- RMP -->

        <c:if test="${docch eq '2'}">
            <center><b style="color:black; font-size:18px;  "> Referral CH List </b> </center>
                <c:if test="${not empty listDia}">
                    <c:forEach items="${docInfo}" var="q" varStatus="index">

                    <center> <b style="font-size:18px;"> BILL </b> </br> 
                        Period :  <%= request.getParameter("sDate") %> - <%= request.getParameter("eDate") %>
                    </center> <br>

                    <b> Referral  : CH ${q.id}  &emsp;&emsp;&emsp; ${q.doctorName}, ${q.dergee} </b> <br> 
                    <c:if test="${not empty q.address}" > <b> Address : </b> ${q.address} </c:if> </br> &nbsp;
                        <table style=" font-size:12px;  border-collapse: collapse; border :1pt solid #999; width: 100%;  font-family:arial;"  >  						
                            <tr>
                                <th width="5%"  class="a left"><b>Voucher Date</b></th>
                                <th width="5%" class="a left"><b>Voucher No</b></th>
                                <th width="40%;" class="a" style="text-align:left;"><b>Investigation Name</b></th>
                                <th width="7%" style="text-align:center; padding-right:10px;"  class="a right"><b>Rate (Tk)</b></th>
                                <th width="7%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Referral Amount (Tk)</b></th>
                                <th width="7%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b>Discount (Tk)</b></th> 
                                <th width="4%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b> % </b></th> 
                                <th width="7%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Total Referral (Tk)</b></th>
                            </tr>
                            <tbody>
                                <!-- CH -->
                            <c:set var="rate" value="${0}"/> 
                            <c:set var="refAmount" value="${0}"/> 
                            <c:set var="discount" value="${0}"/> 
                            <c:set var="aaa" value="${0}"/>

                            <c:set var="netTotalReferal" value="${0.0}"/>

                            <c:forEach items="${listDia}" var="d" >
                                <c:if test="${q.id eq d.refRmp}" >

                                    <c:set var="ll"><fmt:parseNumber  type="number"    value="${d.lessAmount}" /> </c:set>
                                    <c:set var="ssss"> <fmt:parseNumber  type="number" value="${d.servicePrice}" /> </c:set>
                                    <c:set var="docCom"> <fmt:parseNumber  type="number" value="${d.comAmount}" /> </c:set>

                                    <c:set var="totper" value="${(ll/ssss)*100}" />
                                    <c:set var="oneper" value="${(ssss*1)/100}" />

                                    <c:set var="doctorCommission" value="${(docCom/ssss)*100} " /> 

                                    <c:set var="totalreferal" value="0.0"/> 

                                    <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">    


                                        <!-- CH 
                                        
                                        <c:if test="${ totper <= '20.00'}"> <c:set var="totalreferal" value="${d.comAmount} "/> </c:if>

                                        <c:if test="${ totper > '20.01' && totper < '30.01' }">
                                            <c:set var="totalreferal" value="${ docCom -((totper - 20)* oneper)} " /> 
                                        </c:if>

                                        <c:if test="${ totper > '30.00'}"> <c:set var="totalreferal" value="${0.00} "/> </c:if> 
                                                                          
                                            -->





                                        <c:choose>
                                            <c:when test="${ totper == doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > 20}">
                                                <c:set var="totalreferal" value="${ docCom-ll}"/>

                                            </c:when>						

                                            <c:when test="${ totper <= 20 }">
                                                <c:set var="totalreferal" value="${ (docCom-(ll/2))}"/>

                                            </c:when>
                                            <c:otherwise>

                                            </c:otherwise>
                                        </c:choose>

                                    </c:if> 


                                    <tr> 
                                        <td  class="a left"><openmrs:formatDate date="${d.createdDate}" /> </td> <!-- date -->
                                        <td  class="a left"> ${d.diaPatientServiceBill.billId}   </td>  <!-- bill id -->
                                        <td  class="a left"> ${d.serviceName}   </td> <!-- investigation name -->
                                        <td  align="right" class="a right"> ${d.servicePrice}   </td>  <!-- rate -->
                                        <td  align="right" class="a right"> ${d.comAmount} </td>  <!-- referrel amount -->
                                        <td  align="right" class="a right"> ${d.lessAmount} </td> <!-- discount -->
                                        <td align="center" class="a right">	
                                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${(ll/ssss)*100}" /> 
                                        </td>   <!-- Percentage -->
                                        <td  align="right" class="a right">  
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'DUE'}">  DUE  </c:if>								
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">
                                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalreferal}" /> 
                                            </c:if> 
                                        </td>     <!-- total referrel -->
                                    </tr>
                                    <c:set var="rate" value="${rate + d.servicePrice}"/>
                                    <c:set var="refAmount" value="${refAmount + d.comAmount}"/>
                                    <c:set var="discount" value="${discount + d.lessAmount}"/>
                                    <c:set var="netTotalReferal" value="${netTotalReferal + totalreferal}"/>                                     

                                </c:if>
                            </c:forEach>
                            <tr style="font-size:15px; font-weight:bold;"> <td colspan="3"  align="right" class="a right" style="height:20px; font-size:15px;"> <span style="display: block;   text-align: right; padding-right:15px; font-weight:bold; color:#000;"> Total  </span> </td>
                                <td  style="text-align:right;"   class="a right" > &#2547;  ${rate}   </td>
                                <td  style="text-align:right;"   class="a right">  &#2547; ${refAmount}  </td>
                                <td  style="text-align:right;"   class="a right"> &#2547; ${discount}  </td>
                                <td class="a right"> &nbsp; </td>
                                <td  style="text-align:right;"    class="a right"> &#2547; ${netTotalReferal}  </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <label style="padding-left:80%; "> MPO ID : ${q.territory} </label> <br>
                    <label style="font-family:arial;"> Kindly expedite the receipt of the bill <br><br>
                        Thanking You<br>
                        Sincerely yours, <br> <br>
                        <b style="text-decoration: overline dotted black; width:100px;"> &emsp; &emsp; MANAGER &emsp;&emsp;</b>
                    </label>
                    <p style="page-break-after:always;"></p>
                </c:forEach>
            </c:if>
        </c:if>
        <c:if test="${ empty listDia}">
            <span style="color:red">No Bill Found.</span> 	                      
        </c:if>
    </div>
    <br>
    &emsp; &emsp; <input type="button" class="bs" value="Back" onclick="back();" />
</form> 
<!-- Printarea -->

<form>
    <div style="display:none; font-size:14px;"   id="p" >

        <c:if test="${docch eq '1'}">
            <c:if test="${not empty listDia}">
                <c:forEach items="${docInfo}" var="q" varStatus="index">
                    <center> <b style="font-size:18px;"> BILL </b> </br> 
                        Period :  <%= request.getParameter("sDate") %> - <%= request.getParameter("eDate") %>
                    </center> <br>
                    <b> Referral  :  ${q.id}  &emsp;&emsp;&emsp; ${q.doctorName}, ${q.dergee} </b> <br> 
                    <c:if test="${not empty q.address}" > <b> Address : </b> ${q.address} </c:if> </br> &nbsp;
                        <table style=" font-size:12px;  border-collapse: collapse; border :1pt solid #999; width: 100%;  font-family:arial;"  >  						
                            <tr>
                                <th width="5%"  class="a left"><b>Voucher Date</b></th>
                                <th width="5%" class="a left"><b>Voucher No</b></th>
                                <th width="37%;" class="a" style="text-align:left;"><b>Investigation Name</b></th>
                                <th width="8%" style="text-align:center; padding-right:10px;"  class="a right"><b>Rate (Tk)</b></th>
                                <th width="8%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Referral Amount (Tk)</b></th>
                                <th width="7%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b>Discount (Tk)</b></th> 
                                <th width="4%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b> % </b></th> 
                                <th width="7%;" style="text-align:center;  padding-right:10px;"  class="a right"><b>Total Referral (Tk)</b></th>
                            </tr>

                            <tbody>
                            <c:set var="rate" value="${0}"/> 
                            <c:set var="refAmount" value="${0}"/> 
                            <c:set var="discount" value="${0}"/> 
                            <c:set var="aaa" value="${0}"/>
                            <c:set var="toRef" value="${0}"/>
                            <c:set var="netTotalReferal" value="${0.0}"/>

                            <c:forEach items="${listDia}" var="d" >
                                <c:if test="${q.id eq d.refId}" >

                                    <c:set var="ll"><fmt:parseNumber  type="number"    value="${d.lessAmount}" /> </c:set>
                                    <c:set var="ssss"> <fmt:parseNumber  type="number" value="${d.servicePrice}" /> </c:set>
                                    <c:set var="docCom"> <fmt:parseNumber  type="number" value="${d.comAmount}" /> </c:set>
                                    <c:set var="totper" value="${(ll/ssss)*100}" />
                                    <c:set var="oneper" value="${(ssss*1)/100}" />


                                    <c:set var="doctorCommission" value="${(docCom/ssss)*100} " /> 

                                    <c:set var="totalreferal" value="0.0"/> 

                                    <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">  
                                        <!-- date 
                                        <c:if test="${ totper <= '20.00'}"> <c:set var="totalreferal" value="${d.comAmount} "/> </c:if>
                                        <c:if test="${ totper > '20.01' && totper < '30.01' }">
                                            <c:set var="totalreferal" value="${ docCom -((totper - 20)* oneper)} " /> 
                                        </c:if>
                                        <c:if test="${ totper > '30.00'}"> <c:set var="totalreferal" value="${0.00} "/> </c:if> 

                                            -->									



                                        <c:choose>
                                            <c:when test="${ totper == doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > 20}">
                                                <c:set var="totalreferal" value="${ docCom-ll}"/>

                                            </c:when>						

                                            <c:when test="${ totper <= 20 }">
                                                <c:set var="totalreferal" value="${ (docCom-(ll/2))}"/>

                                            </c:when>
                                            <c:otherwise>

                                            </c:otherwise>
                                        </c:choose>

                                    </c:if> 

                                    <tr> 
                                        <td  class="a left"><openmrs:formatDate date="${d.createdDate}" /> </td> <!-- date -->
                                        <td  class="a left"> ${d.diaPatientServiceBill.billId}   </td>  <!-- bill id -->
                                        <td  class="a left"> ${d.serviceName}   </td> <!-- investigation name -->
                                        <td  align="right" class="a right"> ${d.servicePrice}   </td>  <!-- rate -->
                                        <td  align="right" class="a right"> ${d.comAmount}     </td>  <!-- referrel amount -->
                                        <td  align="right" class="a right"> ${d.lessAmount}   </td>   <!-- discount -->
                                        <td  align="center" class="a right"  >  
                                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${(ll/ssss)*100}" />
                                        </td>
                                        <td  align="right" class="a right"> 
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'DUE'}">  DUE  </c:if>								
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">
                                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalreferal}" /> 
                                            </c:if> 
                                        </td>     <!-- total referrel -->
                                    </tr>
                                    <c:set var="rate" value="${rate + d.servicePrice}"/>
                                    <c:set var="refAmount" value="${refAmount + d.comAmount}"/>
                                    <c:set var="discount" value="${discount + d.lessAmount}"/>
                                    <c:set var="netTotalReferal" value="${netTotalReferal + totalreferal}"/>

                                </c:if>
                            </c:forEach>
                            <tr style="font-size:14px; font-weight:bold;"> <td colspan="3"  align="right" class="a right"> <span style="display: block;   text-align: right; padding-right:15px; font-weight:bold; color:#000;"> Total  </span> </td>
                                <td  style="text-align:right;"   class="a right" >   &#2547; ${rate}  </td>
                                <td  style="text-align:right;"   class="a right">   &#2547; ${refAmount}  </td>
                                <td  style="text-align:right;"   class="a right">   &#2547; ${discount}  </td>
                                <td  style="text-align:right;"   class="a right"> &nbsp; </td>
                                <td  style="text-align:right;"    class="a right">  &#2547; <fmt:formatNumber type="number" maxFractionDigits="3" value="${netTotalReferal}" />  </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <label style="padding-left:80%; "> MPO ID : ${q.territory} </label> <br>

                    <label style="font-family:arial;"> Kindly expedite the receipt of the bill <br><br>
                        Thanking You<br>
                        Sincerely yours, <br> <br> <br>
                        <b style="text-decoration: overline dotted black; width:100px;"> &emsp; &emsp; MANAGER &emsp;&emsp;</b>
                    </label>

                    <p style="page-break-after:always;"></p>
                </c:forEach>
            </c:if>               
        </c:if>

        <!-- RMP -->

        <c:if test="${docch eq '2'}">
            <c:if test="${not empty listDia}">
                <c:forEach items="${docInfo}" var="q" varStatus="index">
                    <center> <b style="font-size:18px;"> BILL </b> </br> 
                        Period :  <%= request.getParameter("sDate") %> - <%= request.getParameter("eDate") %>
                    </center> <br>
                    <b> Referral  : CH ${q.id}  &emsp;&emsp;&emsp; ${q.doctorName}, ${q.dergee} </b> <br> 
                    <c:if test="${not empty q.address}" > <b> Address : </b> ${q.address} </c:if> </br> &nbsp;
                        <table style=" font-size:12px;  border-collapse: collapse; border :1pt solid #999; width: 100%;  font-family:arial;"  >  						
                            <tr>
                                <th width="5%"  class="a left"><b>Voucher Date</b></th>
                                <th width="5%" class="a left"><b>Voucher No</b></th>
                                <th width="37%;" class="a" style="text-align:left;"><b>Investigation Name</b></th>
                                <th width="8%" style="text-align:right; padding-right:10px;"  class="a right"><b>Rate (Tk)</b></th>
                                <th width="8%;" style="text-align:right;  padding-right:10px;"  class="a right"><b>Referral Amount (Tk)</b></th>
                                <th width="7%;"  style="text-align:right;  padding-right:10px;"  class="a right"><b>Discount (Tk)</b></th> 
                                <th width="4%;"  style="text-align:center;  padding-right:10px;"  class="a right"><b> % </b></th> 
                                <th width="7%;" style="text-align:right;  padding-right:10px;"  class="a right"><b>Total Referral (Tk)</b></th>
                            </tr>

                            <tbody>
                            <c:set var="rate" value="${0}"/> 
                            <c:set var="refAmount" value="${0}"/> 
                            <c:set var="discount" value="${0}"/> 
                            <c:set var="aaa" value="${0}"/>
                            <c:set var="netTotalReferal" value="${0.0}"/>						

                            <c:forEach items="${listDia}" var="d" >
                                <c:if test="${q.id eq d.refRmp}" >

                                    <c:set var="ll"><fmt:parseNumber  type="number"    value="${d.lessAmount}" /> </c:set>
                                    <c:set var="ssss"> <fmt:parseNumber  type="number" value="${d.servicePrice}" /> </c:set>
                                    <c:set var="docCom"> <fmt:parseNumber  type="number" value="${d.comAmount}" /> </c:set>

                                    <c:set var="totper" value="${(ll/ssss)*100}" />
                                    <c:set var="oneper" value="${(ssss*1)/100}" />
                                    <c:set var="totalreferal" value="0.0"/> 

                                    <c:set var="doctorCommission" value="${(docCom/ssss)*100} " /> 

                                    <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">    



                                        <!-- date
                                        
                                        <c:if test="${ totper <= '20.00'}"> <c:set var="totalreferal" value="${d.comAmount} "/> </c:if>
                                        <c:if test="${ totper > '20.01' && totper < '30.01' }">
                                            <c:set var="totalreferal" value="${ docCom -((totper - 20)* oneper)} " /> 
                                        </c:if>
                                        <c:if test="${ totper > '30.00'}"> <c:set var="totalreferal" value="${0.00} "/> </c:if> 

                                        <c:if test="${ totper <= '20.00'}"> <c:set var="totalreferal" value="${d.comAmount} "/> </c:if>
                                        <c:if test="${ totper > '20.01' && totper < '30.01' }">
                                            <c:set var="totalreferal" value="${ docCom -((totper - 20)* oneper)} " /> 
                                        </c:if>
                                        <c:if test="${ totper > '30.00'}"> <c:set var="totalreferal" value="${0.00} "/> </c:if> 
                                                                                
                                                                                
                                            -->

                                        <c:choose>
                                            <c:when test="${ totper == doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > doctorCommission}">
                                                <c:set var="totalreferal" value="${0 }"/>

                                            </c:when>
                                            <c:when test="${ totper > 20}">
                                                <c:set var="totalreferal" value="${ docCom-ll}"/>

                                            </c:when>						

                                            <c:when test="${ totper <= 20 }">
                                                <c:set var="totalreferal" value="${ (docCom-(ll/2))}"/>

                                            </c:when>
                                            <c:otherwise>

                                            </c:otherwise>
                                        </c:choose>
                                    </c:if> 
                                    <tr> 
                                        <td  class="a left"><openmrs:formatDate date="${d.createdDate}" /> </td> <!-- date -->
                                        <td  class="a left"> ${d.diaPatientServiceBill.billId}   </td>  <!-- bill id -->
                                        <td  class="a left"> ${d.serviceName}   </td> <!-- investigation name -->
                                        <td  align="right" class="a right"> ${d.servicePrice}   </td>  <!-- rate -->
                                        <td  align="right" class="a right"> ${d.comAmount}     </td>  <!-- referrel amount -->
                                        <td  align="right" class="a right"> ${d.lessAmount}   </td>   <!-- discount -->
                                        <td  align="center" class="a right"  >  
                                            <fmt:formatNumber type="number" maxFractionDigits="3" value="${(ll/ssss)*100}" />
                                        </td>
                                        <td  align="right" class="a right">  
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'DUE'}">  DUE  </c:if>								
                                            <c:if test="${d.diaPatientServiceBill.billingStatus eq 'PAID'}">
                                                <fmt:formatNumber type="number" maxFractionDigits="3" value="${totalreferal}" /> 
                                            </c:if>
                                        </td>     <!-- total referrel -->
                                    </tr>
                                    <c:set var="rate" value="${rate + d.servicePrice}"/>
                                    <c:set var="refAmount" value="${refAmount + d.comAmount}"/>
                                    <c:set var="discount" value="${discount + d.lessAmount}"/>
                                    <c:set var="toRef" value="${toRef + aaa}"/>
                                    <c:set var="netTotalReferal" value="${netTotalReferal + totalreferal}"/>
                                </c:if>
                            </c:forEach>
                            <tr style="font-size:14px; font-weight:bold;"> <td colspan="3"  align="right" class="a right"> <span style="display: block;   text-align: right; padding-right:15px; font-weight:bold; color:#000;"> Total  </span> </td>
                                <td  style="text-align:right;"   class="a right" > &#2547; ${rate}  </td>
                                <td  style="text-align:right;"   class="a right"> &#2547; ${refAmount} </td>
                                <td  style="text-align:right;"   class="a right">  ${discount}  </td>
                                <td  style="text-align:right;"   class="a right"> &nbsp; </td>
                                <td  style="text-align:right;"    class="a right">  &#2547; ${netTotalReferal} </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <label style="padding-left:80%; "> MPO ID : ${q.territory} </label> <br>

                    <label style="font-family:arial;"> Kindly expedite the receipt of the bill <br><br>
                        Thanking You<br>
                        Sincerely yours, <br> <br> <br>
                        <b style="text-decoration: overline dotted black; width:100px;"> &emsp; &emsp; MANAGER &emsp;&emsp;</b>
                    </label>

                    <p style="page-break-after:always;"></p>
                </c:forEach>
            </c:if>               
        </c:if>


        <style>
            .greenText{ 
                background-color:blue;
                color:white;
                font-weight:bold;
            }
            .styled-select {
                height: 40px;
                overflow: hidden;
                width: 280px;
                cursor:pointer;
                text-align: center;
            }
            .semi-square {
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                border-radius: 5px;
                background-color: #3b8ec2;
                color: #000;
                font-size:14px;
            }
            .styled-select option {
                -webkit-border-radius:4px;
                -moz-border-radius:4px;
                border-radius:2px;
                -webkit-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
                -moz-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
                box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
                background-color: #eee;
                padding: 5px 5px;
                height:auto;
                width:100%;
            }
            .abc{
                border:1px solid #585858;
                border-collapse:collapse;
                width:100%;	
            }
            .normal{border: 0;
                    outline: none;
                    text-align:right;
                    width:100%;}
            .a{
                padding-left: 5px;
                border-bottom:1pt solid #999;
                border-right: 1px solid #585858;	
            }
            .a td{
                padding-left: 5px;
                border-bottom:1pt solid #999;
                border-right: 1px solid #585858;
            }
            .a left { text-align:center;}
            .a center {  text-align:center; }
            .a  right { text-align:right;}
        </style>
    </div>
</form>