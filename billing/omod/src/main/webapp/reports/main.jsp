<%-- 
    Document   : main
    Created on : Jan 31, 2016, 10:31:56 AM
    Author     : Khairul
--%>

<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="../includes/js_css.jsp"%>



<form class="form-rep" >

    <div class="sub-div" style="width:100%;">
        <br>

        <input value="Doctor Commission Payment" type="button" class="btn1"  onclick="window.location.href = 'comView.htm'" /> &emsp;&emsp;

        <input value="Doctor Commission View" type="button" class="btn1"  onclick="window.location.href = 'docCom.form'" /> <br> <br> <br>

        <input value="CH Commission Payment" type="button" class="btn1"  onclick="window.location.href = 'rmpComView.htm'" /> &nbsp;&nbsp; &emsp;  <!--Rmp there is CH -->

        <input value="CH Commission View/Update" type="button" class="btn1"  onclick="window.location.href = 'rmpComPaymentView.htm'" />  <!--Rmp there is CH --> <br><br><br>

        <input value="Commission Payment" type="button" class="btn1"  onclick="window.location.href = 'compay.htm'" />


    </div>

</form>  