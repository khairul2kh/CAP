<%-- 
    Document   : editRefDocName
    Created on : Oct 25, 2015, 8:23:38 PM
    Author     : khairul
--%>

<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="../includes/js_css.jsp"%>

<center>
    <br> <br>
    <script>
        function validate() {

            var dName = document.getElementById("docName").value;
            if (dName == null || dName == "") {
                alert("Please Enter Doctor Name!!");
                return false;
            }


            var answer = confirm("Are you Sure Edit!!");
            if (answer) {
                //window.location = ('backToOpdQueue.htm?queueId=');
            } else {
                return false;
            }

        }
    </script>
    <form class="kha-ref" method="post" action="editSaveRef.htm" onsubmit="return validate()">
        <h1>Edit Doctor Info</h1>
        <br>

        <table width="100%">
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Doctor Name :</b></td>
                <td> <input type="text" id="docName" name="docName" value="${docInfo.doctorName}" /> </td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Doctor Degree :</b></td>
                <td><input type="text" id="docDeg" name="docDeg" value="${docInfo.dergee}"   /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Designation:</b></td>
                <td><input type="text" id="designation" name="designation" value="${docInfo.designation}" /> </td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Phone:</b></td>
                <td><input type="text" id="phone" name="phone" value="${docInfo.phone}" /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Address:</b></td>
                <td> <input type="text"	id="address" name="address" value="${docInfo.address}" /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Reffered Code:</b></td>
                <td><input type="text" id="refferedCode" name="refferedCode"	value="${docInfo.refferedCode}" /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Territory :</b></td>
                <td><input type="text" id="terr" name="terr" value="${docInfo.territory}"
                           placeholder="Please enter Territory code.." autofocus /></td>
            </tr>

        </table>		
        <input type="hidden" name="id" value="${docInfo.id}" /> 
        <br> 
        <input class="button"	type="submit" value="Save" />
    </form>
</center>


