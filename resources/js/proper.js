function atualizarRelogio(){
	now = new Date;
	var dia = now.getDate();
	var mes = (now.getMonth()+1);
	var hora = now.getHours();
	var minuto = now.getMinutes();
	var segundo = now.getSeconds();
	if(dia<="9")
		dia="0"+dia;
	if(mes<"9")
		mes="0"+mes;
	if(hora<="9")
		hora="0"+hora;
	if(minuto<="9")
		minuto="0"+minuto;
	if(segundo<="9")
		segundo="0"+segundo;
	dataHora = dia+"/"+mes+"/"+(now.getYear()+1900)+" "+hora+":"+minuto+":"+segundo;

	var div = document.getElementById("tituloDataHora");

	div.innerHTML = dataHora;
}

function checkSizePanels()
{
		$('#menue').css('height', $('#ui-layout-west').height());
		$('#demo').css('height', $('#result').height()-30);
		$('.wrapper').css('height', $('#demo').height()-alturaEdicao);
		$('#demo').css('width', $('.ui-layout-center').width()-30);
}

function formataData( date ){

	var dia = date.getDate();
	var mes = (date.getMonth()+1);

	if(dia<="9")
		dia="0"+dia;
	if(mes<"9")
		mes="0"+mes;

	dataHora = dia+"/"+mes+"/"+(now.getYear()+1900);

	return dataHora;
}
function formataData2( date ){

	var dia = date.getDate();
	var mes = (date.getMonth()+1);

	if(dia<="9")
		dia="0"+dia;
	if(mes<"9")
		mes="0"+mes;

	dataHora = dia+"/"+mes+"/"+(now.getYear()+1900);

	return dataHora;
}
function numFormat( cellvalue, options, rowObject ){
    return thousands_separators(cellvalue);
}
function thousands_separators(num)
{
 var num_parts = num.toString().split(",");
 num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ".");
 return num_parts.join(",");
}
function replaceAll(str, de, para){
    var pos = str.indexOf(de);
    while (pos > -1){
		str = str.replace(de, para);
		pos = str.indexOf(de);
	}
    return (str);
}
function msgErroAjax(msg){
	
	var n = msg.search("###");
	if(n>-1){
		var msg2=msg.substring(n + 3);
		var m = msg2.search("###");
	
		return(msg2.substring(0,m));
	}
	var n = msg.search("<title>");
	var msg2=msg.substring(n + 7);
	var m = msg2.search("</title>");

	return(msg2.substring(0,m));
}

function chamaAjax(funcao){
	nomePagina = "";
	$("body").css("cursor", "wait");
    $.ajax({
        url : funcao,
        success : function(data) {
        	
            $('#result').html(data);
       
        },
        complete: function (jqXHR, textStatus) {
        $("body").css("cursor", "default");
    }

    });

}

function chamaAjaxSync(funcao){
	nomePagina = "";
	$("body").css("cursor", "wait");
    $.ajax({
        url : funcao,
        async: false,
        success : function(data) {
        	
            $('#result').html(data);
       
        },
        complete: function (jqXHR, textStatus) {
        $("body").css("cursor", "default");
		console.log("Carregou página chamaAjax")
    }

    });

}

function toolTipsTitle() {
/*	document.getElementById("tooltip").style.display = "none";
	var div = document.getElementById("titulopg");
	
	div.onmouseover = function() {
		var varTooltip = document.getElementById("tooltip").innerHTML;
		if(!varTooltip=="")
		  document.getElementById("tooltip").style.display = "block";
	}
	div.onmouseout = function() {
		  document.getElementById("tooltip").style.display = "none";
	}
*/
}
/* funcao para mover div */
function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
  if (document.getElementById(elmnt.id + "header")) {
    /* if present, the header is where you move the DIV from:*/
    document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
  } else {
    /* otherwise, move the DIV from anywhere inside the DIV:*/
    elmnt.onmousedown = dragMouseDown;
  }

  function dragMouseDown(e) {
	elmnt.style.right = 'unset';	

    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    // call a function whenever the cursor moves:
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;
	
    // set the element's new position:
	if((elmnt.offsetTop - pos2)>40)
    	elmnt.style.top = (elmnt.offsetTop - pos2) + "px";

	if((elmnt.offsetLeft - pos1)<$('#result').width())		
    	elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
  }

  function closeDragElement() {
    /* stop moving when mouse button is released:*/
    document.onmouseup = null;
    document.onmousemove = null;
  }
  
  
  
}

function gerarCsv(grid, nomeArquivo){
	gerarCsv(grid, nomeArquivo,null);
}

function gerarCsv(grid, nomeArquivo, titulo){
	
	var colunas = grid.jqGrid('getGridParam','colModel');
	var titles = [];
	var data = [];
	for( i = 0; i< colunas.length; i++ ) {
		if(colunas[i].hidden==false)
			titles.push(colunas[i].label);
	}
	
	 
	var rows = grid.jqGrid('getDataIDs');
	
	for (i = 0; i < rows.length; i++)
	{
		var rowData = grid.jqGrid('getRowData', rows[i]);
		for( j = 0; j< colunas.length; j++ ) {
			if(colunas[j].hidden==false){
				data.push(rowData[colunas[j].name]);  			
			}
		}
	}

	/* * Convert our data to CSV string */
	var CSVString;
	if(titulo==null)
	    CSVString = prepCSVRow(titles, titles.length, '');
	else
		CSVString = '"' + titulo + '"' + '\r\n' + prepCSVRow(titles, titles.length, '');
	CSVString = prepCSVRow(data, titles.length, CSVString);
	var blob = new Blob(["\ufeff", CSVString]);
	//var csvData = new Blob([content], { type: 'text/csv' });
	if (window.navigator && window.navigator.msSaveOrOpenBlob) { // for IE
	    window.navigator.msSaveOrOpenBlob(blob, nomeArquivo);
	} else { // for Non-IE (chrome, firefox etc.)
	   	/* * Make CSV downloadable*/
		var downloadLink = document.createElement("a");
		// var blob = new Blob(["\ufeff", CSVString]);
		var url = URL.createObjectURL(blob);
		downloadLink.href = url;
		downloadLink.download = nomeArquivo;
		/** Actually download CSV */
		document.body.appendChild(downloadLink);
		downloadLink.click();
		document.body.removeChild(downloadLink);
	}

}

/** Convert data array to CSV string
* @param arr {Array} - the actual data
* @param columnCount {Number} - the amount to split the data into columns
* @param initial {String} - initial string to append to CSV string
* return {String} - ready CSV string */
function prepCSVRow(arr, columnCount, initial) {
	var row = ''; // this will hold data
	var delimeter = ';'; // data slice separator, in excel it's `;`, in usual CSv it's `,`
	var newLine = '\r\n'; // newline separator for CSV row
	function splitArray(_arr, _count) {
		var splitted = [];
		var result = [];
		_arr.forEach(function(item, idx) {
			if ((idx + 1) % _count === 0) {
				splitted.push('"' + item + '"');
				result.push(splitted);
				splitted = [];
			} else {
				splitted.push('"' + item + '"');
			}
		});
		return result;
	}
	var plainArr = splitArray(arr, columnCount);
	// don't know how to explain this
	// you just have to like follow the code
	// and you understand, it's pretty simple
	// it converts `['a', 'b', 'c']` to `a,b,c` string
	plainArr.forEach(function(arrItem) {
		arrItem.forEach(function(item, idx) {
			row += item + ((idx + 1) === arrItem.length ? '' : delimeter);
		});
		row += newLine;
	});
	return initial + row;
} 

// end export to CSV file


/**solicita a geracao do Excel para o controller e abre nova janela para exibir/baixar
 * 
 * parametros:
 * titulo - usado no nome da aba
 * url - chave do controller
 * urlExcel - janela do Excel
 * msg - mensagem sem dados
 * arquivo - noe do arquivo gerado
 * @returns null
 */
function exportExcel(titulo,url,urlExcel,msg,arquivo,chaveId){

	$.ajax({
		   url: url,
		   type: "POST",
		   data: "{\"dados\":\""+titulo
		   +"\",\"dados2\":\""+chaveId
		   +"\",\"dados3\":\""+arquivo
			   +"\"}",
		   contentType: "application/json",
		   dataType: "text",
		   success : function(data) {
			   if(data=='Sem Dados'){
				   alert(msg)
			   }else
				   var newwindow=window.open(urlExcel + data,"window2","");
		 },
			 error: function(jqXHR, textStatus, errorThrown) {
					alert(msgErroAjax(jqXHR.responseText));
		 },
			 complete: function (jqXHR, textStatus) {
		 }
	});
}