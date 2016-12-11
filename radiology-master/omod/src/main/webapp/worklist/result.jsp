
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="../includes/js_css.jsp" %>
<script type="text/javascript">
    $(document).ready(function() {
        //insertTestInfo();
        //getPatientReport();
    });

    // Insert test information
    function insertTestInfo() {
        $.ajax({
            type: "GET",
            url: getContextPath() + "/module/radiology/ajax/showTestInfo.htm",
            data: ({
                patientId: '${patientId}',
                orderId: '${orderId}'
            }),
            success: function(data) {
                $("#forminfo").html(data);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert("ERROR " + xhr);
            }
        });
    }

    // Insert test information
    function getPatientReport() {
        // $.ajax({
        // type : "GET",
        // url : getContextPath() + "/module/radiology/showForm.form",
        // data : ({
        // radiologyTestId : '${testId}',
        // mode : 'view'
        // }),
        // success : function(data) {
        // $("#formcontent").html(data);
        // },
        // error : function(xhr, ajaxOptions, thrownError) {
        // alert("ERROR " + thrownError);
        // }
        // });
        var fileName = '${patientId}' + "_" + '${orderId}' + "-" + '${testName}' + ".txt";

        $.ajax({
            type: "GET",
            url: getContextPath() + "/module/radiology/getDefaultTextFile.htm",
            data: ({
                fileName: fileName,
                testName: '${testName}'
            }),
            success: function(data) {
                document.getElementById("textArea").outerHTML = data;
            },
            error: function() {
                alert("File not found ");
            }
        });

    }

    // Print report
    // if any blank space remain than print will not be completed successfully 
    function printReport() {
        $("#fprintArea").printArea({
            mode: "popup",
            popClose: true
        });
    }

    function saveReport() {
        var myElement = document.getElementById("textArea");
        document.getElementById("demo").innerHTML = myElement.innerHTML;

    }

    function clearReport() {
        document.getElementById("textArea").innerHTML = "";
    }

    function saveReportAsFile() {
        var elementValue = document.getElementById("textArea").innerHTML;
        var replacemetValue = elementValue.replaceAll("<br>", "");

        if (!replacemetValue) {
            alert("Nothing to save , page is empty");
            return;
        }

        var element = document.getElementById("textArea").outerHTML;

        $.ajax({
            type: "GET",
            url: getContextPath() + "/module/radiology/file.htm",
            data: ({
                element: element,
                testName: '${testName}',
                patientId: '${patientId}',
                orderId: '${orderId}',
                testId: '${testId}'

            }),
            success: function() {
                alert("File has been saved successfully");
                javascript:getTests();
            },
            error: function() {
                alert("ERROR: File has not been saved yet ");
            }
        });
        tb_remove();

    }


    String.prototype.replaceAll = function(target, replacement) {
        return this.split(target).join(replacement);
    };

    function destroyClickedElement(event) {
        document.body.removeChild(event.target);
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
<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <style>


            #textArea {
                width: 960px;
                max-width: 960px;
                min-height: 800px;
                max-height: 800px;
                border: 2px solid;
                // background: silver;
                overflow-x: scroll;
                overflow-y: scroll;
            }
            #fprintArea {


            }
        </style>
    </head>
    <body>
        <div id="fprintArea">

            <table class="tablesorter">
                <tr>
                    <td>SL.No</td>
                    <td>${patientId}</td>
                    <td>Received date</td>
                    <td>${deliveryDate}</td>
                    <td>Delivery Date</td>
                    <td>${deliveryDate}</td>
                </tr>
                <tr>
                    <td>Pt's Name</td>
                    <td>${patientName}</td>
                    <td>Age</td>
                    <td>${age}</td>
                    <td>Sex</td>
                    <td>${gender}</td>
                </tr>
                <tr>
                    <td>Refd. By.</td>
                    <td colspan="5">${refdBy}</td>

                </tr>

                <tr>
                    <td>USG of</td>
                    <td colspan="5">${testName}</td>

                </tr>
            </table>



            <spring:bind path="form.content">
                <c:choose>

                    <c:when test="${empty status.value}">
                        empty
                        <div id="textArea" contenteditable="true" ></div>
                    </c:when>

                    <c:otherwise>
otherwise
                        ${status.value}

                    </c:otherwise>

                </c:choose>
            </spring:bind>
        </div>

        <center>  <div style="margin-left: 100px; margin-right: auto; margin-bottom:50px;">
                <!--   <table>
                      <tr>
                          <td>Select a File to Load:</td>
                          <td><input type="file" id="fileToLoad"></td>
                          <td><button onclick="loadFileAsText()">Load Selected
                                  File</button>
                          <td>
                      </tr>
                  </table>
                -->
                <button onclick="document.execCommand('bold');">Bold</button>
                <button onclick="document.execCommand('italic');">Italic</button>
                <button onclick="document.execCommand('underline');">UnderLine</button>
                <button onclick="saveReportAsFile()">Save</button>
                <button onclick="clearReport()">Clear</button>
                <button onclick="printReport()">Print</button>
                <button onclick="tb_remove()">Cancel</button>


            </div></center>


        <div id="demo"></div>
<spring:bind path="form.conceptName"> 
               ${status.value}
           sss
		   </spring:bind>

    </body>
</html>





