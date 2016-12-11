<%-- 
    Document   : comView
    Created on : Mar 27, 2016, 11:28:11 AM
    Author     : Khairul
--%>
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="../includes/js_css.jsp"%>

<script type="text/javascript">
// get context path in order to build controller url
    function getContextPath() {
        pn = location.pathname;
        len = pn.indexOf("/", 1);
        cp = pn.substring(0, len);
        return cp;
    }
</script> 
<script>
    jQuery(document).ready(function() {
        jQuery('#eDate, #sDate').datepicker({yearRange: 'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});

        jQuery("#searchKey").keyup(function(event) {
            if (event.keyCode == 13) {
                getBillingQueue(1);
            }
        });

        $("#bId option").each(function() {
            $(this).attr('selected', true);
        });

        // total amount
        var result = 0;
        $('#totalBill').attr('value', function() {
            $('.unitPri').each(function() {
                if ($(this).val() !== '') {
                    result += parseFloat($(this).val());
                }
            });
            return result;
        });

        // total commission
        var resultComm = 0;
        $('#dcomm').attr('value', function() {
            $('.netamount').each(function() {
                if ($(this).val() !== '') {
                    resultComm += parseFloat($(this).val());
                }
            });
            return resultComm;
        });

        // less amount condition
        var lessEach;
        $('.lessAmCal').attr('value', function() {
            $('.lessAmCal').each(function(incon) {
                var con = incon.toString();
                var unPrice = con.concat("serPrice");
                var com = con.concat("commission");
                var l = con.concat("lessAm");
                var lA = con.concat("lessAmCal");

                ll = jQuery("#" + l).val();
                up = jQuery("#" + unPrice).val();
                c = jQuery("#" + com).val();
                var less = ((up * c) / 100);
                if (less > ll) {
                    jQuery("#" + lA).val(ll);
                }
                else {
                    jQuery("#" + lA).val(0);
                }
            });
            return lessEach;
        });

        // total less Amount
        var resultLess = 0;
        $('#lamount').attr('value', function() {
            $('.lessAmCal').each(function() {
                if ($(this).val() !== '') {
                    resultLess += parseFloat($(this).val());
                }
            });
            return resultLess;
        });

        // Doctor Net amount
        var d = $('#dcomm').val();
        var l = $('#lamount').val();
        var less = (d - l);
        var lessRound = less.toFixed(2)
        $('#docNet').val(lessRound);


    });

    function updatePrice(incon) {
        var con = incon.toString();
        var serqunid = con.concat("commission");
        var serpriid = con.concat("serPrice");
        var netAm = con.concat("netamount");
        var l = con.concat("lessAm");
        less = jQuery("#" + l).val();
        serqun = jQuery("#" + serqunid).val();
        unpri = jQuery("#" + serpriid).val();
        var ll = ((serqun * unpri) / 100);
        if (less < ll) {
            jQuery("#" + netAm).val(ll);
        }
        else {
            jQuery("#" + netAm).val("0");
        }
        //////

        var btn = con.concat("updateCommission");
        var reacom = con.concat("realCommission");
        real = jQuery("#" + reacom).val();
        if (real != serqun) {
            jQuery("#" + btn).css({"weight": "60px", "display": "inline"});
        }

        ////////
        var unPrice = con.concat("serPrice");
        var com = con.concat("commission");
        var lA = con.concat("lessAmCal");
        up = jQuery("#" + unPrice).val();
        c = jQuery("#" + com).val();
        var lessA = ((up * c) / 100);
        if (lessA > less) {
            jQuery("#" + lA).val(less);
        }
        else {
            jQuery("#" + lA).val(0);
        }

        // commission update
        var resultComm = 0;
        $('#dcomm').attr('value', function() {
            $('.netamount').each(function() {
                if ($(this).val() !== '') {
                    resultComm += parseFloat($(this).val());
                }
            });
            return resultComm;
        });

        var resultLess = 0;
        $('#lamount').attr('value', function() {
            $('.lessAmCal').each(function() {
                if ($(this).val() !== '') {
                    resultLess += parseFloat($(this).val());
                }
            });
            return resultLess;
        });
        // Doctor Net amount
        var d = $('#dcomm').val();
        var l = $('#lamount').val();
        var less = (d - l);
        var lessRound = less.toFixed(0)
        $('#docNet').val(lessRound);
    }

    function saveCommission() {
        var bill = jQuery("#bId").val();
        var paid = document.getElementById("paid").value;
        if (paid == null || paid == "")
        {
            alert("Paid Amount Empty or Zero !!!");
            $("#paid").focus();
            return false;
        }

        var comId = jQuery("#comId").val();
        var indCount = jQuery("#indCount").val();
        var sDateValue = jQuery("#sDateValue").val();
        var eDateValue = jQuery("#eDateValue").val();
        var totalBill = jQuery("#totalBill").val();
        var dcomm = jQuery("#dcomm").val();
        var lamount = jQuery("#lamount").val();
        var docNet = jQuery("#docNet").val();
        var docId = jQuery("#docId").val();
        var note = jQuery("#note").val();
        var paid = jQuery("#paid").val();
        var due = jQuery("#due").val();

        jQuery.ajax({
            type: "POST",
            url: getContextPath() + "/module/billing/rmpComSave.form",
            data: ({
                bill: bill,
                comId: comId,
                sDateValue: sDateValue,
                eDateValue: eDateValue,
                totalBill: totalBill,
                dcomm: dcomm,
                docNet: docNet,
                lamount: lamount,
                docId: docId,
                note: note,
                paid: paid,
                due: due,
                indCount: indCount
            }),
            success: function(data) {
                alert("Successfully added!");
                window.location.href = openmrsContextPath + "/module/billing/rmpComView.htm"

                //window.location.href = getContextPath() + "/module/billing/comView.htm"
                //window.location.reload();
            },
        });
    }

    function updateCommission(incon) {
        var con = incon.toString();
        var com = con.concat("commission");
        var idd = con.concat("id");
        commission = jQuery("#" + com).val();
        id = jQuery("#" + idd).val();
        //alert("a"+id);
        jQuery.ajax({
            type: "POST",
            url: getContextPath() + "/module/billing/commUpdate.htm",
            data: ({
                id: id,
                commission: commission
            }),
            success: function(data) {
                alert("Successfully added!");
                //  window.location.href = openmrsContextPath + "/module/billing/comView.htm"
                window.location.reload();
            },
            error: function() {
                alert("Successfully Paid Commission!");
                window.location.reload();
                //window.location = "compay.htm";
            }
        });
    }

    function validate() {
        if (SESSION.checkSession()) {
            var dName = document.getElementById("rmpIdName").value;
            var sDate = document.getElementById("sDate").value;
            var eDate = document.getElementById("eDate").value;

            if (dName == null || dName == "")
            {
                alert("Please Enter Doctor Name / ID!!");
                $("#rmpIdName").focus();
                return false;
            }
            else if (sDate == null || sDate == "")
            {
                alert("Please Enter Start Date!!");
                $("#sDate").focus();
                return false;
            }
            else if (eDate == null || eDate == "")
            {
                alert("Please Enter End Date !!");
                $("#eDate").focus();
                return false;
            }
        }
    }

    function dueamountcal(incon) {
        var paidamount = incon.value;
        var netamount = $('#docNet').val();
        $('#due').val(netamount - paidamount);
        var paid = document.getElementById("paid").value;
        var due = document.getElementById("due").value;
        if (due < 0)
        {
            alert("Paid Amount Grether than CH Commission Amount !!!");
            $("#paid").focus();
            $("#paid").val("");
            $("#due").val("");
            return false;
        }
    }
</script>
<input type="hidden" id="pageId" value="commissionCalPageRmp" />
<form class="form-rep-view" method="get" action="rmpComResult.htm" id="commissionCalForm" onsubmit="return validate()" >
    <div class="boxHeader1">   <strong>CH Commission Calculation</strong></div>
    <div class="box1">
        <input type="hidden" id="indCount" name="indCount" value="${diaComCalSize}" />
        <span style="font-size:14px; font-weight: bold;"> CH Id / Name : </span> 
        <input type="text" placeholder="Please Enter CH Id / Name " 
               ondblclick="this.value = '';" id="rmpIdName" name="rmpIdName" style="width:250px;"/> &nbsp;&nbsp;&nbsp;

        <select id="selectedRmpId" size="4" style="display:none;" name="selectedRmpId" ><option value="0">Please Select</option></select>
        <span style="font-size:14px; font-weight: bold;"> Start Date : </span> 
        <input type="text" placeholder="Please Enter Start Date " id="sDate" name="sDate" style="width:250px;"/> &nbsp;&nbsp;&nbsp;
        <span style="font-size:14px; font-weight: bold;"> End Date : </span>  
        <input type="text" placeholder="Please Enter End Date " id="eDate" name="eDate" style="width:250px;"/> &nbsp;&nbsp;&nbsp;
        <input type="submit" value="Get View" class="bu-normal"  /> 
        <div id="billingqueue" style="padding:4px;"></div>
    </div>
    <select id="bId" name="bId" multiple style="display:none;" />
    <c:forEach items="${listBillId}" var="a" varStatus="index">
        <option value="${a}" >${a} </option>
    </c:forEach>
</select>
<div class="box1" >
    <c:if test="${not empty drmp.id}">
        <div style="padding-left:100px; padding-bottom:7px; color:#000;"> CH Code : <span style="font-size:16px; font-weight:bold;"> ${drmp.id} </span> ||  
            CH Name : <span style="font-size:16px; font-weight:bold;"> ${drmp.name} </span>  
            <label style="float:right; padding-right:100px; font-size:14px;"> Commission Showing Date : <openmrs:formatDate date="${startDate}" /> - <openmrs:formatDate date="${endDate}" /> </label>
        </div>
        <input type="hidden" value="<%= request.getParameter("sDate") %>" id="sDateValue" name="sDateValue" /> 
        <input type="hidden" value="<%= request.getParameter("eDate") %>" id="eDateValue" name="eDateValue" />
        <input type="hidden" value="<%= request.getParameter("rmpIdName") %>" id="docId" name="docId" />
        <input type="hidden" value="2" id="docch" name="docch" />

    </c:if>
    <div class="container" style="width:90%" >
        <c:choose>
            <c:when test="${not empty diaComCal}">
                <table id="patientInfo" class="table_data table-striped text-left">     						
                    <thead class="text-left">
                        <tr>
                            <th style="align:left;"><b>Date</b></th>
                            <th><b>Bill Id</b></th>
                            <th><b>Patient Name</b></th>
                            <th><b>Investigation</b></th>
                            <th><b>Service Price</b></th>
                            <th><b>Less Amount</b></th>
                            <th><b>Commission(%)</b></th>
                            <th><b>Payable</b></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${diaComCal}" var="patient"  varStatus="index">
                            <c:set var="com" value="${patient.commission}"/>
                            <c:set var="ser" value="${patient.servicePrice}"/>
                            <c:set var="ac" value="${ (ser * com)/100 }"/>
                            <c:set var="lessAmountCal" value="${patient.lessAmount}"/>
                            <c:if test="${ lessAmountCal > ac }">
                                <c:set var="payable" value="${0 }"/>
                                <c:set var="less" value="${0.0}"/>
                            </c:if>
                            <c:if test="${ lessAmountCal < ac }">
                                <c:set var="payable" value="${ (ser * com)/100 }"/>
                                <c:set var="less" value="${patient.lessAmount}"/> 
                            </c:if>
                            <tr> 
                                <td style="display:none;"><input type="text" value="${patient.refRmpId}"  id="comId" name="comId" />
                                    <input type="text" value="${patient.id}"  id="${index.count}id" name="${index.count}id" />

                                </td>
                                <td style="border-right:1px solid #D8D8D8;"><openmrs:formatDate date="${patient.createdDate}" /></td>  
                                <td style="border-right:1px solid #D8D8D8;padding-left:10px;"> ${patient.diaPatientServiceBill.billId}  </td>
                                <td style="border-right:1px solid #D8D8D8;">${patient.patient.givenName} ${patient.patient.familyName}  </td>
                                <td style="border-right:1px solid #D8D8D8;"> ${patient.serviceName}  </td>
                                <td style="border-right:1px solid #D8D8D8; text-align:right;"> 
                                    <input type="value" id="${index.count}serPrice" name="${index.count}serPrice" class="unitPri" readOnly="true"
                                           value="${patient.servicePrice}" />  </td>

                                <td style="border-right:1px solid #D8D8D8; display:none; text-align:center;"> 
                                    <input type="value" id="${index.count}lessAm" name="${index.count}lessAm" class="lessAm" readOnly="true"
                                           value="${patient.lessAmount}" />
                                </td>
                                <td style="border-right:1px solid #D8D8D8; text-align:center;"> 
                                    <input type="value" id="${index.count}lessAmCal" name="${index.count}lessAmCal" class="lessAmCal" readOnly="true" value="${less}"  />
                                </td>
                                <td style="border-right:1px solid #D8D8D8; text-align:center;">
                                    <input type="value" id="${index.count}commission" name="${index.count}commission" class="commission"  
                                           value="${patient.commission}" onkeyup="updatePrice(${index.count});"/>

                                    <input type="hidden" id="${index.count}realCommission" value="${patient.commission}" />

                                    <input type="button" id="${index.count}updateCommission" class="bs" style="display:none;" value="Update" onclick="updateCommission(${index.count});" />

                                </td>

                                <td style="border-right:1px solid #D8D8D8; text-align:center;"> 
                                    <input type="value" id="${index.count}netamount" name="${index.count}netamount" class="netamount"
                                           onClick="updatePrice(${index.count});" readOnly="true" value="${payable}" />    </td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <span style="color:red">No Bill Found.</span>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<br>
<c:if test="${not empty diaComCal}">

    <div  style="margin-left:100px;">
        <span style="font-size:16px; font-weight:bold; color:#000;">Total Service Amount    : </span>  
        <input type="value" id="totalBill" name="totalBill"  readOnly="true" 
               style="width:150px; text-align:right;  color:blue;  font-size:18px; font-weight:bold; background-color:#fff; "/> 
        <span style="font-size:16px; padding-left:50px; font-weight:bold; color:#000;">Total Payable Amount : &nbsp; </span>
        <input type="value" id="dcomm" name="dcomm"  readOnly="true" style="width:150px; text-align:right;  color:blue;  font-size:18px; font-weight:bold; background-color:#fff; "/>  &emsp;&emsp;
        <span style="font-size:16px; font-weight:bold; color:#000;">Total Less Amount : </span> &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="value" id="lamount" name="lamount"  readOnly="true" style="width:150px; text-align:right;  color:blue;  font-size:18px; font-weight:bold; background-color:#fff; "/> 
        <br><br>
        <span style="font-size:16px; padding-left: 0px; font-weight:bold; color:#000;">CH Commission : </span> &emsp;  &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="value" id="docNet" name="docNet"  readOnly="true" style="width:150px; height:35px; text-align:right;  color:green;  font-size:20px; font-weight:bold; background-color:#fff;"/> 
        &emsp;&emsp;&emsp;
        <span style="font-size:16px; padding-left: 0px; font-weight:bold; color:#000;">Paid Amount : </span> &emsp;  &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="value" id="paid" name="paid" style="width:150px; text-align:center; height:35px; color:red;  font-size:18px; font-weight:bold; background-color:#fff;"
               onkeyup="dueamountcal(this)" onkeypress="return isNumberKey(event)"	/>
        &emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
        <span style="font-size:16px; padding-left: 0px; font-weight:bold; color:#000;">Due Amount : </span> &emsp;  &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="value" id="due" name="due" style="width:150px; text-align:center;  color:blue;  font-size:18px; font-weight:bold; background-color:#fff;" />
    </div>
    <br>
    <textarea style="border-radius:10px 2px 10px 2px; height:50px; width:45%; padding:5px; font-size:18px; line-height: 180%; margin-left:100px;" placeholder="note"
              type="text" id="note" name="note"></textarea> &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="bs" value="Save" onclick="saveCommission();" /> &nbsp;&nbsp;&nbsp; 
    <input type="button" class="bs" id="printbill" value="Print" onClick="printDiv3();"  /> 
</c:if>
&emsp; &emsp; <input type="button" class="bs" value="Back" onclick="back();" />
</form>

<form>
    <style>
        .ac{
            padding-left: 5px;
            border-bottom:1pt solid #000;
            border-right: 1px solid #000;	
        }
        .btd{
            padding-left: 5px;
            border-bottom:1pt solid #000;
            border-right: 1px solid #000;
        }
        .le-al { text-align:left; padding-left: 5px;}
        .center {  text-align:center; }
        .right { text-align:right;}

    </style>
    <!-- Print Form -->

    <div style="display:none; font-size:14px;"   id="p">
        <c:if test="${not empty diaComCal}">
            <center> <b style="font-size:18px;"> BILL </b> </br> 
                Period :  <%= request.getParameter("sDate") %> - <%= request.getParameter("eDate") %>
            </center> <br>
            <b> Referral  :  CH ${drmp.id}  &emsp;&emsp;&emsp;  ${drmp.name} </b> <br> 
            <c:if test="${not empty drmp.address}" > <b> Address : </b> ${drmp.address} </c:if> </br> &nbsp;
                <table style=" font-size:12px;  border-collapse: collapse; border :1pt solid #000; width: 100%;  font-family:arial; line-height:20px;"  >       						
                    <thead>
                        <tr>
                            <th width="7%"  style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px; height:20px;"  ><b>Voucher Date</b></th>
                            <th width="7%"  style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px;" ><b>Voucher No</b></th>
                            <th width="20%;" style="border-bottom:1pt solid #000;  border-right: 1px solid #000; padding-left: 5px; text-align:left;"  ><b>Patient Name</b></th>
                            <th width="40%;"  style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px; text-align:left;" ><b>Investigation Name</b></th>
                            <th width="10%"   style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px; " ><b>Rate (Tk)</b></th>
                            <th width="10%;"  style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px;"  ><b>Discount (Tk)</b></th> 
                            <th width="10%;"   style="border-bottom:1pt solid #000;  border-right: 1px solid #000;	padding-left: 5px;"><b> Referral (Tk)</b></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:set var="rate" value="${0}"/> 
                    <c:set var="refferel" value="${0}"/> 
                    <c:set var="servicePrice1" value="${0}"/> 
                    <c:set var="refferelAmount" value="${0}"/> 
                    <c:forEach items="${diaComCal}" var="patient"  varStatus="index">
                        <c:set var="com" value="${patient.commission}"/>
                        <c:set var="ser" value="${patient.servicePrice}"/>
                        <c:set var="ac" value="${ (ser * com)/100 }"/>
                        <c:set var="lessAmountCal" value="${patient.lessAmount}"/> 
                        <c:if test="${ lessAmountCal > ac }">
                            <c:set var="payable" value="${0.0}"/>
                            <c:set var="less" value="${0.0}"/>
                        </c:if>
                        <c:if test="${ lessAmountCal < ac }">
                            <c:set var="payable" value="${ (ser * com)/100 }"/>
                            <c:set var="less" value="${patient.lessAmount}"/> 
                        </c:if>
                        <tr> 
                            <td   style="padding-left: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000;" >
                                <openmrs:formatDate date="${patient.createdDate}" /> </td>  
                            <td   style="padding-left: 10px; border-bottom:1pt solid #000; border-right: 1px solid #000;" > ${patient.diaPatientServiceBill.billId}  </td>
                            <td   style="padding-left: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000;"  >${patient.patient.givenName} ${patient.patient.familyName}  </td>
                            <td  style="padding-left: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000;" > ${patient.serviceName}  </td>
                            <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right;" >  ${patient.servicePrice} </td>
                            <td   style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right;" > ${less} </td>
                            <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right;" > ${payable}  </td>
                        </tr>
                        <c:set var="rate" value="${rate + payable}"/>
                        <c:set var="servicePrice1" value="${servicePrice1 + ser }"/>
                        <c:set var="refferel" value="${refferel + less}"/>
                        <c:set var="refferelAmount" value="${ rate - refferel}"/> 

                    </c:forEach>
                    <tr > <td colspan="4" style="padding-left: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; " >
                            <span style="display: block;   text-align: right; padding-right:15px; font-size:16px; font-weight:bold; color:#000;"> Total  </span> </td>
                        <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right; font-size:14px;"  >  ${servicePrice1} </td>
                        <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right; font-size:14px;"    >  ${refferel}  </td>
                        <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000; text-align:right; display:none;"   class="a right"> <input type="value" id="serTotal" value=" " class="normal" /> </td>
                        <td  style="padding-right: 5px; border-bottom:1pt solid #000; border-right: 1px solid #000;text-align:right; font-size:14px;"    > ${rate}  </td>
                    </tr>

                    <tr>
                        <td colspan="4" style="padding-right: 10px; border-bottom:1pt solid #000; height:30px;
                            border-right: 1px solid #000; text-align: right; font-size:16px; font-weight:bold; color:#000; "> Referral Amount (tk) </td>
                        <td  colspan="3" style=" border-bottom:1pt solid #000; height:30px; padding-left: 10px;
                             border-right: 1px solid #000; font-size:16px; font-weight:bold;  color:#000; "> ${refferelAmount} </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <label style="padding-left:80%; "> MPO ID : ${drmp.territory} </label> <br>

            <label style="font-family:arial;"> Kindly expedite the receipt of the bill <br><br>
                Thanking You<br>
                Sincerely yours, <br> <br> <br>
                <b style="text-decoration: overline dotted black; width:100px;"> &emsp; &emsp; MANAGER &emsp;&emsp;</b>
            </label>
        </c:if>
        <c:if test="${ empty diaComCal}">
            <span style="color:red">No Bill Found.</span>
        </c:if>
    </div>
</form> 

<script>
    function isNumberKeyDot(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        //if (charCode > 31 && (charCode < 48 || charCode > 57))
        if (charCode > 31 && (charCode < 45 || charCode > 57))
            return false;
        return true;
    }
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
    function back() {
        window.location = "reportsView.form";
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
        // jQuery("#billPrint").submit();
        // window.location = "directbillingqueue.form";
    }
</script>