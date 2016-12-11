<%-- 
    Document   : editMarName
    Created on : Oct 27, 2015, 11:00:47 AM
    Author     : khairul
--%>

<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="../includes/js_css.jsp" %>

<script>
    function backValidate() {
        var answer = confirm("Are you Sure Edit!!");
        if (answer) {
            //window.location = ('backToOpdQueue.htm?queueId=');
        }
        else {
            return false;
        }
    }
</script>
<form class="kha-rmp" method="post" action="editSaveRmp.htm">
    <h1>Edit CH Name</h1>
    <input type="hidden" name="id" value="${rmp.id}" /> 
    <table class="table_data table-striped text-left">
        <tr>  
            <td>CH Name </td>
            <td> <input type="text" id="rmpName" name="rmpName" value="${rmp.name}"/> </td>
        </tr>
        <tr>  
            <td>CH Degree </td>
            <td> <input type="text" id="deg" name="deg" value="${rmp.dergee}"/> </td>
        </tr>
        <tr>  
            <td>Designation</td>
            <td> <input type="text" id="des" name="des" value="${rmp.designation}"/> </td>
        </tr>
        <tr>  
            <td>Phone</td>
            <td> <input type="text" id="pho" name="pho" value="${rmp.phone}"/> </td>
        </tr>
        <tr>  
            <td>Address</td>
            <td> <input type="text" id="add" name="add" value="${rmp.address}"/> </td>
        </tr>
        <tr>  
            <td>Territory</td>
            <td> <input type="text" id="ter" name="ter" value="${rmp.territory}"/> </td>
        </tr>
    </table>
    <br><br><br>
    <input class="button" type="submit" value="Save" onclick="backValidate()"/>
</form> 

<style>
    .kha-rmp { 
        padding-left:20px;
    }
    .kha-rmp input[type="text"]{
        border-radius:5px 2px 5px 2px;
        border: 1px solid #AAA;
        color: #black;
        margin: 5px;
        overflow: hidden;
        padding: 5px 10px;
        text-overflow: ellipsis;         
        width: 500px;
    }
    .kha-rmp input[type="button"] {
        padding: 5px 5px 5px 5px;
        background: #47D147;
        cursor:pointer;
    }
    .button{
        padding: 10px 10px 10px 10px;
        background: #47D147;
        border: none;
        color: #fff;
        box-shadow: 1px 1px 1px #4C6E91;
        -webkit-box-shadow: 1px 1px 1px #4C6E91;
        -moz-box-shadow: 1px 1px 1px #4C6E91;
        text-shadow: 3px 1px 5px #000;
        font-size:18px;
        font-weight:bold;
        text-decoration:none;
    } 
    .button:hover{
        background: #4C6E91;
        text-shadow: 3px 1px 5px 4px #eee;
        box-shadow: 5px 3px 5px 3px #888;
        font-weight:bold;
    }
</style>