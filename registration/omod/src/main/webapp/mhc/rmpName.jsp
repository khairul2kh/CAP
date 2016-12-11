<%-- 
    Document   : rmpName
    Created on : May 2, 2016, 1:08:41 PM
    Author     : Khairul
--%>

<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/headerMinimal.jsp"%>
<%@ include file="../includes/js_css.jsp" %>
<br><br>
<script>
    $(document).ready(function() {
        jQuery("#rmpName").val("");
        jQuery("#chDeg").val("");
        jQuery("#designation").val("");
        jQuery("#phone").val("");
        jQuery("#address").val("");
        jQuery("#terr").val("");


        $("input").focus(function() {
            $(this).css("background-color", "#0101DF");
            $(this).css("font-size", "16px");
            $(this).css("color", "#fff");
        });
        $("input").blur(function() {
            $(this).css("background-color", "#F7F778");
            $(this).css("color", "#000");
        });
    });

    function validate() {
        var dName = document.getElementById("rmpName").value;
        if (dName == null || dName == "")
        {
            alert("Please Enter CH Name!!");
            return false;
        }
        setTimeout(function() {
            window.location.reload();
        }, 10)
    }
</script>
<div class="div1">
    <form method="post" class="abc" id="refRmp" action="refRmp.htm" onsubmit="return validate()">
        <h2>Add / Edit CH Name</h2>
        <br>
        <table width="70%">
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;CH Name :</b></td>
                <td><input type="text" id="rmpName" name="rmpName"
                           placeholder="Please enter ch name.." autofocus /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;CH Degree :</b></td>
                <td><input type="text" id="chDeg" name="chDeg"
                           placeholder="Please enter ch degree.." autofocus /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Designation:</b></td> 
                <td><input type="text" id="designation" name="designation"
                           placeholder="Please enter designation.." /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Phone:</b></td>
                <td><input type="text" id="phone" name="phone"
                           placeholder="Please enter phone number.." autofocus /></td>
            </tr>
            <tr style="background: #CCCCCC;">
                <td><b>&nbsp;Address:</b></td>
                <td><input type="text" id="address" name="address"
                           placeholder="Please enter address.." autofocus /></td>
            </tr>

            <tr style="background: #CCCCCC; height:50px;" >
                <td><b>&nbsp;Territory :</b></td>
                <td> &nbsp;&nbsp; <select id="terr" name="terr" class="refSelect">
                        <option value=""> Please Select Territory </option>
                        <option value="1"> Territory 1 </option>
                        <option value="2"> Territory 2 </option>
                        <option value="3"> Territory 3 </option>
                        <option value="4"> Territory 4 </option>
                        <option value="5"> MD </option>
                        <option value="6"> Territory 6 </option>
                        <option value="7"> Health Check-up </option>

                </td>
            </tr>

            <tr align="right">
                <td></td>
                <td><input class="button" type="submit" value="Add" /> 
                    <input class="button" type="reset" value="Reset"/>
                </td>
            </tr>
        </table>
        <br>

        <table cellpadding="5" cellspacing="0" width="100%" id=" ">
            <tr align="left" >
                <th>CH ID</th>
                <th>CH Name</th>
                <th>Degree</th>
                <th>Designation</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Territory</th>

            </tr>
            <c:if test="${not empty rmp}">
                <c:forEach items="${rmp}" var="rmp" varStatus="varStatus">
                    <tr  align="left" class='${varStatus.index % 2 == 0 ? "oddRow" : "evenRow" } ' >

                        <td>${rmp.id}</td>
                        <td>${rmp.name}</td>
                        <td>${rmp.dergee}</td>
                        <td>${rmp.designation}</td>
                        <td>${rmp.phone}</td>
                        <td>${rmp.address}</td>
                        <td>${rmp.territory}</td>
                        <td>        
                            <input type="button" class="btn"  value="Edit" onclick="myFunction('${rmp.id}')"/> 
                            <input type="button"  class="btn" value="Remove" onclick="ADMISSION.removeOrNoBed('${pAdmission.id}', '1');"/>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <br>
        <input class="button" type="button" value="Close" onclick="self.close()">
        <br>			
    </form>
    <script>
        function myFunction(id) {
            var url = "editRmp.htm?id=" + id + "&KeepThis=true&TB_iframe=true&width=800&height=500";
            tb_show("Edit RMP Name", url);
        }
    </script>

</div>
<style>
    .div1{
        width: 100%;
        min-height: 600px;
        position:absolute;
        left:100px;
        top:20px;
    }
    .abc { 
        max-width: 90%;
        min-height: 600px;
        padding: 20px 10px 20px 20px;
        font: 16px Arial, Tahoma, Helvetica, sans-serif;
        color: #000000;
        line-height: 120%;
        -moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
        -webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #D2E9FF), color-stop(1, #FFFFFF));
        background:-moz-linear-gradient(top, #D2E9FF 5%, #FFFFFF 100%);
        background:-webkit-linear-gradient(top, #D2E9FF 5%, #FFFFFF 100%);
        background:-o-linear-gradient(top, #D2E9FF 5%, #FFFFFF 100%);
        background:-ms-linear-gradient(top, #D2E9FF 5%, #FFFFFF 100%);
        background:linear-gradient(to bottom, #D2E9FF 5%, #FFFFFF 100%);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#476e9e',GradientType=0);
        background-color:#ffffff;
        -moz-border-radius:10px;
        -webkit-border-radius:10px;
        border-radius:10px;
        border:1px solid #4e6096;
        box-shadow: 10px 10px 5px #888888;
        cursor:pointer;
        color:#000000;
        font-family:arial;
        font-size:13px;
        padding:10px 30px;
        text-decoration:none;
    }
    .abc b{font-size:14px;}
    .abc input[type="text"]{
        border-radius:10px 2px 10px 2px;
        border: 1px solid #AAA;
        color: #black;
        margin: 5px;
        overflow: hidden;
        padding: 5px 10px;
        text-overflow: ellipsis;         
        width: 80%;
    }
    .btn {
        padding: 5px 5px 5px 5px;
        background: #47D147;

    }
    .btn:hover {
        padding: 5px 5px 5px 5px;
        background: #eee;
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
        background: #fff;

        text-shadow: 3px 1px 5px 4px #eee;
        box-shadow: 5px 3px 5px 3px #888;
        font-weight:bold;
    }	
    .refSelect {
        padding:2px;
        margin: 0;
        -webkit-border-radius:4px;
        -moz-border-radius:4px;
        border-radius:4px;
        -webkit-box-shadow: 0 3px 0 #000, 0 -1px #fff inset;
        -moz-box-shadow: 0 3px 5px #000, 0 -1px #fff inset;
        box-shadow: 2px 3px 6px 4px #000, 0 -5px #fff inset;
        background: #f8f8f8;
        color:#000;
        border:none;
        outline:none;
        display: inline-block;
        -webkit-appearance:none;
        -moz-appearance:none;
        appearance:none;
        cursor:pointer;
        width:250px;
    }
    .refSelect option {
        -webkit-border-radius:4px;
        -moz-border-radius:4px;
        border-radius:2px;
        -webkit-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
        -moz-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
        box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
        padding: 5px 5px;
        height:auto;
        width:100%;
    }
</style>