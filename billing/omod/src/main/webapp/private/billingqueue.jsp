<%-- 
    Document   : billingqueue
    Created on : Oct 19, 2015, 9:06:39 PM
    Author     : khairul
--%>
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="../includes/js_css.jsp"%>
<br>

<script type="text/javascript">
// get context path in order to build controller url
    function getContextPath() {
        pn = location.pathname;
        len = pn.indexOf("/", 1);
        cp = pn.substring(0, len);
        return cp;
    }
</script>

<script type="text/javascript">
    currentPage = 1;
    if (SESSION.checkSession()) {
        jQuery(document).ready(function() {
            jQuery('#date').datepicker({yearRange: 'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});

            jQuery("#rs").hide();

            jQuery("#searchKey").keyup(function(event) {
                if (event.keyCode == 13) {
                    getBillingQueue(1);
                }
            });

            jQuery("#searchInSystem").keyup(function(event) {
                if (event.keyCode == 13) {
                    getPatientInSystem(1);
                }
            });

            jQuery("#voidbill").keyup(function(event) {
                if (event.keyCode == 13) {
                    voidrefchange();
                }
            });

            jQuery("#billId", "#billSearch").keyup(function(event) {
                if (event.keyCode == 13) {
                    jQuery("#billSearch").ajaxSubmit();
                }
            });
            function find() {
                jQuery("#billSearch").ajaxSubmit();
            }
        });
    }

    function getBillingQueue(currentPage) {
        jQuery("#billingqueue").show();
        this.currentPage = currentPage;
        var date = jQuery("#date").val();
        var searchKey = jQuery("#searchKey").val();
        jQuery.ajax({
            type: "GET",
            url: getContextPath() + "/module/billing/getbillqueue.form",
            data: ({
                date: date,
                searchKey: searchKey,
                currentPage: currentPage
            }),
            success: function(data) {
                jQuery("#rs").show();
                jQuery("#billingqueue").html(data);
                jQuery("#patientqueue").hide();
            },
        });
    }

    function getPatientInSystem(currentPage) {
        $('#abc').show();
        jQuery("#patientqueue").show();
        this.currentPage = currentPage;
        var searchKey = jQuery("#searchInSystem").val();
        jQuery.ajax({
            type: "GET",
            url: getContextPath() + "/module/billing/getPatientInSystem.form",
            data: ({
                searchKey: searchKey,
                currentPage: currentPage
            }),
            success: function(data) {
                jQuery("#rs").show();
                jQuery("#patientqueue").html(data);
                jQuery("#billingqueue").hide();
                $('#abc').hide();
            },
        });
    }
    function reset() {
        jQuery("#date").val("${currentDate}");
        jQuery("#searchKey").val("");
    }
    function billSearch() {
        var url = "billSearch.form?&KeepThis=true&TB_iframe=true&width=900&height=600";
        tb_show("Search Bill", url);
        ///url = "showAllDiagnosis.htm?patientId="+patientId+"&opdId="+opdId+"&queueId="+queueId+"&referralId="+referralId+"&keepThis=false&TB_iframe=true&height=600&width=1000";
    }
    function voidrefchange() {
        var voidbill = jQuery("#voidbill").val();
        window.location.href = openmrsContextPath + "/module/billing/voidrefchange.htm?voidbill=" + voidbill;
    }

</script> 
<%
String msg = null;
 msg = request.getParameter("msg") ;
if (msg != null) { msg = msg;}
else {msg ="";} %> 
<% if (msg != "") {%>
<h4 style="background-color:#F5F6CE; text-align:left; color:000; height:30px; border: 1px dashed #BDBDBD; padding-left:10px; padding-top:3px;" > <%= msg%>  </h4>
<% }%>

<form class="kha-due boxHeader" id="billSearch" action="searchBill.htm" method="GET">
    <h1 style="font-size:15px;"> &#9899; Due Collect &emsp; &#9899; Reprint Invoice &emsp;&emsp;&emsp;&emsp;&emsp; &#9899; Void Bill &emsp; &#9899; Ref Change </h1>
    &nbsp;
    <div class="box" width="100%">  
        <span style="font-size:12px; font-weight: bold;"> Bill ID : </span> 
        <input type="value" placeholder="Due amount Collect by Id" id="billId" name="billId" style="width:250px; color:#0B0B61; height:35px;"/>
        <input type="submit" class="bu" id="find" value="Find" onClick="find();" />  &emsp;&emsp;&emsp;&emsp;    &emsp;&emsp; &emsp;&emsp;

        <span style="font-size:12px; font-weight: bold;">
            <input type="button" class="bs" id="find" value="&#9906;  Search Test Price" onclick="window.open('billSearch.form', '_blank');")/>
        </span> &emsp;&emsp;     &emsp;&emsp;&emsp;&emsp; 

        <openmrs:hasPrivilege privilege="Second Less">
            <span style="font-size:12px; font-weight: bold;" > Bill ID  : </span> 
            <input type="value" placeholder="Bill Void / Refferrel Change" id="voidbill" name="voidbill" style="width:250px; color:#0B0B61; height:35px;" title="Enter Bill id"/>
            <input type="button" class="bu" id="voidsearch" value="&#128269;  Search" onClick="voidrefchange();" />
        </openmrs:hasPrivilege> 

    </div>
</form> <br><br>

<div style="position:fixed;  left:50%; top:60%; display:none;" id="abc" >
    <img src="${pageContext.request.contextPath}/moduleResources/billing/ajax-loader.gif" id="img" style=" border:1px solid #eee;  height:50px; width:50px; "/ > </div>

<form class="kha-aero boxHeader" style="margin-top:-15px;">
    <h1 style="background-color:#1aac9b; font-size:15px; font-family:arial;"> &#9899; Billing Queue </h1>
    &nbsp;
    <div class="box">
        <b>Date : </b>  <input type="value" style="width:180px; height:35px;" id="date" value="${currentDate}"/> &nbsp;
        <b> Patient ID/Name : </b> <input type="value" placeholder="search by name/id" id="searchKey" style="width:200px; height:35px;"/>
        <input type="button" class="bu" value="Get Patients" onClick="getBillingQueue(1);"/> &nbsp;
       <!-- <input type="button" class="bu" value="Reset" onClick="reset();"/> -->
	   &emsp;&emsp;&emsp; || &emsp; 
        &nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="value" placeholder="search patient in system" id="searchInSystem" style="width:200px; height:35px;"/>
        <input type="button" class="bu" value="Patients In System" onClick="getPatientInSystem(1);"/>
    </div>
    <div class="box"  id="rs">
        <div id="billingqueue" style="padding:4px;"></div>
        <div id="patientqueue" style="padding:4px;"></div> 
    </div> 
    <!--  <b><a href="main.form">Back</a></b> -->
</form>

<style>
    input[type=text]{
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=value] { 
        width: 100%;
        padding: 8px 5px;
        margin: 4px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size:13px;
        font-weight:bold;
    }
</style>

