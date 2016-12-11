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
<%@ include file="../includes/js_css.jsp" %>

<script type="text/javascript">	
	function getContextPath() {
		pn = location.pathname;
		len = pn.indexOf("/", 1);
		cp = pn.substring(0, len);
		return cp;
	}
	
	jQuery(document).ready(function(){		
		jQuery("#conceptPopup").autocomplete(getContextPath() + '/module/radiology/ajax/autocompleteConceptSearch.htm').result(function(event, item){window.parent.insertObs(jQuery('#conceptPopup').val(), '${type}'); tb_remove();});
		jQuery("#conceptPopup").focus();
	});
</script>

<center>
	<table cellspacing="20">
		<tr>
			<td>
				<b>Concept</b>
			</td>
			<td>
				<input id="conceptPopup" style="width:350px;"/>
			</td>
		</tr>
	</table>
	<input type="button" onClick="javascript:window.parent.insertObs(jQuery('#conceptPopup').val()); tb_remove();" value="Insert"/>
	<input type="button" onClick="tb_remove();" value="Close"/>
</center>