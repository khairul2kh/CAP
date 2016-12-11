/**
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
*/

DDUIPD={
		submit : function(thiz)
		{
			var t = jQuery("#tabs").tabs();
			var selected = t.tabs('option', 'selected');
			jQuery("#tab").val(selected);
			jQuery("#dduIpdMainForm").submit();
		}
};

ADMISSION={
		admit : function(id)
		{
			if(SESSION.checkSession())
			{
				url = "admission.htm?admissionId="+id+"&keepThis=false&TB_iframe=true&height=500&width=1000";
				tb_show("Admission",url,false);
			}
		},
		removeOrNoBed : function(id,action)
		{
			if(SESSION.checkSession()){
				if(action == 1){
					if( confirm("Are you want to remove?"))
					{
						ACT.go("removeOrNoBed.htm?admissionId="+id+"&action="+1);
					}
				}else if(action == 2){
					if( confirm("Are you sure no bed for this patient?"))
					{
						ACT.go("removeOrNoBed.htm?admissionId="+id+"&action="+2);
					}
				}
			}
		}
};
QUEUE={
		load : function(url , container)
		{
			jQuery(container).load(url);
		},
		initTableHover : function()
		{
			jQuery("tr").each(function(){
				var obj = jQuery(this);
				if( obj.hasClass("evenRow") || obj.hasClass("oddRow") )
				{
					obj.hover(
							function(){obj.addClass("hover");},
							function(){obj.removeClass("hover");}
							);
				}
			});
		},
		refreshQueue : function()
		{
			jQuery("#Patients_for_admission").load("patientsForAdmissionAjax.htm?ipdWardString="+jQuery("#ipdWardString").val()+"&doctorString="+jQuery("#doctorString").val()+"&fromDate="+jQuery("#fromDate").val()+"&toDate="+jQuery("#toDate").val()+"&searchPatient="+jQuery("#searchPatient").val(), function(){	QUEUE.initTableHover(); });
		},
		refreshAdmittedQueue : function()
		{
			jQuery("#Admitted_patient_index").load("admittedPatientIndexAjax.htm?ipdWardString="+jQuery("#ipdWardString").val()+"&doctorString="+jQuery("#doctorString").val()+"&fromDate="+jQuery("#fromDate").val()+"&toDate="+jQuery("#toDate").val()+"&searchPatient="+jQuery("#searchPatient").val(), function(){	QUEUE.initTableHover(); });
		}
		
};	

ADMITTED = {
		transfer : function(id)
		{
			if(SESSION.checkSession())
			{
				
				var url = "transfer.htm?id="+id+"&keepThis=false&TB_iframe=true&height=500&width=1000";
				tb_show("Transfer",url,false);
			}
		},
		discharge: function(id)
		{
			if(SESSION.checkSession())
			{
				
				var url = "discharge.htm?id="+id+"&keepThis=false&TB_iframe=true&height=500&width=1000";
				tb_show("Discharge",url,false);
			}
		},
		print : function(id)
		{
			jQuery("#printArea"+id).printArea({mode: "popup", popClose: true});
		},
		submitIpdFinalResult : function(){
			jQuery('#selectedDiagnosisList option').each(function(i) {  
				 jQuery(this).attr("selected", "selected");  
			}); 
			jQuery('#selectedProcedureList option').each(function(i) {  
				 jQuery(this).attr("selected", "selected");  
			}); 
			jQuery("#finalResultForm").submit();
		}
		
};