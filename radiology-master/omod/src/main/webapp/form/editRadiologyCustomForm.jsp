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

    .formStyle{
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
        font: 16px Arial, Tahoma, Helvetica, sans-serif;
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

    h1 {
        font: 24px Tahoma, Arial, Helvetica, "sans-serif";
        font-weight: bold;
        color: #173B0B;
        padding: 10px 10px 10px 20px;
        display: block;
        background: #80C2FF;
        border-bottom: 1px solid #B8DDFF;
        margin: -20px -20px 0px;
        text-align: center;
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
        ;
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

    // validate all data before submitting
    function submitForm() {

        var conceptName = document.getElementById("concept").value;
        if (conceptName === "") {
            alert("Error ! Concept name can not be empty");
            return;
        }

        if (DUPLICATED_FORM) {
            alert('Please check form type and concept and submit again!');
        } else {
            jQuery("#radiologyForm").submit();
        }
    }

    function clearReport() {
        document.getElementById("textArea").innerHTML = "";
    }

    function saveReportAsFile() {
        var element = document.getElementById("textArea").outerHTML;
        jQuery("#textContent").val(element);
        submitForm();

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



    $(document).ready(function() {

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
    })


    function getSelectedText() {

        var selObj = window.getSelection();
        // alert(selObj);
        var selRange = selObj.getRangeAt(0);
        var selectedText = selObj.toString();
        return selectedText;
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
<div>
    <form id='radiologyForm' method="post" enctype="multipart/form-data" class="formStyle">	

        <h1>Radiology Custom Template</h1>
        <br />
        <div>
            <spring:bind path="form.conceptName"> 
                <span style="margin-left: 10px;">Concept:</span>
                <input id="concept" type="text" name="${status.expression}" value="${status.value}" style="width: 80%;" />
                <div id='checkExistingFormStatus'></div>
            </spring:bind>	
        </div>
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
        <br />
        <div>
            <input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Bold" onclick="document.execCommand('bold');" />
            <input type="button" id="buttonAll" style="text-decoration: none;" class="italicstyleButton" value="Italic" onclick="document.execCommand('italic');" />
            <input type="button" id="buttonAll" style="text-decoration: none;" class="underlinestyleButton" value="UnderLine" onclick="document.execCommand('underline');" />
            <input id='increase' type="button"  style="text-decoration: none;" class="styleButton" value="Larger">
            <input id='decrease' type="button"  style="text-decoration: none;" class="styleButton" value="Smaller">
            <input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Save" onClick="saveReportAsFile()" />
            <input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Clear" onClick='clearReport();' />
            <input type="button" id="buttonAll" style="text-decoration: none;" class="styleButton" value="Cancel" onClick="javascript:window.location.href = 'radiologyCustomFormList.form'" />
        </div>		
    </form>
</div>


<%@ include file="/WEB-INF/template/footer.jsp" %>   