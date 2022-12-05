// console.log("########################################### CARREGOU ############################################### ")
function checkKey(e) {	
	const idJqgrid = e.path[4].id;	
	let id = e.srcElement.id.split('_')[0];
	let element = document.getElementById(e.srcElement.id);
	let value = e.srcElement.value;
    let stringElement = e.srcElement.id.split('_')[1];
    let grid =  $("#"+idJqgrid).jqGrid();
    let ids = grid.getDataIDs();
	e = e || window.event;
	if (e.keyCode == '38') {
		e.preventDefault();
		let previousId = ids[ids.indexOf(id)-1]
		// grid.jqGrid('setSelection', previousId, false)

        let previousElement = document.getElementById(previousId+"_"+stringElement)
        if(previousElement) {
			previousElement.focus()
			if(previousElement.tagName!='SELECT')
				previousElement.select()
			e.srcElement.value = value;
		}		
	}
	else if (e.keyCode == '40') {
		let nextId = ids[ids.indexOf(id)+1]
		// grid.jqGrid('setSelection', nextId, false)
        let nextElement = document.getElementById(nextId+"_"+stringElement)
        if(nextElement) {
			nextElement.focus()
			if(nextElement.tagName!='SELECT')
				nextElement.select()

			e.srcElement.value = value;
		}
		e.preventDefault();
		if(!element.value.includes('%'))		
			element.dispatchEvent(new Event('change'));		
	}
	

}
function carregaItemSelector(){
	var id = $('#id').val();
	$.ajax({
        url : 'itemSelector',
         type: "POST",

         data: "{\"id\":\"" + id
           +"\"}",
         contentType: "application/json",
         dataType: "text",
        success : function(data) {
            $('#itemSelectorBase').html(data);
        },
        error: function (request, status, erro) {
            alert('error');
          }
    });
}
function handleHelpButton(status,element){
	
	const button = document.getElementById(element)
	if(status)
	   button.style.display = ''
	else
	   button.style.display = 'none'
 }
 
function screenHasHelp(screen){	
	setTimeout(()=>{
		var origem = ""
		$.ajax({
			url : 'screenHasHelp',
			 type: "POST",
			 data: "{\"code\":\""+origem
			 +"\",\"value\":\""+screen
			 +"\"}",       
			 contentType: "application/json",
			 dataType: "text",
				async: false,
			success : function(data) {
				let resposta = JSON.parse(data);  
				if(!resposta)
					document.getElementById('Ajuda').style.display = 'none';
				else
					document.getElementById('Ajuda').style.display = '';
			},
			error: function (request, status, erro) {
				alert('error');
			  }
		});	
	},1)	
}

function generateStringDateTimeFromLog(text){
	text = text.replace('_','-')
	text = text.replace('_','-')
	text = text.replace('_',':')
	text = text.replace('_',':')
	text = text.replace('_',':')
	var retorno = text.split(':')[0]+':'
	retorno += text.split(':')[1]+'h'+':'
	retorno += text.split(':')[2]+'m'+':'
	retorno += text.split(':')[3]+'s'
    return retorno;
}
function handleEnableDisableInputJqGrid(table,status,type){
	var inputsInJqGrid = document.getElementById(table).getElementsByTagName(type)
	if(status == "enable"){
		for(var i=0;i<inputsInJqGrid.length;i++){
			inputsInJqGrid[i].disabled = false
			inputsInJqGrid[i].parentElement.classList.add('enabled-cell')
		}
	}
	else if(status =="disable"){
		for(var i=0;i<inputsInJqGrid.length;i++){
			inputsInJqGrid[i].disabled = true
			inputsInJqGrid[i].parentElement.classList.remove('enabled-cell')

		}
	}		
}
function carregaItemSelectorByDiv(div){
	var id = $('#id').val();
	$.ajax({
        url : 'itemSelector',
         type: "POST",

         data: "{\"id\":\"" + id
           +"\"}",
         contentType: "application/json",
         dataType: "text",
        success : function(data) {
            $('#'+div).html(data);
        },
        error: function (request, status, erro) {
            alert('error');
          }
    });
}

function carregaItemSelectorByManagementUnit(managementUnitId){
	
	$.ajax({
        url : 'itemSelectorByManagementUnit',
         type: "POST",

         data: "{\"id\":\"" + managementUnitId
           +"\"}",
         contentType: "application/json",
         dataType: "text",
        success : function(data) {
            $('#itemSelectorBase').html(data);
        },
        error: function (request, status, erro) {
            alert('error');
          }
    });
}
function mmcAboveMinimum(x,y,minimum){
      
    var mmc = mmcTwoNumbers(x,y)
    var value = mmc;
    while(value<minimum || value == 0){
        value+=mmc
    }
    return value;
}

function mmcTwoNumbers(x, y) {
	if ((typeof x !== 'number') || (typeof y !== 'number')) 
    return false;
   
   	var count = 0; 
    while(!Number.isInteger(x) || !Number.isInteger(y)){
        count+=1;
        x*=10;
        y*=10;        
    }
//    return (!x || !y) ? 0 : Math.abs((x * y) / mmdcTwoNumbers(x, y))/(10**count);
    return (!x || !y) ? 0 : Math.abs((x * y) / mmdcTwoNumbers(x, y))/(Math.pow(10, count));
 }
 
 function mmdcTwoNumbers(x, y) {
   x = Math.abs(x);
   y = Math.abs(y);
   while(y) {
	 var t = y;
	 y = x % y;
	 x = t;
   }
   return x;
 }

function inputNumbersFormat(e){
	this.value = this.value.replace(/[^0-9.,]/g, '');
}

function carregaCompanySelector(){
	var id = $('#id').val();
	$.ajax({
        url : 'companySelector',
         type: "POST",         
         contentType: "application/json",
         dataType: "text",
        success : function(data) {
            $('#companySelectorBase').html(data);
        },
        error: function (request, status, erro) {
            alert('error');
          }
    });
}

function getNumberOfSpusWithOutliers(clientCompanyId=null,clientUnitId=null){
	var numberOfSpus;
	$.ajax({
		url: 'getNumberOfSpusWithOutliers',
		type: "POST",
		async: false,
		data: "{\"clientCompanyId\":\""+clientCompanyId
				+"\",\"clientUnitId\":\""+clientUnitId
				+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			 numberOfSpus = JSON.parse(data);
            console.log("numberOfSpus: "+numberOfSpus)	 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return numberOfSpus;
}


function carregaCompanySelectorInDiv(div){
	var id = $('#id').val();
	$.ajax({
        url : 'companySelector',
         type: "POST",         
         contentType: "application/json",
         dataType: "text",
        success : function(data) {
            $('#'+div).html(data);
        },
        error: function (request, status, erro) {
            alert('error');
          }
    });
}
function listCompanyUnitsByCompanyId(companyId){
	var companyUnits;
	$.ajax({
		url: 'companyUnitList',
		type: "POST",
		async: false,
		data: "{\"companyId\":\"" + companyId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				var jsonData = JSON.parse(data);							                 
			}
			companyUnits=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return companyUnits;
}

function listCompanyBasico(companyId){
	var companys = [];
	$.ajax({
		url: 'listCompanyBasico',
		type: "POST",
		async: false,
		data: "{\"companyId\":\"" + companyId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				companys = JSON.parse(data);							                 
			}
					 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return companys;
}
function getSupplierByItemIdAndCompanyUnitId(itemId,companyUnitId){
	var supplier;
	$.ajax({
		url: 'getSupplierByItemIdAndCompanyUnitId',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId
		+"\",\"companyUnitId\":\""+companyUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			supplier=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return supplier;
}

function listSpuCompanyListByClient(companyId,companyUnitId){
	var list = [];
	$.ajax({
		url: 'listSpuCompanyListByClient',
		type: "POST",
		async: false,
		data: "{\"companyId\":\""+companyId
		+"\",\"companyUnitId\":\""+companyUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			
			if(data!=""){
				list = JSON.parse(data);							                 
			}				 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return list;
}

function listSpuCompanyListBySpu(spuId){
	var list = [];
	$.ajax({
		url: 'listSpuCompanyListBySpu',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			
			if(data!=""){
				list = JSON.parse(data);							                 
			}				 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return list;
}

function listItemByManagementUnitInSpu(managementUnitId){
	var list = [];
	$.ajax({
		url: 'listItemByManagementUnitInSpu',
		type: "POST",
		async: false,
		data: "{\"id\":\""+managementUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			
			if(data!=""){
				list = JSON.parse(data);							                 
			}				 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return list;
}

function listTransportationMatrixByOrigin(sourceType,sourceId){
	var transportationMatrixList = null;
	$.ajax({
		url: 'listTransportationMatrixByOrigin',
		type: "POST",
		async: false,
		data: "{\"sourceType\":\""+sourceType
		+"\",\"sourceId\":\""+sourceId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				transportationMatrixList=JSON.parse(data);							                 
			}
			else{
				transportationMatrixList=null  
			}
			
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return transportationMatrixList;
}
function getTransportationMatrixByOriginAndDestination(sourceType,sourceId,destinationType,destinationId){
	var transportationMatrix = null;
	$.ajax({
		url: 'getTransportationMatrixByOriginAndDestination',
		type: "POST",
		async: false,
		data: "{\"sourceType\":\""+sourceType
		+"\",\"sourceId\":\""+sourceId
		+"\",\"destinationType\":\""+destinationType
		+"\",\"destinationId\":\""+destinationId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            			
			if(data!=""){
				transportationMatrix = JSON.parse(data);							                 
			}
			else{
                transportationMatrix = null;
            }
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return transportationMatrix;
}
function getTransportationMatrixById(id){
	var transportationMatrix = null;
	$.ajax({
		url: 'getTransportationMatrixById',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            			
			if(data!=""){
				transportationMatrix = JSON.parse(data);							                 
			}
			else{
                transportationMatrix = null;
            }
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return transportationMatrix;
}
function getItemProductionLineByItemIdAndProductionLineId(itemId,productionLineId){
	var itemProductionline;
	$.ajax({
		url: 'getItemProductionLIneByItemIdAndProductionLineId',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId
		+"\",\"productionLineId\":\""+productionLineId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			itemProductionline=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return itemProductionline;
}

function listaSpuByItemId(itemId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByItemId',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

// 


function getDemandForecastHistoryById(id){
	var demandForecastHistory = null;
	$.ajax({
		url: 'getDemandForecastHistoryById',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			demandForecastHistory=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return demandForecastHistory;
}

function listManagementUnitDemandAndInventoryMapByManagementUnit(id){
	var managementUnitDemandAndInventoryMapList = null;
	$.ajax({
		url: 'listManagementUnitDemandAndInventoryMapByManagementUnit',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			managementUnitDemandAndInventoryMapList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnitDemandAndInventoryMapList;
}
function listManagementUnitDemandAndInventoryMapByManagementUnitAndDate(managementUnitId,date){
	var managementUnitDemandAndInventoryMapList = null;
	$.ajax({
		url: 'listManagementUnitDemandAndInventoryMapByManagementUnitAndDate',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId
		+"\",\"date\":\""+date
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			managementUnitDemandAndInventoryMapList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnitDemandAndInventoryMapList;
}


function getSingleDemandForecastHistoryById(id){
	var demandForecastHistory = null;
	$.ajax({
		url: 'getSingleDemandForecastHistoryById',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			demandForecastHistory=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return demandForecastHistory;
}


function getSingleDemandForecastHistoryDetailById(id){
	var demandForecastHistoryDetail = null;
	$.ajax({
		url: 'getSingleDemandForecastHistoryDetailById',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			demandForecastHistoryDetail=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return demandForecastHistoryDetail;
}

function getSpuById(id){
	var spu = null;
	$.ajax({
		url: 'getSpuById',
		type: "POST",
		async: false,
		data: "{\"id\":\""+id		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spu=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spu;
}


function listaSpuCompleteByItemId(itemId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuCompleteByItemId',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listaSpuByManagementUnit(managementUnitId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByManagementUnit',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}
function listaSpuByPlannerId(plannerId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByPlannerId',
		type: "POST",
		async: false,
		data: "{\"plannerId\":\""+plannerId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}
function listaSpuByItemAndPlannerId(itemId,plannerId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByItemAndPlannerId',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId
		+"\",\"plannerId\":\""+plannerId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listaSpuByManagementUnitAndPlannerId(managementUnitId,plannerId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByManagementUnitAndPlannerId',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId
		+"\",\"plannerId\":\""+plannerId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listaSpuByManagementUnitAndItemId(managementUnitId,itemId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByManagementUnitAndItemId',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}


function filterItensByCategoryFamily(item){
	var itemList = [];
	$.ajax({
		url: 'filterItensByCategoryFamily',
		type: "POST",
		async: false,
		data: JSON.stringify(item),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			itemList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return itemList;
}


function filterSpusCategoryMURegionFamily(spu){
	var spuList = [];
	$.ajax({
		url: 'filterSpusCategoryMURegionFamily',
		type: "POST",
		async: false,
		data: JSON.stringify(spu),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listaSpuByManagementUnitAndItemIdAndPlanner(managementUnitId,itemId, plannerId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByManagementUnitAndItemIdAndPlanner',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"plannerId\":\""+plannerId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listaSpuByManagementUnitAndItemIdAndPlanner(managementUnitId,itemId, plannerId){
	var spuList = [];
	$.ajax({
		url: 'listaSpuByManagementUnitAndItemIdAndPlanner',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"plannerId\":\""+plannerId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			spuList=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return spuList;
}

function listForecastOriginDates(spuId){
	var retorno = [];
	$.ajax({
		url: 'listForecastOriginDates',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastOriginDatesCompanyUnits(spuId,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listForecastOriginDatesCompanyUnits',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId

		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistorySpuAboveDate(spuId,beginDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandForecastHistorySpuAboveDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastOriginDate\":\""+beginDate
			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function getDemandHistorySpuByDate(spuId,date){
	var retorno = null;
	$.ajax({
		url: 'getDemandHistorySpuByDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"bucketDate\":\""+date
			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryBySpyDate(spuId,date){
	var retorno = [];
	$.ajax({
		url: 'listDemandForecastHistoryBySpyDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastOriginDate\":\""+date
			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function getDemandHistoryDetailSpuByDate(spuId,date){
	var retorno = null;
	$.ajax({
		url: 'getDemandHistoryDetailSpuByDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"bucketDate\":\""+date
			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistorySpuBetwenDates(spuId,beginDate,endDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistorySpuBetwenDates',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastHorizonBeginDate\":\""+beginDate
		+"\",\"forecastHorizonEndDate\":\""+endDate			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistoryDetailBetwenDates(spuId,companyId,companyUnitId,beginDate,endDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistoryDetailBetwenDates',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastHorizonBeginDate\":\""+beginDate
		+"\",\"forecastHorizonEndDate\":\""+endDate			
		+"\",\"clientCompanyId\":\""+companyId			
		+"\",\"clientUnitId\":\""+companyUnitId			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistoryDetailByClient(spuId,companyId,companyUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistoryDetailByClient',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId				
		+"\",\"clientCompanyId\":\""+companyId			
		+"\",\"clientUnitId\":\""+companyUnitId			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function getDaysBetweenDates(start, end, dayName) {
	var result = [];
	var days = {sun:0,mon:1,tue:2,wed:3,thu:4,fri:5,sat:6};
	var day = days[dayName.toLowerCase().substr(0,3)];
	// Copy start date
	var current = new Date(start);
	// Shift to next of required days
	current.setDate(current.getDate() + (day - current.getDay() + 7) % 7);
	// While less than end date, add dates to result array
	while (current <= end) {
	  result.push(new Date(+current));
	  current.setDate(current.getDate() + 7);
	}
	return result;  
  }

  function getAllDaysBetweenDates(start, end) {
	var inicio = new Date(start);	
	var termino = new Date(end);
	var array=[]	    
	while(inicio.getTime() != termino.getTime()){	            
	  array.push(inicio.getTime());
	  inicio.setDate(inicio.getDate()+1);
	}
	return array;
}



 function getFirstDateInMonthBetweenDates(begin,end){
	var inicio = new Date(begin);
	inicio = new Date(inicio.getFullYear(),inicio.getMonth(),1);
	var termino = new Date(end);
	var array=[]
	var endTest = new Date(termino.getFullYear(),termino.getMonth()).getTime();
	var beginTest;
	while(beginTest!== endTest){
	  beginTest = new Date(inicio.getFullYear(),inicio.getMonth()).getTime();
	  array.push(inicio);
	  inicio = new Date(inicio.getFullYear(),inicio.getMonth()+1);    
	}
	return array;
 }
 function getFormatedDatesByArrayDateAsc(arrayDates){
	var retorno = null;
	$.ajax({
		url: 'getFormatedDatesByArrayDateAsc',
		type: "POST",
		async: false,
		data: JSON.stringify(arrayDates),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)				
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}
function getFormatedDatesByArrayDateDesc(arrayDates){
	var retorno = null;
	$.ajax({
		url: 'getFormatedDatesByArrayDateDesc',
		type: "POST",
		async: false,
		data: JSON.stringify(arrayDates),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
				
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listaDatasPorAnaliseAndDatesDemandAndInventoryMap(dateBegin,dateEnd){
	var retorno = [];
	$.ajax({
		url: 'listaDatasPorAnaliseAndDatesDemandAndInventoryMap',
		type: "POST",
		async: false,
		data: "{\"dateBegin\":\""+dateBegin		
		+"\",\"dateEnd\":\""+dateEnd			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {				
				if(data!=''){
					retorno = JSON.parse(data)
				}							
			},
			error: function(jqXHR, textStatus, errorThrown) {
				alert(msgErroAjax(jqXHR.responseText));
			},
			complete: function (jqXHR, textStatus) {
			}
		});
	 return retorno;
}

function listaDatasPorManagementUnitAndDatesDemandAndInventoryMap(managementUnitId,dateBegin,dateEnd){
	var retorno = [];
	$.ajax({
		url: 'listaDatasPorManagementUnitAndDatesDemandAndInventoryMap',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId		
		+"\",\"dateBegin\":\""+dateBegin
		+"\",\"dateEnd\":\""+dateEnd			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {				
				if(data!=''){
					retorno = JSON.parse(data)
				}							
			},
			error: function(jqXHR, textStatus, errorThrown) {
				alert(msgErroAjax(jqXHR.responseText));
			},
			complete: function (jqXHR, textStatus) {
			}
		});
	 return retorno;
}


function listDemandSingleForecastHistorySpuBetwenDates(spuId,forecastOriginDate,beginDate,endDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandSingleForecastHistorySpuBetwenDates',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\",\"forecastHorizonBeginDate\":\""+beginDate
		+"\",\"forecastHorizonEndDate\":\""+endDate			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}
function listDemandSingleForecastHistoryDetailSpuBetwenDates(spuId,clientCompanyId,clientUnitId,forecastOriginDate,beginDate,endDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandSingleForecastHistoryDetailSpuBetwenDates',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\",\"forecastHorizonBeginDate\":\""+beginDate
		+"\",\"forecastHorizonEndDate\":\""+endDate			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastOriginDatesBySpuClient(spuId,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDemandForecastOriginDatesBySpuClient',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastOriginDatesBySpu(spuId){
	var retorno = [];
	$.ajax({
		url: 'listDemandForecastOriginDatesBySpu',
		type: "POST",
		async: false,
		data: "{\"id\":\""+spuId				
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listDemandSingleForecastHistoryDetailSpuByDate(spuId,clientCompanyId,clientUnitId,forecastOriginDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandSingleForecastHistoryDetailSpuByDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistorySpuAboveDate(spuId,beginDate){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistorySpuAboveDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastHorizonBeginDate\":\""+beginDate			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistorySpuCompanyUnitAboveDate(spuId,beginDate,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistorySpuCompanyUnitAboveDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"forecastOriginDate\":\""+beginDate
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId			
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryByCompanyAndUnit(spuId,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDemandForecastHistoryByCompanyAndUnit',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
            var jsonData;
			if(data!=""){
               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDatesFormatDemandHistoryDetailByStringDate(spuId,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDatesFormatDemandHistoryDetailByStringDate',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
            var jsonData;
			if(data!=""){
               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDatesFormatDemandHistoryByStringDate(spuId){
	var retorno = [];
	$.ajax({
		url: 'listDatesFormatDemandHistoryByStringDate',
		type: "POST",
		async: false,
		data: "{\"id\":\""+spuId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
            var jsonData;
			if(data!=""){
               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastOriginAllSpuByOriginDateAndBucketType(forecastOriginDate,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginAllSpuByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastsOriginDatesBySpu(spuId){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastsOriginDatesBySpu',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastsDatesBySpuClient(spuId,clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastsDatesBySpuClient',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\"}",
		data: "{\"spuId\":\""+spuId				
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastsOriginDatesByManagementUnitItem(managementUnitId,itemId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByManagementUnitItem',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId		
		+"\",\"itemId\":\""+itemId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastsOriginDatesByManagementUnitItemAndClient(managementUnitId,itemId,clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByManagementUnitItemAndClient',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId		
		+"\",\"itemId\":\""+itemId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastsOriginDatesByItemAndClient(itemId,clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByItemAndClient',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId				
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastsOriginDatesByManagementUnitClient(managementUnitId,clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByManagementUnitClient',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId				
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}



function listForecastsOriginDatesByManagementUnit(managementUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByManagementUnit',
		type: "POST",
		async: false,
		data: "{\"managementUnitId\":\""+managementUnitId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}
function listForecastsOriginDatesByItem(itemId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByItem',
		type: "POST",
		async: false,
		data: "{\"itemId\":\""+itemId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastsOriginDatesByClient(clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastsOriginDatesByClient',
		type: "POST",
		async: false,
		data: "{\"clientCompanyId\":\""+clientCompanyId		
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryAllSpuByOriginDateAndBucketType(forecastOriginDate,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryAllSpuByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSpuWithOutLiersByOriginDate(forecastOriginDate,clientCompanyId=null,clientUnitId=null){
	var retorno = [];	
	$.ajax({
		url: 'listSpuWithOutLiersByOriginDate',
		type: "POST",
		async: false,
		data: "{\"forecastOriginDate\":\""+forecastOriginDate				
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastOriginDatesWithOutliers(clientCompanyId=null,clientUnitId=null){
	var retorno = [];	
	$.ajax({
		url: 'listForecastOriginDatesWithOutliers',
		type: "POST",
		async: false,
		data: "{\"clientCompanyId\":\""+clientCompanyId				
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listForecastOriginDatesWithAlarms(){
	var retorno = [];	
	$.ajax({
		url: 'listForecastOriginDatesWithAlarms',
		type: "POST",
		async: false,		
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listForecastOriginDatesWithAlarmsByClient(clientCompanyId,clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listForecastOriginDatesWithAlarmsByClient',
		type: "POST",
		async: false,	
		data: "{\"clientCompanyId\":\""+clientCompanyId				
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",	
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function buscaForecastAnalysisPorDataOrigin(forecastOriginDate,clientCompanyId=null,clientUnitId=null){
	var retorno = [];	
	$.ajax({
		url: 'buscaForecastAnalysisPorDataOrigin',
		type: "POST",
		async: false,
		data: "{\"clientCompanyId\":\""+clientCompanyId				
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastOriginManagementUnitIdAndItemIdByOriginDateAndBucketType(forecastOriginDate,managementUnitId, itemId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginManagementUnitIdAndItemIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastOriginItemIdByOriginDateAndBucketType(forecastOriginDate, itemId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginItemIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"itemId\":\""+itemId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listSingleForecastOriginManagementUnitIdByOriginDateAndBucketType(forecastOriginDate,managementUnitId, bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginManagementUnitIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listSingleForecastOriginByManagementUnitItemClientAndBucketType(forecastOriginDate,managementUnitId,itemId,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginByManagementUnitItemClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listSingleForecastOriginByManagementUnitClientAndBucketType(forecastOriginDate,managementUnitId,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginByManagementUnitClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastOriginByItemClientAndBucketType(forecastOriginDate,itemId,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginByItemClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"itemId\":\""+itemId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastOriginByClient(forecastOriginDate,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastOriginByClient',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastAboveDateBySpuClient(forecastOriginDate,spuId,clientCompanyId, clientUnitId){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastAboveDateBySpuClient',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listSingleForecastAboveDateBySpu(forecastOriginDate,spuId){
	var retorno = [];	
	$.ajax({
		url: 'listSingleForecastAboveDateBySpu',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId				
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryManagementUnitIdAndItemIdByOriginDateAndBucketType(forecastOriginDate,managementUnitId, itemId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryManagementUnitIdAndItemIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryItemIdByOriginDateAndBucketType(forecastOriginDate, itemId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryItemIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType				
		+"\",\"itemId\":\""+itemId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryManagementUnitIdByOriginDateAndBucketType(forecastOriginDate,managementUnitId, bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryManagementUnitIdByOriginDateAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}


function listDemandForecastHistoryByManagementUnitItemClientAndBucketType(forecastOriginDate,managementUnitId, itemId,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryByManagementUnitItemClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId
		+"\",\"itemId\":\""+itemId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryByManagementUnitClientAndBucketType(forecastOriginDate,managementUnitId, clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryByManagementUnitClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"managementUnitId\":\""+managementUnitId		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryByItemClientAndBucketType(forecastOriginDate, itemId,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryByItemClientAndBucketType',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType				
		+"\",\"itemId\":\""+itemId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandForecastHistoryByClient(forecastOriginDate,clientCompanyId, clientUnitId,bucketType){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryByClient',
		type: "POST",
		async: false,
		data: "{\"bucketDateSt\":\""+bucketType		
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\",\"forecastOriginDate\":\""+forecastOriginDate
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listDemandHistoryIdsSpuByCompanyAndUnit(spuId,clientCompanyId,clientUnitId){
	var retorno = [];
	$.ajax({
		url: 'listDemandHistoryIdsSpuByCompanyAndUnit',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId
		+"\",\"clientCompanyId\":\""+clientCompanyId
		+"\",\"clientUnitId\":\""+clientUnitId
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
            var jsonData;
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function getAnalysisByUserLogged(){
	var analysis;
	$.ajax({
		url: 'getAnalysisByUserLogged',
		type: "POST",
		async: false,		
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			analysis=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return analysis;
}

function getCompanyUnitsByCompanyUnitId(companyUnitId){
	var companyUnit;
	$.ajax({
		url: 'getCompanyUnitsByCompanyUnitId',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + companyUnitId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			companyUnit=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return companyUnit;
}

function getManagementUnitById(managementUnitId){
	var managementUnit;
	$.ajax({
		url: 'getManagementUnitById',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + managementUnitId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			managementUnit=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnit;
}

function getManagementUnitParametersById(managementUnitId){
	var managementUnit = null;
	$.ajax({
		url: 'getManagementUnitParametersById',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + managementUnitId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				managementUnit = JSON.parse(data);							                 
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnit;
}

function getProductionLineByProductionLineId(productionLineId){
	var productionLine;
	$.ajax({
		url: 'getProductionLineByProductionLineId',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + productionLineId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			productionLine=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return productionLine;
}

function listManagementUnitsByRegion(regionId){
	var managementUnits=null;
	$.ajax({
		url: 'listManagementUnitsByRegion',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + regionId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {			
			if(data){                 
				managementUnits = JSON.parse(data);							                                 
			}			
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnits;
}

function listItemSuppliersByItemId(itemId){
	var companies=[];
	$.ajax({
		url: 'itemSupplierExecuteFilter',
		type: "POST",
		async: false,
		data: "{\"itemId\":\"" + itemId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData            
			if(data!=""){
                 
				jsonData = JSON.parse(data);							                 
                if(jsonData.length>0){
                    companies.push(JSON.parse(jsonData[0]));					    
			        companies.push(jsonData[1])	 
                 }				 
			}			
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return companies;
}


function listItemProductionLineByItemId(itemId){
	var companies=[];
	$.ajax({
		url: 'itemInternalProductionExecuteFilter',
		type: "POST",
		async: false,
		data: "{\"itemId\":\"" + itemId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData            
			if(data!=""){
                 
				jsonData = JSON.parse(data);							                 
                if(jsonData.length>0){
                    companies.push(JSON.parse(jsonData[0]));					    
			        companies.push(jsonData[1])	 
                 }				 
			}			
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return companies;
}

function listProductionLinesByPlantId(plantId){
	var productionLines;
	$.ajax({
		url: 'listProductionLine',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + plantId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);							                 
			}
			productionLines=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return productionLines;
}

function setFormatValue(element, format){    	
    if(stringToDouble2(element.value)!=null && isNaN(stringToDouble2(element.value))){            
        element.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
    }
    else{                
        element.parentElement.style.backgroundColor = ''
        if(format(1).toString().includes("%") && stringToDouble2(element.value) != null ){
            let value = stringToDouble2(element.value)/100
            element.value = format(value)    
        }
        else
            element.value = format(element.value)                
	}
}

function setClassificationAbcColors(classification,element){
	if(classification === "A"){
		document.getElementById(element).parentElement.style.backgroundColor = '#ffd966'
	}
	else if(classification === "B"){
		document.getElementById(element).parentElement.style.backgroundColor = '#fff2cc'
	}
	else if(classification === "C"){
		document.getElementById(element).parentElement.style.backgroundColor = 'transparent'
	}
}

/* Formatos JQGrid */
function formataValidation(cellValue, opts, rowObject){
	var valor = cellValue;
	cellValue = formatoValidation(cellValue, opts, rowObject)
	if(valor != 0){
		cellValue = formatoValidationColor(cellValue,opts,rowObject)
	}
	return cellValue
}

function listManagementUnitsByRegionId(regionId){
	var managementUnits;
	$.ajax({
		url: 'managementUnitListByRegionId',
		type: "POST",
		async: false,
		data: "{\"id\":\"" + regionId
			+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				var jsonData = JSON.parse(data);							                 
			}
			managementUnits=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return managementUnits;
}

function listTransportationNode(){
	var transportationNodes;
	$.ajax({
		url: 'transportationNodeList',
		type: "POST",
		async: false,		
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			if(data!=""){
				var jsonData = JSON.parse(data);							                 
			}
			transportationNodes=jsonData;			 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return transportationNodes;
}

function isFirstRow(grid,id){
	var arraySupplierGrid = grid.jqGrid('getDataIDs');	
	if(arraySupplierGrid.indexOf(id.toString()) == 0 )
		return true
	else
		return false
}
function isLastRow(grid,id){
	var arraySupplierGrid = grid.jqGrid('getDataIDs');	
	if(arraySupplierGrid.indexOf(id.toString()) == arraySupplierGrid.length -1 )
		return true
	else
		return false
}
function changeRowSelect(grid, direction){
	var arrayGrid = jQuery(grid).jqGrid('getDataIDs');
	var rowSelected = arrayGrid.indexOf($(grid).jqGrid('getGridParam', 'selrow'))
	var id;
	if (direction == 'next'){
		id = arrayGrid[rowSelected+1]
	}
	else if (direction == 'previous'){
		id = arrayGrid[rowSelected-1]		
	}
	jQuery(grid).jqGrid('setSelection', id, true)
}

function getCurrenciesSystem(managementUnitId){
	let retorno = null;
    let object = new Object();
    if(managementUnitId)
        object.id = managementUnitId;
	$.ajax({
		url: 'getCurrenciesSystem',
		type: "POST",
		async: false,
		data: JSON.stringify(object),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {			
			if(data!=""){
				retorno = JSON.parse(data);                
			}						 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function listInventoriesBySpuDate(spuId,date){
	var inventories = [];
    var object = new Object();
    object.spuId = spuId,
    object.date = date;
	$.ajax({
		url: 'listInventoriesBySpuDate',
		type: "POST",
		async: false,
		data: JSON.stringify(object),
		contentType: "application/json",
		dataType: "text",
		success : function(data) {
			var jsonData
			if(data!=""){
				jsonData = JSON.parse(data);
                inventories=jsonData;
			}						 
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return inventories;
}
function getJqGridScrollDiv(idJqGrid){
    const jqGridDiv = document.getElementById('gbox_'+idJqGrid)
	if(jqGridDiv)
		return  jqGridDiv.getElementsByClassName('ui-jqgrid-bdiv')[0];
	else
		return null;
}

function handdleLastPageDelete(idGrid, itensPorPagina, quantidadeDeletados){
	
	const grid = $('#'+idGrid);		
	const quantidadeDeItensNapagina = grid.jqGrid('getRowData').length;
	let paginaAtual = grid.jqGrid('getGridParam').postData.page;	
	const totalDeItens = grid.jqGrid().getGridParam("records");	
	const resto = totalDeItens%itensPorPagina;
	let totalPaginas = Math.floor(totalDeItens/itensPorPagina);
	if(resto>0)
		totalPaginas+=1;

	if(totalPaginas==paginaAtual){
		if(quantidadeDeletados==quantidadeDeItensNapagina){
			paginaAtual-=1;
		}
	}

	if(paginaAtual==0) 
		paginaAtual=1;
	return paginaAtual;
}

function populaInterfaceFilter(list,elementId,value,description){
	const valueFound = document.getElementById(elementId).value;	 
	$('#'+elementId).empty();
	let select = document.getElementById(elementId);
	select.add(document.createElement('option'));
	let temErro = false;
	list.forEach(element => {
		let option = document.createElement('option');
		if(element[description]){
			option.text = element[value] + ' - ' + element[description];
		}
		else{
			option.text = element[value];
			option.classList.add('invalid-cell')
			temErro = true;
		}
		option.value = element[value];
		select.add(option)
	});
	if(valueFound){
		select.value = valueFound;
	}
	if(temErro){
		select.parentElement.classList.add('invalid-cell');
		select.parentElement.classList.remove('enabled-cell');
	}
	else{
		select.parentElement.classList.add('enabled-cell');
		select.parentElement.classList.remove('invalid-cell');
	}
}


function setAutoCompleteItem(element,arrayItens, searchBy, string1,string2,next){
	// if(typeof doActionEnterItem == "undefined"){
	// 	alert("Implementar ação ao dar Enter no campo do item.")
	// 	return;
	// }
	// if(this.parentElement.id == "" ){
	// 	alert("Element placeHolderInput does not exists.")
	// 	return;
	// }
	document.getElementById(element).addEventListener("keydown",function(e){
		var itemFound;
		setTimeout(()=>{
			var input = this.value;
			if((e.keyCode < 48 || e.keyCode > 190) && e.keyCode != 13 && e.keyCode!=8 && e.keyCode!=9 && e.keyCode != 46){				
				this.parentElement.setAttribute("data-placeholder","")
			}
			else{
				if(e.keyCode==9){
					this.parentElement.setAttribute("data-placeholder","")
				}
				if(input !== "" && e.keyCode != 37 && e.keyCode != 39 ){
					itemFound = arrayItens.filter(item=>{				
						return item[searchBy].toUpperCase().startsWith(input.split(" ")[0].toUpperCase()) ;
					})[0]
				}			
				if(itemFound !== undefined){
					if(string2 && itemFound[string2]!=null){
						this.parentElement.setAttribute("data-placeholder",itemFound[string1].toUpperCase() + " - " + itemFound[string2].toUpperCase())																							
					}
					else{
						this.parentElement.setAttribute("data-placeholder",itemFound[string1].toUpperCase())																							

					}
				}
				else{
					this.parentElement.setAttribute("data-placeholder","")
					document.getElementById(element).value = document.getElementById(element).value.split(" ")[0]
					
				}
				if(input.split(" ")[0].length == 1){
					document.getElementById(element).value = document.getElementById(element).value.split(" ")[0]
				}
				if(input.split("- ")[1]!= undefined && itemFound != undefined && itemFound[string2]!=null	){
					if(!itemFound[string2].startsWith(input.split("- ")[1])){
						this.parentElement.setAttribute("data-placeholder","")
						
					}
				}
				if(input.split(" ").length > 1 && input.split(" ")[1]!="-" && input.split(" ")[1]!=""){
					this.parentElement.setAttribute("data-placeholder","")
				}
	
				if(e.keyCode == 13){
					if(e.keyCode == 13 )
						this.blur();
					// if(itemFound != undefined){
					// 	var item = getItemBasico(itemFound.id)
					// 	// this.parentElement.setAttribute("data-placeholder","")
					// 	// next(item)
					// }
					// else{
					// 	this.parentElement.setAttribute("data-placeholder","")
					// 	// next(undefined)
					// }									
				}
				else if(e.keyCode == 8 ||e.keyCode == 46){
					// if(itemFound != undefined){
					// 	var item = getItemBasico(itemFound.id)
					// 	next(item)
					// }									
					document.getElementById(element).value = document.getElementById(element).value.split(" ")[0]
				}
			}
		},1)
	});
	document.getElementById(element).addEventListener("focusout",function(e){
		var itemFound;
		setTimeout(()=>{
			var input = this.value;						
				if(input !== ""){
					itemFound = arrayItens.filter(item=>{				
						return item[searchBy].toUpperCase().startsWith(input.split(" ")[0].toUpperCase()) ;
					})[0]
				}			
				if(itemFound !== undefined){
					if(string2 && itemFound[string2]!=null){
						this.parentElement.setAttribute("data-placeholder",itemFound[string1].toUpperCase() + " - " + itemFound[string2].toUpperCase())																							
					}
					else{
						this.parentElement.setAttribute("data-placeholder",itemFound[string1].toUpperCase())																							

					}					
				}
				else{
					this.parentElement.setAttribute("data-placeholder","")
				}
				if(input.split("- ")[1]!= undefined){
					if(!itemFound[string2].startsWith(input.split("- ")[1])){
						this.parentElement.setAttribute("data-placeholder","")
					}
				}
				if(input.split(" ").length > 1 && input.split(" ")[1]!="-" && input.split(" ")[1]!=""){
					this.parentElement.setAttribute("data-placeholder","")
				}
				
				if(itemFound != undefined){					
					this.parentElement.setAttribute("data-placeholder","")
					next(itemFound)
				}
				else{
					this.parentElement.setAttribute("data-placeholder","")
					next(null)
				}																	
					
		},1)
	});
}

function getItemBasico(id){
	var item;
	$.ajax({
				url: 'getItemById',
				type: "POST",
				async: false,
				data: "{\"id\":\"" + id
					+"\"}",
				contentType: "application/json",
				dataType: "text",
				success : function(data) {						
						if(data!=""){
							var jsonData = JSON.parse(data);							                 
						}
						item=jsonData;

					},
					error: function (jqXHR,error, errorThrown) {
						alert(msgErroAjax(jqXHR.responseText))
					},
					complete: function (jqXHR, textStatus) {
					}
				});
 return item;
}

function setEnterKey(element,next){ 
	var elemento = document.getElementById(element);
	elemento.addEventListener("keyup", function(event) {
	  if (event.key === "Enter") {
		next()
	  }
  });
  }
  function handleArrows(grid,idRow,arrowLeft,arrowRight){ //Controla ação de setas nos popups

	var arrowLeftEnabled = document.getElementById(arrowLeft)
	var arrowLeftDisabled = document.getElementById(arrowLeft+'-Disabled')

	var arrowRightEnabled = document.getElementById(arrowRight)
	var arrowRightDisabled = document.getElementById(arrowRight+'-Disabled')

	if(isFirstRow(jQuery(grid),idRow)){
		arrowLeftEnabled.style.display = 'none';
		arrowLeftDisabled.style.display = 'block';
	}
	else{
		arrowLeftEnabled.style.display = 'block';
		arrowLeftDisabled.style.display = 'none';
	}
	if(isLastRow(jQuery(grid),idRow)){ 
		arrowRightEnabled.style.display = 'none';
		arrowRightDisabled.style.display = 'block';
	}
	else{
		arrowRightEnabled.style.display = 'block';
		arrowRightDisabled.style.display = 'none';		
	}	
}

function generateStrinCodeDescription(code,description){
	if(code == "" || description == "" ||code == null || description == null ||code == undefined || description == undefined){
		return ""
	}
	else{
		return code + " - " + description;
	}
}
function normalizeToSearch(value){
	var retorno = value.toUpperCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "")
	return retorno;
}
function changeRowSelectPagination(grid, direction,variableCompete){

	var arrayGrid = jQuery(grid).jqGrid('getDataIDs');    
	var rowSelected = arrayGrid.indexOf($(grid).jqGrid('getGridParam', 'selrow'))
	var id;
    var nextGridButton = document.getElementById('next_jqGridPager')    
    var prevGridButton = document.getElementById('prev_jqGridPager')  

	if (direction == 'next'){
		id = arrayGrid[rowSelected+1]
         if(pageChangeNext){
            pageChangeNext=false
            pageChangePrev=false
            nextGridButton.click()
			variableCompete.registerListener((val)=>{
				console.log(val)
				if(val == true){					
					jQuery(grid).jqGrid('setSelection', jQuery(grid).jqGrid('getDataIDs')[0], true)    	
					variableCompete.a = false
				}
			})
            
            return;
        }
	}
	else if (direction == 'previous'){
		id = arrayGrid[rowSelected-1]		
        if(pageChangePrev){
            pageChangeNext=false
            pageChangePrev=false
            prevGridButton.click()
			variableCompete.registerListener((val)=>{
				console.log(val)
				if(val == true){
					var arrayGridPrev = jQuery(grid).jqGrid('getDataIDs')                               		
					jQuery(grid).jqGrid('setSelection', arrayGridPrev[arrayGridPrev.length-1], true)    
					variableCompete.a = false
				}
			})            
            return;
        }
	}
    jQuery(grid).jqGrid('setSelection', id, true)
}
 

function handleArrowsPagination(grid,idRow,arrowLeft,arrowRight){ //Controla ação de setas nos popups
    var nextGridButton = document.getElementById('next_jqGridPager')
    var prevGridButton = document.getElementById('prev_jqGridPager')
  
	var arrowLeftEnabled = document.getElementById(arrowLeft)
	var arrowLeftDisabled = document.getElementById(arrowLeft+'-Disabled')

	var arrowRightEnabled = document.getElementById(arrowRight)
	var arrowRightDisabled = document.getElementById(arrowRight+'-Disabled')
    
	if(isFirstRow(jQuery(grid),idRow)){
            if(prevGridButton.getAttribute('class').includes('ui-state-disabled')){
                pageChangePrev=false; 
                
                arrowLeftEnabled.style.display = 'none';
		        arrowLeftDisabled.style.display = 'block';
            }
            else{
                pageChangePrev=true; 
                arrowLeftEnabled.style.display = 'block';
		        arrowLeftDisabled.style.display = 'none';	
            }
        
	}
	else{
        pageChangePrev=false; 
		arrowLeftEnabled.style.display = 'block';
		arrowLeftDisabled.style.display = 'none';
	}

	if(isLastRow(jQuery(grid),idRow)){
        if(nextGridButton.getAttribute('class').includes('ui-state-disabled')){
                 pageChangeNext=false; 
                  
                arrowRightEnabled.style.display = 'none';
		        arrowRightDisabled.style.display = 'block';
            }
            else{
                pageChangeNext=true; 
                arrowRightEnabled.style.display = 'block';
		        arrowRightDisabled.style.display = 'none';	
            }        
	}
	else{
        pageChangeNext=false; 
		arrowRightEnabled.style.display = 'block';
		arrowRightDisabled.style.display = 'none';		
	}	
}

/**
 * 
 * Funções de validação de campos. 
 */
 function checkMultiple(multiplo,number){
	if(!Number.isInteger(parseFloat(multiplo)/parseFloat(number)) && multiplo != "" && number != ""){
		return false;
	}
	return true;
}
	function isNumberArray(array){
		var validador = true
			for(i in array){
				let element = document.getElementById(array[i]);
				var valor = stringToDouble2(element.value)
				if(isNaN(valor)){
					element.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
					document.getElementById(array[i]).addEventListener('change', ()=>{
						element.parentElement.style.backgroundColor = '';
					});
					validador = false;
				}
				else{
					element.parentElement.style.backgroundColor = ''
				}
			}
			return validador
	}
	function validarCampos(){
			for(i in arguments){
				if(arguments[i].valor.val() == null || arguments[i].valor.val() == "undefined" || arguments[i].valor.val() == ""){
					alert(campoObrigatorio+': '+arguments[i].mensagem);
					// arguments[i].valor.focus();
					return false
				}
			}
			return true
		}
		function setNotValidate(element){
			var parent = findTdOfElement(element)
			element = document.getElementById(element);
			parent.style.backgroundColor = 'rgb(240, 198, 198)'
			element.addEventListener('change', ()=>{
				parent.style.backgroundColor = '';
			});
		}

		function setNotValidateSelf(element){
			element = document.getElementById(element);
			element.style.backgroundColor = 'rgb(240, 198, 198)'
			element.addEventListener('change', ()=>{
				element.style.backgroundColor = '';
			});
		}
		
		function setNotValidateByArray(array){
			array.forEach(element=>{
                var parent = findTdOfElement(element)
				element = document.getElementById(element);
				parent.setAttribute('style', 'background-color: rgb(240, 198, 198) !important');
				element.addEventListener('change', ()=>{
					parent.removeAttribute('style');
				});
			})
			
		}
		function setNotValidateByArrayElement(array){
			array.forEach(element=>{                
				element = document.getElementById(element);
				element.classList.add('input-grid-invalid');
				element.addEventListener('change', ()=>{
					element.classList.remove('input-grid-invalid');
				});
			})
			
		}
		function resetColorValidationElement(divId){
			var elementsToResetColor = getElementsInTable(divId,'input');
			elementsToResetColor = elementsToResetColor.concat(getElementsInTable(divId,'select'));
			
			for(var i=0;i<elementsToResetColor.length;i++){
				if(elementsToResetColor[i]!=""){
					const x = document.getElementById(elementsToResetColor[i]);
					x.classList.remove('input-grid-invalid');
				}
				
			}
		  }
		
		function validarCamposByArray(array){
			var validador = true
			for(i in array){
				let element = document.getElementById(array[i]);
				if(element.value == null || element.value == "undefined" || element.value == ""){
					element.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
					document.getElementById(array[i]).addEventListener('change', ()=>{
						element.parentElement.style.backgroundColor = '';
					});
					validador = false;
				}
				else{
					element.parentElement.style.backgroundColor = ''
				}
			}
			return validador
		}

		function validarCamposByArrayExcept(array,arrayExcept){
			var validador = true
			for(j in arrayExcept){
				var campoEx = document.getElementById(arrayExcept[j]);
				campoEx.parentElement.style.backgroundColor = '';
			}
	
			array = array.filter( ( el ) => !arrayExcept.includes( el ) );
			for(i in array){
				let element = document.getElementById(array[i]);
				if(element.value == null || element.value == "undefined" || element.value == ""){
					element.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
					document.getElementById(array[i]).addEventListener('change', ()=>{
						element.parentElement.style.backgroundColor = '';
					});
					validador = false;
				}
				else{
					element.parentElement.style.backgroundColor = ''
				}
			}
			return validador
		}

		function validarCamposByElement(){
			var validador = true
			for(i in arguments){
				let element = document.getElementById(arguments[i]);
				if(element.value == null || element.value == "undefined" || element.value == ""){
					element.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
					document.getElementById(arguments[i]).addEventListener('change', ()=>{
						element.parentElement.style.backgroundColor = '';
					});

					validador = false;
				}
				else{
					element.parentElement.style.backgroundColor = ''
				}
			}
			return validador
		}
		function validarTodosCamposTable(table){ 
			var validador = true
			var first = true
			var arrayCampos = getElementsInTable(table,'input');
			var camposSelect = getElementsInTable(table,'select');
			var camposTextarea = getElementsInTable(table,'textarea');
			arrayCampos = arrayCampos.concat(camposTextarea)	
			arrayCampos = arrayCampos.concat(camposSelect)
				for(i in arrayCampos){
						let campo = document.getElementById(arrayCampos[i][0]);
						if(campo.value == "undefined" || campo.value == ""){
							// alert(campoObrigatorio);
							campo.parentElement.style.backgroundColor = 'rgb(240, 198, 198)'
							document.getElementById(arrayCampos[i]).addEventListener('change', ()=>{
								campo.parentElement.style.backgroundColor = '';
							});
							if(first){
								// campo.focus();
								first = false;
							}
							validador =  false
						}
						else{
							campo.parentElement.style.backgroundColor = ''
						}
				}
			return validador;
		}
		function validarTodosCamposTableExcept(table, arrayExcept){ 
			var validador = true
			var first = true
			var arrayCampos = getElementsInTable(table,'input');
			var camposSelect = getElementsInTable(table,'select');
			var camposTextarea = getElementsInTable(table,'textarea');
			arrayCampos = arrayCampos.concat(camposSelect)	
			arrayCampos = arrayCampos.concat(camposTextarea)
			for(j in arrayExcept){
				var campoEx = document.getElementById(arrayExcept[j]);
				campoEx.parentElement.style.backgroundColor = '';
			}
			arrayCampos = arrayCampos.filter( ( el ) => !arrayExcept.includes( el ) );
				for(i in arrayCampos){
					var value = arrayCampos[i]

						let campo = document.getElementById(arrayCampos[i]);
						if(campo.value == "undefined" || campo.value == ""){
							campo.parentElement.style.backgroundColor = 'rgb(240, 198, 198)';
							document.getElementById(arrayCampos[i]).addEventListener('change', ()=>{
								campo.parentElement.style.backgroundColor = '';
							});
							if(first){
								// campo.focus();
								first = false;
							}
							validador =  false
						}
						else{
							campo.parentElement.style.backgroundColor = '';
						}
						
				}
			return validador;
		}
	
		function validarTodosExcept(table, arrayExcept){ 
			var validador = true
			var first = true
			var arrayCampos = getElementsInTable(table,'input');
			var camposSelect = getElementsInTable(table,'select');
			var camposTextarea = getElementsInTable(table,'textarea');
			arrayCampos = arrayCampos.concat(camposSelect)	
			arrayCampos = arrayCampos.concat(camposTextarea)
			for(j in arrayExcept){
				var campoEx = document.getElementById(arrayExcept[j]);
				campoEx.style.backgroundColor = '';
			}
	
			arrayCampos = arrayCampos.filter( ( el ) => !arrayExcept.includes( el ) );
				for(i in arrayCampos){
						let campo = document.getElementById(arrayCampos[i]);
						if(campo.value == "undefined" || campo.value == ""){
							document.getElementById(arrayCampos[i]).parentElement.style.backgroundColor = 'rgb(240, 198, 198)';
							document.getElementById(arrayCampos[i]).addEventListener('change', ()=>{
								campo.parentElement.style.backgroundColor = '';
							});
							
							if(first){
								// campo.focus();
								first = false;
							}
							validador =  false
						}
						else{
							campo.style.backgroundColor = '';
						}
						
				}
			return validador;
		}
/* FIM  */
function clearFieldsInTable(table){
	var arrayElements = [];   
	arrayElements = arrayElements.concat(getElementsInTable(table,'input'));
	arrayElements = arrayElements.concat(getElementsInTable(table,'select'));
	arrayElements = arrayElements.concat(getElementsInTable(table,'textarea'));
 
	arrayElements.forEach(element => {
		var field = document.getElementById(element);
		 
		if (field && field.type!= "button"  && field.type!= "submit") 
			field.value=""
   })
   
 }
 		
	function colorDatePicker(id){
		var element = document.getElementById(id);
		if (element.value == "") element.classList.remove('input-160-date-transparente-black')
		else element.classList.add('input-160-date-transparente-black')
	}
	function colorDateClick(id){
		var element = document.getElementById(id);
		element.classList.add('input-160-date-transparente-black')
	}

	function autoHeighTextAreaInRow(row) {
		var elements = getElementsByRowId(row,'textarea')
		var biggerHeight = 0;
		var arrayValue = []
		for (var i in elements){
			var element = document.getElementById(elements[i]);
			if(element.value != ""){
				arrayValue.push(true)
			}
		}
		if(arrayValue.includes(true)){
			for (var i in elements){
				var element = document.getElementById(elements[i]);
				if (element.scrollHeight > biggerHeight ){
					biggerHeight = element.scrollHeight;
				}
			}
			for (var i in elements){
				var element = document.getElementById(elements[i]);
				element.style.height = "50px";
				element.style.height = biggerHeight+10+"px";
			}
		}
	}

	function textAreaToJson(value){
		return value.replaceAll("\n","\\n")
	}
	


function findBrowser() { 
	var browser = (function (agent) {
		 switch (true) {
			 case agent.indexOf("edge") > -1: return "edge";
			 case agent.indexOf("edg") > -1: return "chromium based edge (dev or canary)";
			 case agent.indexOf("opr") > -1 && !!window.opr: return "opera";
			 case agent.indexOf("chrome") > -1 && !!window.chrome: return "chrome";
			 case agent.indexOf("trident") > -1: return "ie";
			 case agent.indexOf("firefox") > -1: return "firefox";
			 case agent.indexOf("safari") > -1: return "safari";
			 default: return "other";
		 }
	 })(window.navigator.userAgent.toLowerCase());
	 return browser
 }
 function formataEntradaP1NC(value){
	 var valor = checkEmptyness(value);
	 if(valor!=""){
		 return formatP1NC(valor)
	 }
	 else{return valor}
 }

 function arrumaInputDate(){
	 var datesFields = document.querySelectorAll("input[type=date]");

	 if(findBrowser() == "chrome"){
		for (var i=0;i<datesFields.length;i++){
			document.getElementById(datesFields[i].id).style.textAlign = "center";
			document.getElementById(datesFields[i].id).style.width = "110px";
		}
	 }
	 else if(findBrowser() == "edge"){
	  for (var i=0;i<datesFields.length;i++){
			document.getElementById(datesFields[i].id).style.paddingLeft = "1px";
			document.getElementById(datesFields[i].id).style.textAlign = "center";

		}
	 }
	 else if(findBrowser() == "firefox"){
	  for (var i=0;i<datesFields.length;i++){
			document.getElementById(datesFields[i].id).style.paddingLeft = "24px";
		}
	 }
 }

 function checkEmptyness(value){
	if(value == "undefined" || value == null || value == undefined){
		 return "";
	}
	else{return value}
 }
 function getInputsIntable(tabela){
    var array = []
    var table = document.getElementById(tabela);
    var linhas = table.getElementsByTagName('tr')
    for (var a=0;a<linhas.length;a++){
        var celulas = linhas[a].getElementsByTagName('td')
        for (var b=0;b<celulas.length;b++){
			try{
				var input = celulas[b].querySelector('input').id;
				array.push(input)
			}catch(e){
				
			}     
        }
    }
    return array
}
function loadDateInput(div){
	var dates = []
	var elements = document.getElementById(div).getElementsByTagName('input');
	for (var i=0;i<elements.length;i++){
		if(elements[i].type == "date"){
			dates.push(elements[i])
		}
	}
	return dates;
}
function setDateColor(div){
	var dates = loadDateInput(div);
	for (var i=0; i<dates.length;i++){
		var element = dates[i];
		element.setAttribute('onBlur', `colorDatePicker('${element.id}')`)
		element.setAttribute('onClick', `colorDateClick('${element.id}')`)
		if(element.value == ""){
			element.classList.remove('input-160-date-transparente-black')
		}
		else{
			element.classList.add('input-160-date-transparente-black')
		}
	}
}

function setFormatedDateValueDisabledField(campo,value){
	if(value!=""){
		document.getElementById(campo).value = value;
		colorDatePicker(campo)
	}
	else{
		document.getElementById(campo).value = "";
		colorDatePicker(campo)
	}
}

function setFormatedDateValueEnabledField(campo,value){
	if(value!=""){
		document.getElementById(campo).value = value;
		document.getElementById(campo).style.color = "black";
	}
	else{
		document.getElementById(campo).value = "";
		document.getElementById(campo).style.color = "transparent";
	}
}

function enableCells(row){
	var elementsRow = getElementsByRowId(row,'input')
	if(document.getElementById(elementsRow[0]).value != ""){
		for (var i = 1; i<elementsRow.length;i++){
			var elemento = document.getElementById(elementsRow[i])
			elemento.disabled = false
		}
		// document.getElementById(elementsRow[1]).focus()
	}
	else{
		for (var i = 1; i<elementsRow.length;i++){
			var elemento = document.getElementById(elementsRow[i])
			elemento.value = ""

			elemento.disabled = true
		}
	}
}

function handdleStatusEnable(array){
	for(var i = 0;i<array.length;i++){
		var elemento = document.getElementById(array[i][0]);
		elemento.disabled = false
		
	}
}
function handdleStatusDisable(array){
	for(var i = 0;i<array.length;i++){
		document.getElementById(array[i][0]).disabled = true;
    }
}

function duplicateValueToP(elementTo,valor){
	document.getElementById(elementTo).textContent = valor

}

function populaElements(tabela,objeto,elementType,decimalFormat,percFormat){
	
	var array = getElementsPopulate(tabela,elementType)
	var json =JSON.parse(objeto)
	var qtdDecimais = 2
	for(a in array){
		var atribute =json[array[a][0]];
		var type = array[a][1];
		document.getElementById(array[a][0]).value = checkEmptyness(atribute)
		if(type == "perc"){
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = percFormat(atribute);
			}
			else{
				document.getElementById(array[a][0]).value = percFormat(atribute);
			}
		}
		else if( type== "dec" ){
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = decimalFormat(atribute);
			}
			else{
				document.getElementById(array[a][0]).value = decimalFormat(atribute);
			}
		}
		else{
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = checkEmptyness(atribute);
			}
			else{
				document.getElementById(array[a][0]).value = checkEmptyness(atribute);
			}
			
		}
	}	
}

function populaElements2(tabela,objeto,elementType,decimalSeparator){
	var array = getElementsPopulate(tabela,elementType)
	var json =JSON.parse(objeto)
	var qtdDecimais = 2
	for(a in array){
		var atribute =json[array[a][0]];
		var type = array[a][1];
		document.getElementById(array[a][0]).value = checkEmptyness(atribute)
		if(type == "perc"){
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = formatarDecimalPorcentagem(decimalSeparator,qtdDecimais,atribute);
			}
			else{
				document.getElementById(array[a][0]).value = formatarDecimalPorcentagem(decimalSeparator,qtdDecimais,atribute);
			}
		}
		else if( type== "dec" ){
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = formatarDecimal(decimalSeparator,qtdDecimais,atribute);
			}
			else{
				document.getElementById(array[a][0]).value = formatarDecimal(decimalSeparator,qtdDecimais,atribute);
			}
		}
		else{
			if(elementType=='p'){
				document.getElementById(array[a][0]).textContent = checkEmptyness(atribute);
			}
			else{
				document.getElementById(array[a][0]).value = checkEmptyness(atribute);
			}
			
		}
	}	
}
function getElementsPopulate(tabela,elementType){
    var array = []
    var table = document.getElementById(tabela);
    var linhas = table.getElementsByTagName('tr')
    for (var a=0;a<linhas.length;a++){
        var celulas = linhas[a].getElementsByTagName('td')
        for (var b=0;b<celulas.length;b++){
			try{
				var auxArray = [celulas[b].querySelector(elementType).id,celulas[b].querySelector(elementType).name];
				array.push(auxArray)
			}catch(e){
				
			}
			
            
        }
    }
    return array
}

function getQuantityDays(unit,value){
	switch(unit){
	  case '01': return parseFloat(value);break;
	  case '02': return parseFloat(value)*7;break;
	  case '03': return parseFloat(value)*30;break;
	  case '04': return parseFloat(value)*365;break;
	  default: return 0;
	}
  }

  function resetColorValidation(divId){
	var elementsToResetColor = getElementsInTable(divId,'input');
	elementsToResetColor = elementsToResetColor.concat(getElementsInTable(divId,'select'));
	
	for(var i=0;i<elementsToResetColor.length;i++){
		if(elementsToResetColor[i]!=""){
			var td = findTdOfElement(elementsToResetColor[i]);
			td.style.backgroundColor = ''
		}
		
	}
  }
  function handleEnabledDisabledFieldMultipleButtons(div,buttonEnable,buttonDisable,option){
	var elements = document.getElementById(div).getElementsByClassName("disabled-field");
	var enableButton = document.getElementById(buttonEnable);
	var disableButton = document.getElementById(buttonDisable);   
	
	var buttonsEnabled = document.getElementById(div).getElementsByClassName('enabled-button')
	var buttonsDisabled = document.getElementById(div).getElementsByClassName('disabled-button')

	switch(option){
		case "enable":
			for(var i=0;i<elements.length;i++){
				if(elements[i].id!=""){
					var parentTD = findTdOfElement(elements[i].id)
					parentTD.classList.add('enabled-cell')
					parentTD.classList.remove('td-transparent')
				}				
				elements[i].disabled = false;
				if(elements[i].type != 'checkbox')
					elements[i].style.appearance = '';
				if(elements[i].type == 'date' && elements[i].value != ""){
					elements[i].classList.add('input-160-date-transparente-black');
				}
				if(elements[i].nodeName == 'IMG'){					
					elements[i].style.display="";					
				}                      
			};
			enableButton.style.display = 'none';
			disableButton.style.display = '';
			for(var j=0;j<buttonsEnabled.length;j++){
				buttonsEnabled[j].style.display = ''
			}
			for(var j=0;j<buttonsDisabled.length;j++){
				buttonsDisabled[j].style.display = 'none'
			}

		break;
		case "disable":
			for(var i=0;i<elements.length;i++){
				if(elements[i].id!=""){
					var parentTD = findTdOfElement(elements[i].id)	
					parentTD.classList.remove('enabled-cell')
					parentTD.classList.add('td-transparent')
				}
				elements[i].disabled = true;
				if(elements[i].type != 'checkbox')
					elements[i].style.appearance = 'none';                    
				if(elements[i].type == 'date' && elements[i].value == ""){
					elements[i].style.color = '';
				}                    
				if(elements[i].nodeName == 'IMG'){
					elements[i].style.display="none";					
				}                      
			};
			enableButton.style.display = '';
			disableButton.style.display = 'none';
			for(var j=0;j<buttonsEnabled.length;j++){
				buttonsEnabled[j].style.display = 'none'
			}
			for(var j=0;j<buttonsDisabled.length;j++){
				buttonsDisabled[j].style.display = ''
			}

		break;
	}
}


function handleEnabledDisabledField(div,buttonEnable,buttonDisable,buttonUpdate,buttonDelete,option){
	var elements = document.getElementById(div).getElementsByClassName("disabled-field");
	var enableButton = document.getElementById(buttonEnable);
	var disableButton = document.getElementById(buttonDisable);   
	var updateButton = document.getElementById(buttonUpdate);
	var deleteButton = document.getElementById(buttonDelete);

	switch(option){
		case "enable":
			for(var i=0;i<elements.length;i++){
				if(elements[i].id!=""){
					var parentTD = findTdOfElement(elements[i].id)
					parentTD.classList.add('enabled-cell')
					parentTD.classList.remove('td-transparent')
				}				
				elements[i].disabled = false;
				elements[i].style.appearance = '';
				if(elements[i].type == 'date' && elements[i].value != ""){
					elements[i].classList.add('input-160-date-transparente-black');
				}
				if(elements[i].nodeName == 'IMG'){					
					elements[i].style.display="";					
				}                      
			};
			enableButton.style.display = 'none';
			disableButton.style.display = '';
			if(updateButton!==null)
				updateButton.style.display = '';
			if(deleteButton!==null)
				deleteButton.style.display = '';                                
			;
		break;
		case "disable":
			for(var i=0;i<elements.length;i++){
				if(elements[i].id!=""){
					var parentTD = findTdOfElement(elements[i].id)	
					parentTD.classList.remove('enabled-cell')
					parentTD.classList.add('td-transparent')
				}
				elements[i].disabled = true;
				elements[i].style.appearance = 'none';                    
				if(elements[i].type == 'date' && elements[i].value == ""){
					elements[i].style.color = '';
				}                    
				if(elements[i].nodeName == 'IMG'){
					elements[i].style.display="none";					
				}                      
			};
			enableButton.style.display = '';
			disableButton.style.display = 'none';
			if(updateButton!==null)
				updateButton.style.display = 'none';
			if(deleteButton!==null)
				deleteButton.style.display = 'none';      
			                             
		break;
	}
}

function validaLotSize(lotSizeMinimum,lotSizeMultiple,messages){
	var lotSizeEffectiveMinimum = document.getElementById(lotSizeMinimum);
	lotSizeEffectiveMinimum.parentElement.style.backgroundColor = ''

	var lotSizeEffectiveMultiple = document.getElementById(lotSizeMinimum);
	lotSizeEffectiveMultiple.parentElement.style.backgroundColor = '';

	var validate = true
	  var error = "";
	  var newLine = "\r\n"

	var minimum = parseFloat(stringToDouble2($('#'+lotSizeMinimum).val()));
	var multiple = parseFloat(stringToDouble2($('#'+lotSizeMultiple).val()));
	
	if(!checkMultiple(minimum,multiple) && multiple != "" && minimum != ""){
		validate = false
		setNotValidateByArray([lotSizeMinimum,lotSizeMultiple])
		if(error!="") error+=newLine		                                            		
		error+=' '+messages.minimumLotSizeNotMultiple
	  }
 
	if(!validate)
	  alert(error)
	return validate
}


function listDemandForecastHistoryByManagementUnitClientAndBucketType(spuId,clientCompanyId){
	var retorno = [];	
	$.ajax({
		url: 'listDemandForecastHistoryByCompany',
		type: "POST",
		async: false,
		data: "{\"spuId\":\""+spuId		
		+"\",\"clientCompanyId\":\""+clientCompanyId		
		+"\"}",
		contentType: "application/json",
		dataType: "text",
		success : function(data) {            
			if(data!=""){               
				retorno = JSON.parse(data)
			}
		 },
		 error: function (jqXHR,error, errorThrown) {
				  alert(msgErroAjax(jqXHR.responseText))
			},
		 complete: function (jqXHR, textStatus) {
		 }
	 });
	 return retorno;
}

function validaLeadTime(type,leadTimeMinimum,leadTimeAverage,leadTimeModal,leadTimeMaximum, messages){
	document.getElementById(leadTimeMinimum).parentElement.style.backgroundColor = ''
	document.getElementById(leadTimeAverage).parentElement.style.backgroundColor = ''
	document.getElementById(leadTimeModal).parentElement.style.backgroundColor = ''
	document.getElementById(leadTimeMaximum).parentElement.style.backgroundColor = ''

	var validate = true
	var error = "";
	var newLine = "\r\n"

	var minimum = parseFloat(stringToDouble2($('#'+leadTimeMinimum).val()));
	var average = parseFloat(stringToDouble2($('#'+leadTimeAverage).val()));
    
	var moda = parseFloat(stringToDouble2($('#'+leadTimeModal).val()));
	var maximum = parseFloat(stringToDouble2($('#'+leadTimeMaximum).val()));
   
	if(maximum < minimum){
	  validate = false
	  setNotValidateByArray([leadTimeMinimum,leadTimeMaximum])
	  if(error!="") error+=newLine
		error+=messages.maximumLessThanMinimum
	 }
	 if(type=="01"){
        if(!isNaN(average)){
        
             var validateAverage = true;
                if(average < minimum || average > maximum){
                    validateAverage = false;
                    setNotValidateByArray([leadTimeAverage])						
                  }
                if( (minimum != maximum) && (average == minimum || average == maximum) ){
                    validateAverage = false;
                    setNotValidateByArray([leadTimeAverage])			
                }
                if(!(average>=(2*minimum+maximum)/3)){
                    validateAverage = false;			
                    setNotValidateByArray([leadTimeAverage])			
                }
                if(!(average<=(2*maximum+minimum)/3)){
                    setNotValidateByArray([leadTimeAverage])
                    validateAverage = false;			
                }
                if(!validateAverage){
                    if(error!="") error+=newLine
                        error+=messages.averageLeadTimeNotBetween
                }
        }		
	 }
	 else{
        if(!isNaN(moda) && !isNaN(minimum) && !isNaN(maximum)){
             var validateModa = true;
             var media = ((maximum + minimum + moda)/3);
            if(moda < minimum || moda > maximum){                
                validateModa = false;
                setNotValidateByArray([leadTimeModal])			
              }	
            if(!(media>=(2*minimum+maximum)/3)){                
                validateModa = false;			
                setNotValidateByArray([leadTimeModal])			
            }
            if(!(media<=(2*maximum+minimum)/3)){                
                setNotValidateByArray([leadTimeModal])
                validateModa = false;			
            }
            if(!validateModa){
                if(error!="") error+=newLine
                    error+=messages.modalLeadTimeNotBetween
            }
        }
		
	 }		
	return error
}


function clearBackgroundByArray(array){
	array.forEach (el=>{
		var parentTD = findTdOfElement(el);
		parentTD.style.backgroundColor = ''
	 })
}

function findTdOfElement(el){
    var parentTD = document.getElementById(el).parentElement
    while(parentTD.nodeName!="TD"){
        parentTD = parentTD.parentElement
    }
    return parentTD;
}

function getElementsInTable(tabela,elementType){
    var array = []
    var table = document.getElementById(tabela);
    if(table==null)
    	return array;
    var linhas = table.getElementsByTagName('tr')
    for (var a=0;a<linhas.length;a++){
        var celulas = linhas[a].getElementsByTagName('td')
        for (var b=0;b<celulas.length;b++){
			try{
				if(array.indexOf(celulas[b].querySelector(elementType).id) == -1)
					array.push(celulas[b].querySelector(elementType).id)
			}catch(e){
				
			}
        }
    }
    return array
}

function getElementsByRowId(row,elementType){
    var array = []
    var table = document.getElementById(row);
    var celulas = table.getElementsByTagName('td')
    for (var b=0;b<celulas.length;b++){
			try{
				array.push(celulas[b].querySelector(elementType).id)
			}catch(e){
			}
        }
    
    return array
}
function getRowsByClassName(element,className){
	return document.getElementById(element).getElementsByClassName(className)

}
function getElementsInRow(row,elementType){   
    var celulas = row.getElementsByTagName('td')
    for (var b=0;b<celulas.length;b++){
			try{
				array.push(celulas[b].querySelector(elementType).id)
			}catch(e){
			}
        }
    
    return array
}

function getTextAreasIntable(tabela){
    var array = []
    var table = document.getElementById(tabela);
    var linhas = table.getElementsByTagName('tr')
    for (var a=3;a<linhas.length;a++){
        
        var celulas = linhas[a].getElementsByTagName('td')
        for (var b=2;b<celulas.length;b++){
			var input = celulas[b].querySelector('textarea').id;
            array.push(input)
        }
    }
    return array
}