<%-- 
    Document   : printBill
    Created on : Nov 11, 2015, 2:17:26 PM
    Author     : khairul
--%>
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="../includes/js_css.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<br>
<form method="get" action="directbillingqueue.form" id="billPrint">
    <input type="hidden" id="patientId" name="patientId" value="${patient.id}" />
    <input type="hidden" id="billId" name="billId" value="${billId}" />
    <div style="width: 1280px; font-size: 0.8em">
        <style>
            table.kha {
                font-family:arial;
                background-color: #CDCDCD;
                margin:10px 0pt 15px 150px;
                font-size: 8pt;
                width: 70%;
                text-align: left;
            }
            table.kha tbody td {
                color: #3D3D3D;
                padding: 4px;
                background-color: #FFF;
                vertical-align: top;
            }
            table.kha tbody tr.odd td {
                background-color:#F0F0F6;
            }
            .printfont {
                font-family: "Dot Matrix Normal", Arial, Helvetica, sans-serif;
                font-style: normal;
                font-size: 16px;
            }
        </style>
        <table width="60%" class="kha" style="margin-left: 60px;">
            <tr>
                <td><strong>Patient ID :</strong> &nbsp;<span style="font-size:14px; font-weight:bold;">
                        ${patientSearch.identifier} </span></td>
                <td><strong>Date :</strong> &nbsp;<input type="text" style="border:none; font-size:13px;" value="${dpsb.createdDate}"  /></td>
            </tr>
            <tr>
                <td><strong>Patient Name :</strong> &nbsp;
                    <span style="font-size:15px; font-weight:bold;"> ${patient.givenName}&nbsp;&nbsp;${patient.middleName}&nbsp;&nbsp;
                        ${patient.familyName} </span></td>
                <td><strong> Age :</strong> &nbsp;&nbsp;&nbsp;&nbsp;${age}</td>
            </tr>
            <tr>
                <td colspan="1">Phone Number : <b>${phone}</b> </td>   
                <td>Gender : <c:if test="${patient.gender eq 'M'}"> <b> Male </b> </c:if> 
                    <c:if test="${patient.gender eq 'F'}"> <b> Female </b> </c:if>
                    </td>
                </tr>
            <c:if test="${not empty add.address1}">
                <tr>
                    <td colspan="2">Patient Address : <b> ${add.address1},  ${add.cityVillage}, ${add.countyDistrict} </b> </td>
                </tr> 
            </c:if>	
            <tr> 
                <td><span style="font-size:14px; font-weight:bold;"> Referred Dr :   ${docInfo.doctorName}  </span> </td>
                <td>Bill Id: <span style="font-weight:bold; font-size:18px; color:red;"> ${billId} </span> </td>
            </tr>
        </table>
        <table width="60%"  class="kha" style="margin-left: 60px;">
            <tr >
                <td style="text-align: center; background:#cdc;"><span class="span">S.No</span></td>
                <td style="text-align: center; background:#cdc;"><span class="span">Service Name</span> </td>
                <th style="text-align: center; background:#cdc;"><span class="span">Qunatity</span></th>
                <td style="text-align: center; background:#cdc;"><span class="span">Price</span></td>
            </tr>
            <c:forEach var="sol" items="${diaBillItemList}" varStatus="index">
                <c:choose>
                    <c:when test="${index.count mod 2 == 0}">
                        <c:set var="klass" value="odd" />
                    </c:when>
                    <c:otherwise>
                        <c:set var="klass" value="even" />
                    </c:otherwise>
                </c:choose>
                <tr class="${klass}" id="">
                    <td align="center">${index.count}</td>
                    <td align="left"> ${sol.name}

                    </td>
                    <td align="left">
                        <input type="text" style="width:40px; border:none; font-size:14px;" id="service" name="service"
                               value="${sol.quantity}" readOnly="true">
                    </td>
                    <td align="right">
                        <input type="text" id="unitprice" name="unitprice" class="normaltext" style="width:150px; "
                               size="10" value="${sol.amount}" class="unitPri" readOnly="true">
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="3" align="right" ><span style="font-size:16px; font-weight:bold; ">Total Bill :</span> </td>
                <td align="right" > <span style="font-size:16px; font-weight:bold;">TK</span>
                    <input type="text" id="totalBill" name="totalBill" value="${dpsb.actualAmount}"  readOnly="true" onclick="alert('This Field Read Only!!!!');"
                           style="width:100px; text-align:right;  color:blue;  font-size:18px; font-weight:bold; "/>
                </td>
            </tr>
        </table>
        <br>
        <style>
            table.k {
                font-family:arial;
                background-color: #CDCDCD;
                margin:10px 0pt 15px 150px;
                font-size: 10pt;
                width: 70%;
                text-align: left;
            }
            table.k tbody td {
                color: #3D3D3D;
                padding: 4px;
                background-color: #FFF;
                vertical-align: top;
            }
            table.k tbody tr.odd td {
                background-color:#F0F0F6;
            }
            .bu{
                padding: 6px 15px 6px 18px;
                background: #3EB1DD;
                border: none;
                color: #08088A;
                border-radius:4px;
                box-shadow: 1px 1px 1px #4C6E91;
                -webkit-box-shadow: 1px 1px 1px #4C6E91;
                -moz-box-shadow: 1px 1px 1px #4C6E91;
                text-shadow: 3px 1px 5px #ffffff;
                font-size:14px;
                font-weight:bold;
                cursor:pointer;
            }
            .bu:hover{
                background: white;
                color:green;
                text-shadow: 3px 1px 5px 4px #F7FE2E;
                box-shadow: 0px 5px 5px 5px #4C6;
                font-weight:bold;}

        </style>
        <label style="float:left; width:450px;">
            <table  class="k" style="margin-left: 60px; background-color: #CDCDCD;">
                <tr>
                    <td style=" background-color: #FFF;"   align="right"><b> Payable : &nbsp;</b></td>
                    <td   style="width:60px;"> <input type="text" id="BillAmount" name="BillAmount" 
                                                      style="width:160px; border:none; text-align:right;" value="${dpsb.amount}" readOnly="true"  /></td>
                </tr>
                <tr>
                    <td  align="right"><b> Discount : &nbsp;</b></td>
                    <td    style="width:60px;"> <input type="text" id=" " name=" " style="width:160px; border:none; text-align:right;" value="${dpsb.discountAmount}" readOnly="true"  /></td>
                </tr>

                <tr>
                    <td align="right"><b> Cash paid : &nbsp;</b></td>
                    <td  style="width:60px;"> <input type="text" id="cashpaid" name="cashpaid" style="width:160px; border:none; text-align:right;" value="${paid}.00" readOnly="true"  /></td>
                </tr>
                <tr>
                    <td align="right"><b> Due : &nbsp;</b></td>
                    <td  style="width:60px;"> <input type="text" id=" " name=" " style="width:160px; border:none; text-align:right;" value="${dpsb.dueAmount}" readOnly="true"  /></td>
                </tr>
                <!--
<tr>
    <td align="right"><b> Due Paid : &nbsp;</b></td>
    <td  style="width:60px;"> <input type="text" id=" " name=" " style="width:160px; border:none; text-align:right;" value=" " readOnly="true"  /></td>
</tr> -->
            </table>
            <br><br>
            <span class="printfont" style="margin-left:60px;" > Bill Officer : ${billOfficer.givenName}   ${billOfficer.familyName} </span>  
        </label>
        <input type="hidden" id="total" />
        <label style="float:left; margin-left:-25px;  width:560px;">
            <table style="width:65%" class="k"> 
                <tr>
                    <th><b>Sl.No</b></th>
                    <th><b> Bill Collect Id </b></th>
                    <th><b>Date</b> </th>
                    <th><b> Paid </b> </th>
                </tr>
                <c:forEach var="bList" items="${diaBillICollectList}" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td style=" background-color: #FFF;" > ${bList.billCollectId} </td>
                        <td><openmrs:formatDate date="${bList.createdDate}" /></td>
                        <td align="right">${bList.paidAmount} </td>
                    </tr>
                </c:forEach>

            </table>
            <br>

            <input type="text" value="${dpsb.billingStatus}"
                   style="border:1px solid; height:40px; font-size:20px; width:100px; border-radius:20px; text-align:center;" /> <br><br>

            <span class="printfont" >Received with thanks : &nbsp;</span><span id="totalValue1" class="printfont1"> </span> <span class="printfont1"> Taka only </span> <br><br>

            <input type="submit" class="bu" value="Print" onClick="printDiv2();"  /> <br>

        </label>

    </div>
</form>

<!-- Print Div -->


<div id="printDiv" class="hidden"
     style="width: 1280px; font-size: 0.7em; padding-top:400px; ">

    <style>
        .hidden{
            display: none;
            color:black;
        }
        .span{
            color:black;	
            font-size:16px;
            font-weight:bold;	
        }
        .span1{
            color:black;	
            font-size:13px;
            font-weight:bold;	
        }
        table.kha1 {
            font-family:arial;
            margin:10px 0pt 15px 150px;
            color:black;
            font-size: 13px;
            width: 100%;
            text-align: left;
        }
        table.kha1 tbody td {
            color:black;
            padding: 3px;
            background-color: #FFF;
            vertical-align: top;
            white-space:nowrap;
        }  
        table.kha1 tbody tr.odd td {
            background-color:#F0F0F6;
            color:black;
        }

    </style>
    <!--Patient Info -->
    <br><br><br>
    <!-- Customer Copy -->
    <table class="kha1" style="margin-left: 15px;">
        <tr>
            <td> <img height="40px;" src="${pageContext.request.contextPath}/barcode/${billId}.png" />   </td>
            <td align="center"> <input type="text" value="Customer Copy" style="border: 2px solid #ccc; border-radius:20px; font-size:14px; text-align:center;" />   </td>
            <td>  <img height="40" src="${pageContext.request.contextPath}/barcode/${patientSearch.patientId}.png" />   </td>
        </tr>
        <tr style="padding-bottom: -1em;">
            <td><span style="font-weight:bold; font-size:14px; color:black;"> Bill No. :   ${billId} </span>   </td>
            <td style="color:black;"><strong>Date  :  &nbsp; <fmt:formatDate value="${dpsb.createdDate}" pattern="dd/MM/yyyy HH:mm:ss" /> </strong>  </td>

            <td> <span style="font-weight:bold; font-size:14px; color:black;"> Patient ID :   ${patientSearch.identifier}  </span> </td>
        </tr>
        <tr style="padding-top:-10px;">
            <td colspan="2"> <b style="font-size:15px;"> Name &nbsp;&nbsp; : </b>   &nbsp;<span style="font-size:15px; font-weight:bold; color:black; text-transform: uppercase;" >   
                    ${patient.givenName}&nbsp;&nbsp;${patient.middleName}&nbsp;&nbsp; ${patient.familyName} </span></td>
            <td> <b>(ORIGINAL COPY)</b> </td>
        </tr>
        <tr>  
            <td><span style="font-size:14px; color:black;"> Age &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;: &nbsp; ${age} </span> </td>
            <td>Sex : <c:if test="${patient.gender eq 'M'}"> <b> Male </b> </c:if> 
                <c:if test="${patient.gender eq 'F'}"> <b> Female </b> </c:if>
                </td>
                <td colspan="1"><span style="font-size:14px;">Contact No. :  ${phone} </span> </td> 
        </tr>
        <tr>
            <td colspan="2"><span style="font-size:14px; font-weight:bold;"> Ref. By :   ${docInfo.doctorName}  </span> </td>
            <td colspan="1"> M.C.   </td> 
        </tr>  

    </table>

    <!--Service Info -->

    <table style="margin-left:15px;  margin-top:-10px; border-collapse: collapse; width: 98%;  font-family:arial;" >
        <tr style="border-bottom:1pt solid #999;" >
            <td align="left"><span class="span1">Code</span></td>
            <td  align="left"><span class="span1">Test Name</span> </td>
            <td  align="right"><span class="span1">Price(Tk.)</span></td>
        </tr>
        <c:forEach var="sol" items="${diaBillItemList}" varStatus="index">
            <tr style="border-bottom:1pt solid #999; font-size:12px;" >
                <td align="left"> ${sol.service.shortName}</td>
                <td align="left" style="color:black;"> ${sol.name} </td>
                <td align="right"><input type="text" style="width:150px; font-size:13px; text-align: right;  border: none;"
                                         id="${index.count}unitprice" name="${index.count}unitprice"
                                         size="7" value="${sol.amount}" class="unitPri" readOnly="true"></td>
            </tr>
        </c:forEach>
        </tr>
        <c:if test="${not empty dpsb.comment}">	<tr style="border-bottom:1pt solid #999; font-size:13px;" >
                <td colspan="3"> Remarks : ${dpsb.comment}  </td> 
            </tr> </c:if>
            <tr> 
                <td colspan="2" style="color:black; padding:7px 0 0 0 ; ">  &nbsp;   </td>
                <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;"> Sub Total Tk. <span style="float:right;"> ${dpsb.actualAmount} </span>  </td> 
        </tr>

        <tr >
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;"> +VAT Tk. <span style="float:right;"> 0.00 </span>  </td> 
        </tr>

        <tr rowspan="2">
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">- Discount Tk. <span style="float:right;"> ${dpsb.discountAmount}</span>  </td> 
        </tr>
        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Total Paid Tk. <span style="float:right;" id="tp">  </span>  </td> 
        </tr>

        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Net Payable Tk. <span style="float:right;"> ${dpsb.dueAmount}</span>  </td> 
        </tr>
        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Due Paid Tk. <span style="float:right;"> ${paid}.00</span>  </td> 
        </tr>

    </table>
    <br>
    <style>
        table.k1 {
            font-family:arial;
            background-color: #CDCDCD;
            margin:10px 0pt 15px 5px;
            font-size: 12px;
            width: 60%;
            text-align: left;
        }
        table.k1 tbody td {
            color: black;
            padding: 3px;
            background-color: #FFF;
            vertical-align: top;
        }
        table.k1 tbody tr.odd td {
            background-color:#F0F0F6;
        }
        .printfont1 {
            font-family: "Dot Matrix Normal", Arial, Helvetica, sans-serif;
            font-style: normal;
            font-size: 14px;
            text-transform: uppercase;
        }
        .vt{
            writing-mode:tb-rl;
            transform: rotate(180deg);
            white-space:nowrap;
            display:block;
            bottom:0;
            width:20px;
            height:20px;
            font-size:12px;
            margin-left:-25px;
            text-align:center;
            color:#A4A4A4;
        }
    </style>

    <input type="hidden" id="total" />

    <label style="float:left; margin-left:15px; margin-top:-100px;  width:560px;">
        <span class="printfont" ><b style="font-size:16px;"> &nbsp; Due Paid :  &nbsp; ${paid}.00</b></span> &emsp;&emsp;&emsp;&emsp;
        <input type="text" value="${dpsb.billingStatus}"
               style="border:1px solid; height:40px;  font-size:20px; width:100px; border-radius:20px; text-align:center;" /> <br> <br>
        <span>&nbsp; Received with thanks : &nbsp;</span><span id="totalValue2" class="printfont1"> </span> <span class="printfont1">Taka only</span>
        <br>

        <table style="width:65%" class="k1">
            <tr>
                <td><b>Sl.No</b></td>
                <!--  <td><b>Coll. Id </b></td> -->
                <td><b>Date / Time</b> </td>
                <td><b> Paid </b> </td>
                <td><b> User </b> </td>
            </tr>
            <c:forEach var="bList" items="${diaBillICollectList}" varStatus="index">
                <tr>
                    <td>${index.count}</td>
                  <!--  <td style=" background-color: #FFF;" > ${bList.billCollectId} </td> -->
                    <td> <fmt:formatDate value="${bList.createdDate}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
                    <td align="right">${bList.paidAmount} </td>
                    <td align="right">${bList.user} </td>
                </tr>
            </c:forEach>
        </table>
        <span class="vt">Powered By: Crystal Technology Bangladesh Ltd. </span>
        <br>
        <span class="printfont" style="margin-left:-10px;" >&nbsp; Bill Officer : ${billOfficer.givenName}   ${billOfficer.familyName} </span>

    </label>

    <input type="hidden" id="total" />

    <p style="page-break-after:always;"></p>
    <br><br><br>
    <!-- Office Copy -->
    <table class="kha1" style="margin-left: 15px;">
        <tr>
            <td> <img height="40px;" src="${pageContext.request.contextPath}/barcode/${billId}.png" />   </td>
            <td align="center"> <input type="text" value="Office Copy" style="border: 2px solid #ccc; border-radius:20px; font-size:14px; text-align:center;" />   </td>
            <td>  <img height="40" src="${pageContext.request.contextPath}/barcode/${patientSearch.patientId}.png" />   </td>
        </tr>
        <tr style="padding-bottom: -1em;">
            <td><span style="font-weight:bold; font-size:14px; color:black;"> Bill No. :   ${billId} </span>   </td>
            <td style="color:black;"><strong>Date  :  &nbsp; <fmt:formatDate value="${dpsb.createdDate}" pattern="dd/MM/yyyy HH:mm:ss" /> </strong>  </td>

            <td> <span style="font-weight:bold; font-size:14px; color:black;"> Patient ID :   ${patientSearch.identifier}  </span> </td>
        </tr>
        <tr style="padding-top:-10px;">
            <td colspan="2"> <b style="font-size:15px;"> Name &nbsp;&nbsp; : </b>   &nbsp;<span style="font-size:15px; font-weight:bold; color:black; text-transform: uppercase;" >   
                    ${patient.givenName}&nbsp;&nbsp;${patient.middleName}&nbsp;&nbsp; ${patient.familyName} </span></td>
            <td> <b>(ORIGINAL COPY)</b> </td>
        </tr>
        <tr>  
            <td><span style="font-size:14px; color:black;"> Age &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;: &nbsp; ${age} </span> </td>
            <td>Sex : <c:if test="${patient.gender eq 'M'}"> <b> Male </b> </c:if> 
                <c:if test="${patient.gender eq 'F'}"> <b> Female </b> </c:if>
                </td>
                <td colspan="1"><span style="font-size:14px;">Contact No. :  ${phone} </span> </td> 
        </tr>
        <tr>
            <td colspan="2"><span style="font-size:14px; font-weight:bold;"> Ref. By :   ${docInfo.doctorName}  </span> </td>
            <td colspan="1"> M.C.   </td> 
        </tr>  
    </table>

    <!--Service Info -->
    <table style="margin-left:15px;  margin-top:-10px; border-collapse: collapse; width: 98%;  font-family:arial;" >
        <tr style="border-bottom:1pt solid #999;" >
            <td align="left"><span class="span1">Code</span></td>
            <td  align="left"><span class="span1">Test Name</span> </td>
            <td  align="right"><span class="span1">Price(Tk.)</span></td>
        </tr>
        <c:forEach var="sol" items="${diaBillItemList}" varStatus="index">
            <tr style="border-bottom:1pt solid #999; font-size:12px;" >
                <td align="left"> ${sol.service.shortName}</td>
                <td align="left" style="color:black;"> ${sol.name} </td>
                <td align="right"><input type="text" style="width:150px; font-size:13px; text-align: right;  border: none;"
                                         id="${index.count}unitprice" name="${index.count}unitprice"
                                         size="7" value="${sol.amount}" class="unitPri" readOnly="true"></td>
            </tr>
        </c:forEach>
        </tr>
        <c:if test="${not empty dpsb.comment}">	<tr style="border-bottom:1pt solid #999; font-size:13px;" >
                <td colspan="3"> Remarks : ${dpsb.comment}  </td> 
            </tr> </c:if>
            <tr> 
                <td colspan="2" style="color:black; padding:7px 0 0 0 ; ">  &nbsp;   </td>
                <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;"> Sub Total Tk. <span style="float:right;"> ${dpsb.actualAmount} </span>  </td> 
        </tr>
        <tr >
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;"> +VAT Tk. <span style="float:right;"> 0.00 </span>  </td> 
        </tr>
        <tr rowspan="2">
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">- Discount Tk. <span style="float:right;"> ${dpsb.discountAmount}</span>  </td> 
        </tr>
        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Total Paid Tk. <span style="float:right;" id="tp1">  </span>  </td> 
        </tr>

        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Net Payable Tk. <span style="float:right;"> ${dpsb.dueAmount}</span>  </td> 
        </tr>

        <tr>
            <td colspan="2" style="color:black;">  &nbsp; </td>
            <td  colspan="1" style="color:black; border-bottom:1pt dashed #999; font-size:14px;">Due Paid Tk. <span style="float:right;"> ${paid}.00</span>  </td> 
        </tr>
    </table>
    <br>
    <input type="hidden" id="total" />

    <label style="float:left; margin-left:15px; margin-top:-100px;  width:560px;">
        <span class="printfont" ><b style="font-size:16px;"> &nbsp; Due Paid :  &nbsp; ${paid}.00</b></span> &emsp;&emsp;&emsp;&emsp;
        <input type="text" value="${dpsb.billingStatus}"
               style="border:1px solid; height:40px;  font-size:20px; width:100px; border-radius:20px; text-align:center;" /> <br> <br>
        <span>&nbsp; Received with thanks : &nbsp;</span><span id="totalValue3" class="printfont1"> </span> <span class="printfont1">Taka only</span>
        <br>

        <table style="width:65%" class="k1">
            <tr>
                <td><b>Sl.No</b></td>
                <!--  <td><b>Coll. Id </b></td> -->
                <td><b>Date / Time</b> </td>
                <td><b> Paid </b> </td>
                <td><b> User </b> </td>
            </tr>
            <c:set var="sum" value="${0}"/> 
            <c:forEach var="bList" items="${diaBillICollectList}" varStatus="index">
                <tr>
                    <td>${index.count}</td>
                  <!--  <td style=" background-color: #FFF;" > ${bList.billCollectId} </td> -->
                    <td> <fmt:formatDate value="${bList.createdDate}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
                    <td align="right">${bList.paidAmount} </td>
                    <td align="right">${bList.user} </td>
                </tr>
                <c:set var="sum" value="${sum + bList.paidAmount}"/> 
            </c:forEach>
        </table>
        <input type="value" id="totPaid" value="${sum}" class="normal" /> 

        <span class="vt">Powered By: Crystal Technology Bangladesh Ltd. </span>
        <br>
        <span class="printfont" style="margin-left:-10px;" >&nbsp; Bill Officer : ${billOfficer.givenName}   ${billOfficer.familyName} </span>
    </label>

    <input type="hidden" id="total" />
    <script>
        function printDiv2() {
            jQuery("#billPrint").mask("<img src='" + openmrsContextPath + "/moduleResources/billing/spinner.gif" + "'/>&nbsp;");
            var printer = window.open('left=0', 'top=0', 'width=300,height=300');
            printer.document.open("text/html");
            printer.document.write(document.getElementById('printDiv').innerHTML);
            printer.print();
            printer.document.close();
            printer.window.close();
            //jQuery("#billPrint").submit();
            window.location = "directbillingqueue.form";
        }
        jQuery(document).ready(function() {
            var paid = $('#cashpaid').val();
            $('#total').val(paid);
            jQuery("#totalValue1").html(toWords(jQuery("#total").val()));
            jQuery("#totalValue2").html(toWords(jQuery("#total").val()));
            jQuery("#totalValue3").html(toWords(jQuery("#total").val()));


            var p = jQuery("#totPaid").val();
            jQuery("#tp").html(p);
            jQuery("#tp1").html(p);
        });

        function back() {
            window.location = "directbillingqueue.form";
        }
    </script>

</div>


