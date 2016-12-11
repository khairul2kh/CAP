<%--
*  Copyright 2009 Society for Health Information Systems Programmes, India (HISP India)
*
*  This file is part of Laboratory module.
*
*  Laboratory module is free software: you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  (at your option) any later version.

 *  Laboratory module is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Laboratory module.  If not, see <http://www.gnu.org/licenses/>.
 *
--%> 
<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="../includes/js_css.jsp"%>
<script type="text/javascript">

    jQuery(document).ready(function() {
        fillData();
    });
    // set input value
    function setInputValue(name, value) {
        $("input[name=" + name + "]").each(function(index) {
            input = $(this);
            if (input.attr("type") == "radio") {
                if (input.attr("value") == value) {
                    input.attr("checked", "checked");
                }
                ;
            } else {
                input.val(value);
            }
        });
        $("select[name=" + name + "]").each(function(index) {
            select = $(this);
            $("option", select).each(function(index) {
                option = $(this);
                if (option.attr("value") == value) {
                    option.attr("selected", "selected");
                }
            });
        });
    }
    // Fill data into all inputs
    function fillData() {
    <c:if test="${not empty inputNames}">
        <c:forEach var="i" begin="0" end="${inputLength-1}" step="1">
        setInputValue("${inputNames[i]}", "${inputValues[i]}");
        </c:forEach>
    </c:if>
    }
</script>
<!-- kesavulu 02/03/2013 Bugs #661 & #662 Disabled  EnterKey when we enter/edit test results under Work List/Edit Results  in laboratory module-->
<script type="text/javascript">
    function stopRKey(evt) {
        var evt = (evt) ? evt : ((event) ? event : null);
        var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
        if ((evt.keyCode == 13) && (node.type == "text")) {
            return false;
        }
    }
    document.onkeypress = stopRKey;

</script> 

<div style='width:80%;'>
    <input type='hidden' name='encounterId' value='${encounterId}'/>
    <c:if test="${conceptId eq '2415'}">
        <c:forEach var='parameter' items='${parameters}' varStatus='parameterIndex'>
            <div class='parameter' style="width:50%; line-height:150%;">
                <table style="width:100%">
                    <tr>
                        <td style="width:200px;"> <br> <strong style="font-size:14px;">${parameter.id}</strong>  </td>
                        <td colspan="1">
                            <c:if test="${not empty parameter.unit}">(${parameter.unit})</c:if> 
                            <c:if test="${parameter.type eq 'text'}">
                                <input class='${parameter.validator}' type='text' name='${parameter.id}' style='width: 200px; height:25px; font-size:14px;'/>  
                            </c:if>
                            <c:if test="${parameter.type eq 'select'}">
                                <select class='${parameter.validator}' id="refSelect" name='${parameter.id}'  style='width: 200px;'>
                                    <!--                                    <option><b style="color:red">--Please Select--</b></option>-->
                                    <c:forEach var='value' items='${parameter.optionValues}'>
                                        <option value='${value}'>${value}</option> 
                                    </c:forEach>
                                </select>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </div>
        </c:forEach> </c:if>

    <c:if test="${conceptId ne '2415'}">
        <c:forEach var='parameter' items='${parameters}' varStatus='parameterIndex'>
            <div class='parameter' style="width:40%; line-height:150%;">
                <table style="width: 100%">
                    <tr>
                        <td style="width:250px;"> <br> <strong style="font-size:14px;">${parameter.id}</strong>  </td>
                        <td colspan="1">
                            <c:if test="${not empty parameter.unit}">(${parameter.unit})</c:if> 
                            <c:if test="${parameter.type eq 'text'}">
                                <input class='${parameter.validator}' type='text' name='${parameter.id}' style='width: 200px; height:25px; font-size:14px;'/>  
                            </c:if>
                            <c:if test="${parameter.type eq 'select'}">
                                <select class='${parameter.validator}' id="refSelect" name='${parameter.id}'  style='width: 200px;'>
                                    <!--                                    <option><b style="color:red">--Please Select--</b></option>-->
                                    <c:forEach var='value' items='${parameter.optionValues}'>
                                        <option value='${value}'>${value}</option>
                                        <c:if test="${parameter.id eq  'Quantity' && value eq 'Adequate'}">
                                            <option value='${value}' selected>Adequate</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Urine Color' && value eq 'Straw'}">
                                            <option value='${value}' selected>Straw</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Appearance' && value eq 'Clear'}">
                                            <option value='${value}' selected>Clear</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Sediment' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Albumin' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Sugar.' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Ex. Phos' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Bile Salts' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Bile Pigment' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Ketones' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Urobilinogen' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Bence jones Protein' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Hyaline' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Urates' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Uric Acid' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Calcium Oxalate' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Amor. Phosphate' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Triple Phos' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Candida' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Mucus Thread' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Stool Colour' && value eq 'Yellowish'}">
                                            <option value='${value}' selected>Yellowish</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Odour' && value eq 'Faecal'}">
                                            <option value='${value}' selected>Faecal</option>
                                        </c:if>

                                        <c:if test="${parameter.id eq  'Stool Consistency' && value eq 'Soft'}">
                                            <option value='${value}' selected>Soft</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Blood' && value eq 'Absent'}">
                                            <option value='${value}' selected>Absent</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Mucus' && value eq '(+)'}">
                                            <option value='${value}' selected>${value}</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Worm' && value eq 'Absent'}">
                                            <option value='${value}' selected>Absent</option>
                                        </c:if>

                                        <c:if test="${parameter.id eq  'Trophozoite' && value eq 'Not Found'}">
                                            <option value='${value}' selected>Not Found</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Cyst' && value eq 'Not Found'}">
                                            <option value='${value}' selected>Not Found</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Giardia (Cyst)' && value eq 'Not Found'}">
                                            <option value='${value}' selected>Not Found</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'E. Coli' && value eq 'Not Found'}">
                                            <option value='${value}' selected>Not Found</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'A. Lumbricoids (AL)' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'T. Trichura (TT)' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'A. Duodenale (AD)' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Fat Globules' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Vegetable cells' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Yeasts' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Muscle Fibres' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Candida' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Starch' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>

                                        <c:if test="${parameter.id eq  'Reducing substance' && value eq 'Nil'}">
                                            <option value='${value}' selected>Nil</option>
                                        </c:if>
                                        <c:if test="${parameter.id eq  'Occult Blood Test' && value eq 'Not done'}">
                                            <option value='${value}' selected>Not done</option>
                                        </c:if>

                                    </c:forEach>
                                </select>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </div>
        </c:forEach> 
    </c:if>

    <style>
        #refSelect {
            -webkit-appearance: button;
            -webkit-box-shadow: 0 3px 0 #000, 0 -1px #fff inset;
            -moz-box-shadow: 0 3px 5px #000, 0 -1px #fff inset;
            box-shadow: 2px 3px 6px 4px #000, 0 -5px #fff inset;
            border: 1px solid #AAA;
            color: #555;
            font-size: inherit;
            margin: 0px;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor:pointer;
            white-space: nowrap;
            width: 250px;
        }
        #refSelect option {
            -webkit-border-radius:4px;
            -moz-border-radius:4px;
            border-radius:2px;
            -webkit-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
            -moz-box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
            box-shadow: 0 3px 0 #ccc, 0 -1px #fff inset;
            padding: 5px 5px;
            color:black;
            height:auto;
            width:100%;
        }
        input[type="text"]  { 
            appearance: none;
            outline: 0;
            border: 1px solid #04B431;
            background-color: #eee;
            width: 200px;
            border-radius: 3px;
            text-align: left;
            font-size: 18px;
            color: red;
            -webkit-transition-duration: 0.25s;
            transition-duration: 0.25s;
            font-weight: 200;
        }
        input[type="text"]:hover {
            background-color: rgba(255, 255, 255, 0.4);
            color:#04B431;
        }
        input[type="text"]:focus {
            background-color: white;
            width: 220px;
            color: red;
        }
    </style>
