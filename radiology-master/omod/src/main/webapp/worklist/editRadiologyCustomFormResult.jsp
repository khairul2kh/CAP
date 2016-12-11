<%--
*  Copyright 2009 Society for Health Information Systems Programmes, India (HISP India)
*
*  This file is part of Radiology module.
*
*  Radiology module is free software: you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  (at your option) any later version.

 *  Radiology module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Radiology module.  If not, see <http://www.gnu.org/licenses/>.
 *
--%> 
<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%@ include file="../includes/js_css.jsp" %>
<br/>

<style>

    #center {
        margin: auto;
        padding: 10px;
    }

    .formStyle {
        margin-left:auto;
        margin-right:auto;
        border-radius:10px;
        box-shadow: 10px 10px 5px #888888;
        width: 1020px;
        max-width: 1020px;
        background: #D2E9FF;
        padding: 20px 20px 20px 20px;
        font: 16px Arial, Tahoma, Helvetica, sans-serif;
        color: #000000;
        line-height: 140%;
    }

    #textArea {
        font: 18px Arial, Tahoma, Helvetica, sans-serif;
        padding: 5px 0px 0px 5px;
        width: 990px;
        max-width: 990px;
        min-height: 800px;
        max-height: 800px;		
        border: 1px solid;
        margin-top:10px;
        overflow-y: scroll;
        overflow-x: scroll;
        padding-bottom: 800px;
    }

    .italicstyleButton{
        font: italic;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        padding: 6px 15px 6px 18px;
        background: #3EB1DD;
        color: #08088A;
        box-shadow: 1px 1px 1px #4C6E91;
        text-shadow: 3px 1px 5px #ffffff;
        font-size:14px;
        font-weight:bold;
        cursor:pointer;
        float: center;
    }

    .underlinestyleButton{
        text-decoration: underline;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        padding: 6px 15px 6px 18px;
        background: #3EB1DD;
        color: #08088A;
        box-shadow: 1px 1px 1px #4C6E91;
        text-shadow: 3px 1px 5px #ffffff;
        font-size:14px;
        font-weight:bold;
        cursor:pointer;
        float: center;
    }

    .styleButton{
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        padding: 6px 15px 6px 18px;
        background: #3EB1DD;
        color: #08088A;
        box-shadow: 1px 1px 1px #4C6E91;
        text-shadow: 3px 1px 5px #ffffff;
        font-size:14px;
        font-weight:bold;
        cursor:pointer;
        float: center;
    }

    input#buttonAll:hover,input#increase:hover,input#decrease:hover, input#buttonAll:focus, input#increase:focus,input#decrease:focus {
        background: white;
        color:green;
        text-shadow: 3px 1px 5px 4px #F7FE2E;
        box-shadow: 0px 5px 5px 5px #4C6;
        font-weight:bold;
    }

</style>

<script type="text/javascript">

    var DUPLICATED_FORM = false;


    jQuery(document).ready(function() {
        jQuery("#concept").autocomplete(getContextPath() + '/module/radiology/ajax/autocompleteConceptSearch.htm').result(function(event, item) {

            checkExistingForm();
        });
		
        var fontSize = 3;
        $('#decrease').click(function() {

            var selectedText = getSelectedText();
            // alert(selectedText);
            if (selectedText === "") {
                alert("Please select a text first");
                return;
            }
            fontSize = document.queryCommandValue("FontSize");
            if (fontSize === "") {
                fontSize = 3;
            }
            if (fontSize > 2)
                fontSize--;
            document.execCommand("fontSize", false, fontSize);
        });
    

        $('#increase').click(function() {
   
            var selectedText = getSelectedText();
            // alert(selectedText);
            if (selectedText === "") {
                alert("Please select a text first");
                return;
            }
            fontSize = document.queryCommandValue("FontSize");
            if (fontSize === "") {
                fontSize = 3;
            }
            if (fontSize < 7)
   
                fontSize++;
            document.execCommand("fontSize", false, fontSize);
        });
    });

    // get the context path // if you remove this ,id="concept" will not work 
    function getContextPath() {
        pn = location.pathname;
        len = pn.indexOf("/", 1);
        cp = pn.substring(0, len);
        return cp;
    }

    // check existing form with concept/type
    function checkExistingForm(item) {
        type = jQuery('#formType').val();
        conceptName = jQuery("#concept").val();
        jQuery.ajax({
            type: "GET",
            url: getContextPath() + "/module/radiology/ajax/checkExistingForm.htm",
            data: ({
                conceptName: conceptName,
                type: type,
                formId: '${param.id}'
            }),
            success: function(data) {

                jQuery('#checkExistingFormStatus').html(data);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert("ERROR " + xhr);
            }
        });
    }
	
    function printReport() {
        $("#patientReportPrintArea").printArea({
            mode: "popup",
            popClose: true
        });
    }

    // validate all data before submitting
    function submitForm() {
        jQuery("#radiologyForm").ajaxSubmit(
                {
                    success: function(responseText, statusText, xhr) {
                        alert("Saved successfully");
                        goBack();
                    },
                    error: function() {
                        alert("Save failed");
                    }
                });

    }

    function clearReport() {
        document.getElementById("textArea").innerHTML = "";
    }

    function saveReportAsFile() {
        var element = document.getElementById("textArea").outerHTML;
        jQuery("#textContent").val(element);
        submitForm();

    }

    function goBack() {
        window.history.go(-1);

    }

	function getSelectedText() {

        var selObj = window.getSelection();
        // alert(selObj);
        var selRange = selObj.getRangeAt(0);
        var selectedText = selObj.toString();
        return selectedText;
    }

    function loadFileAsText() {
        //retrieve selected Text from a TextFile by using javascript.

        var fileToLoad = document.getElementById("fileToLoad").files[0];

        var fileReader = new FileReader();
        fileReader.onload = function(fileLoadedEvent) {
            var textFromFileLoaded = fileLoadedEvent.target.result;
            document.getElementById("textArea").outerHTML = textFromFileLoaded;
            //document.getElementById("textArea").value = textFromFileLoaded;
        };
        fileReader.readAsText(fileToLoad, "UTF-8");
        document.getElementById("textArea").outerHTML;




        //retrieve selected Text from a TextFile by using Ajax.

        // var fileName = document.getElementById("fileToLoad").value;

        // if(fileName===""){
        // alert("Please select a file ");
        // return;
        // }

        // $.ajax({
        // type : "GET",
        // url : getContextPath() + "/module/radiology/getReportFromTextFile.htm",
        // data : ({
        // fileName : fileName
        // }),
        // success : function(data) {
        // document.getElementById("textArea").outerHTML=data;
        // },
        // error : function() {
        // alert("File not found ");
        // }
        // });
    }



    window.addEventListener("keypress", checkKeyPressed, false);
    function checkKeyPressed(e) {
        if ((e.charCode == "98" || e.charCode == "66") && e.ctrlKey) {
            document.execCommand('bold');
            e.preventDefault();
        } else if ((e.charCode == "73" || e.charCode == "105") && e.ctrlKey) {
            document.execCommand('italic');
            e.preventDefault();
        } else if ((e.charCode == "117" || e.charCode == "85") && e.ctrlKey) {
            document.execCommand('underline');
            e.preventDefault();
        }
    }

</script>

<div id="center">
    <center>
		<table  style="border-collapse: collapse;  border-radius: 10px; box-shadow: 0 0 0 1px #666; width:1020px; height: 150px;" > 
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >SL.No <span style="float:right; font-style:normal;">:</span>  </td>            
							<td colspan="2"> <b> &nbsp; ${patientId}</b>

								<div style="float:right; font-size:16px;">
									<span  >Received date   : <b> <fmt:formatDate value="${deliveryDate}" pattern="dd-MM-yyyy" /> </b></span> 
									<span  > &nbsp;&nbsp; Delivery date   : <b> <fmt:formatDate value="${deliveryDate}" pattern="dd-MM-yyyy" /> </b></span>  &nbsp;&nbsp;
							</td> </div>
						</tr>
						<tr> 
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:16%; font-style: italic; " >Patient's Name <span style="float:right; font-style:normal;">:</span>  </td>
							<td style="width:45%; font-size:16px;" > <b> &nbsp; ${patientName}</b></td>
							<td style="font-style: italic; font-size:16px; text-align:right; ">
								<span> Age   : <b> ${age} Year(s)</b></span>
								<span> &nbsp;&nbsp; Sex  : 
									<b> 
										<c:choose> 
											<c:when test="${gender eq 'M'}">Male</c:when> 
											<c:otherwise>Female</c:otherwise> 
										</c:choose> 
									</b>
								</span>  &nbsp;&nbsp;			
							</td>				
						</tr>
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >Refd. By <span style="float:right; font-style:normal;">:</span>  </td>
							<td colspan="5" style="font-size:16px;"> <b>&nbsp; ${refdBy}</b></td>
						</tr>
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >USG of <span style="float:right; font-style:normal;">:</span>  </td>
							<td colspan="5" style="font-size:18px;"> <b>&nbsp; ${testName}</b></td>
						</tr>
					</table>
	</center>
	<br />
    <form  id='radiologyForm' method="POST" enctype="multipart/form-data" class="formStyle">	
        <spring:bind path="form.conceptName"> 
            <td>
				<input id="concept" type="hidden" name="${status.expression}" value="${status.value}" style="width:350px;"/>
			</td>
        </spring:bind>

        <spring:bind path="form.content">
            <c:choose>
                <c:when test="${empty status.value}">
                    <div id="textArea" contenteditable="true" ></div>
                </c:when>
                <c:otherwise>
                    ${status.value}
                </c:otherwise>
            </c:choose>
        </spring:bind>
        <spring:bind path="form.content">
            <input type="hidden" id="textContent" name="${status.expression}"/>
        </spring:bind>
    </form>
</div>

<center>
	<div style="margin-left: 11px; margin-right: auto; margin-bottom:50px;">
                <input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Bold" onclick="document.execCommand('bold');" />
		<input type="button" id="buttonAll" style="text-decoration: none;" class="italicstyleButton" value="Italic" onclick="document.execCommand('italic');" />
		<input type="button" id="buttonAll" style="text-decoration: none;" class="underlinestyleButton" value="UnderLine" onclick="document.execCommand('underline');" />
		<input id='increase' type="button"  style="text-decoration: none;" class="styleButton" value="Larger">
        <input id='decrease' type="button"  style="text-decoration: none;" class="styleButton" value="Smaller">
		<input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Save" onClick="saveReportAsFile()" />
		<input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Cancel" onClick="goBack()" />
		<input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Clear" onclick="clearReport()" />
		<input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Print" onclick="printReport()" />
	</div>
</center>

<div id="patientReportPrintArea" style="display:none;">
    <style>
        table.wltable {
            font-family: 'Times New Roman'; /// 'Lucida Grande', 'Trebuchet MS', Arial, Sans-Serif;			
            font-style: normal;
        }
        table.wltable td {
            padding: 5px 5px 5px 5px;
        }
        table.wltable .right {
        }
    </style>

    <table>     	
			<tr>
				<td colspan="4">
					<table  style="border-collapse: collapse;  border-radius: 10px; box-shadow: 0 0 0 1px #666; width:1020px; height: 150px;" > 
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >SL.No <span style="float:right; font-style:normal;">:</span>  </td>            
							<td colspan="2"> <b> &nbsp; ${patientId}</b>

								<div style="float:right; font-size:16px;">
									<span  >Received date   : <b> <fmt:formatDate value="${deliveryDate}" pattern="dd-MM-yyyy" /> </b></span> 
									<span  > &nbsp;&nbsp; Delivery date   : <b> <fmt:formatDate value="${deliveryDate}" pattern="dd-MM-yyyy" /> </b></span>  &nbsp;&nbsp;
							</td> </div>
						</tr>
						<tr> 
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:16%; font-style: italic; " >Patient's Name <span style="float:right; font-style:normal;">:</span>  </td>
							<td style="width:45%; font-size:16px;" > <b> &nbsp; ${patientName}</b></td>
							<td style="font-style: italic; font-size:16px; text-align:right; ">
								<span> Age   : <b> ${age} Year(s)</b></span>
								<span> &nbsp;&nbsp; Sex  : 
									<b> 
										<c:choose> 
											<c:when test="${gender eq 'M'}">Male</c:when> 
											<c:otherwise>Female</c:otherwise> 
										</c:choose> 
									</b>
								</span>  &nbsp;&nbsp;			
							</td>				
						</tr>
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >Refd. By <span style="float:right; font-style:normal;">:</span>  </td>
							<td colspan="5" style="font-size:16px;"> <b>&nbsp; ${refdBy}</b></td>
						</tr>
						<tr>
							<td height="25" style="text-align:left; font-size:16px; padding-left:10px; width:18%; font-style: italic; " >USG of <span style="float:right; font-style:normal;">:</span>  </td>
							<td colspan="5" style="font-size:18px;"> <b>&nbsp; ${testName}</b></td>
						</tr>
					</table>
					<br>
				</td>
			</tr>
			<tr style="width:100%;">
				<td colspan="4" style="font-size: 16pt;">
					<spring:bind path="form.content">
						<c:choose>
							<c:when test="${empty status.value}">
								<strong><div id="textArea" contenteditable="true" ></div></strong>
							</c:when>
							<c:otherwise>
								${status.value}
							</c:otherwise>
						</c:choose>
					</spring:bind>
					<spring:bind path="form.content">
						<input type="hidden" id="textContent" name="${status.expression}"/>
					</spring:bind>
				</td>
			</tr>
    </table>
</div>	