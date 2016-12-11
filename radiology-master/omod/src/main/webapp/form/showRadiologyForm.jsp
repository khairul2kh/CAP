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

<style>
    
    input {
    float:right;
    clear:both;
}

#textArea {
        width: 960px;
        min-height: 700px;
      //  border: 1px solid;
		margin-top:10px;
    }
    
</style>


	
	<div id="formPrintArea">		
		<div id="textArea">	
			${content}
		</div>
	</div>
	


	
	<input type="button" value="Cancel"  onClick="tb_remove();"/>
