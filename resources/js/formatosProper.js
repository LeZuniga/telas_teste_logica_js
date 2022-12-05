
function formatI0NC (cellvalue, options, rowObject)
{ 
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return Math.round(cellvalue);
}
function formatR0NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return Math.round(cellvalue);
}
function formatR1NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(1);
	value = value.replace('.', ',');
   return value;
}
function formatR2NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(2);
	value = value.replace('.', ',');
   return value;
}

function getFormatDateInputFromTS(timeStamp){
	if(timeStamp==null || timeStamp== "null" || timeStamp === ""){
		return "";
	}	
	var date = new Date(parseInt(timeStamp));
	var dd_mm_yyyy = date.toLocaleDateString();
	var yyyy_mm_dd = dd_mm_yyyy.replace(/(\d+)\/(\d+)\/(\d+)/g, "$3-$2-$1");
	return yyyy_mm_dd;
}
function formatR3NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(3);
	value = value.replace('.', ',');
   return value;
}
function formatR4NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(4);
	value = value.replace('.', ',');
   return value;
}
function formataDataHora (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	hora = d.getHours();
	if(hora<10)
		hora="0"+hora;
	minuto = d.getMinutes();
	if(minuto<10)
		minuto="0"+minuto;
	segundo = d.getSeconds();
	if(segundo<10)
		segundo="0"+segundo;
	ano = d.getFullYear();

	var dt = dia+"/"+mes+"/"+ano+" "+hora+":"+minuto+":"+segundo;
	if(dt=="31/12/1969 22:00:00")
		dt="";
   return dt;
}
function formataData (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = dia+"/"+mes+"/"+ano;
	if(dt=="31/12/1969")
		dt="";
   return dt;
}
function formataDataToIsoString (cellvalue, options, rowObject)
{
	if(cellvalue == "" || cellvalue == null || cellvalue == undefined )
		return ""
	var d = new Date(cellvalue);
	d.setTime(d.getTime()+ d.getTimezoneOffset()*60*1000)
	//d = d.toISOString()
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = dia+"/"+mes+"/"+ano;
	if(dt=="31/12/1969")
		dt="";
   return dt;
}

function formataDateToSelect(value){
	var date = formataDataToIsoString(value)
	return converteData(date)
}
function converteData(mDate){
    var date = mDate
    date = date.split("/") //10/12/2020
    date = new Date(date[2], date[1], date[0])
    var ano = date.getFullYear();
    var mes = date.getMonth()
    if(mes==0) mes = 12
    if(mes<10) mes = '0'+mes
    var dia = date.getDate()
    if(dia<10) dia = '0'+dia
    var nDate = ano+'-'+mes+'-'+dia;
    
	return nDate
}
function converteDataGridToInput(mDate){
	if(mDate == null || mDate == undefined || mDate == "")
        return ""
    var date = mDate
    date = date.split("/") //10/12/2020
    date = new Date(date[2], date[1], date[0])
    var ano = date.getFullYear();
    var mes = date.getMonth()
    if(mes==0) {
        mes = 12;
        ano -=1;
    }
    if(mes<10) mes = '0'+mes
    var dia = date.getDate()
    if(dia<10) dia = '0'+dia
    var nDate = ano+'-'+mes+'-'+dia;
    return nDate
}

function formataDataStringToDate(cellvalue, options, rowObject)
{
	if(cellvalue == "" || cellvalue == null || cellvalue == undefined )
		return ""
	var d = new Date(cellvalue);
	d.setTime(d.getTime()+ d.getTimezoneOffset()*60*1000)
   return Date.parse(d);
}

function formatDTC (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = dia+"/"+mes+"/"+ano;
	if(dt=="31/12/1969")
		dt="";
   return dt;
}
function formataData01 (cellvalue, options, rowObject)
{
    var dt = "";
    if(cellvalue!=undefined && cellvalue!=""){
        var d = new Date(cellvalue);
        var mes = d.getMonth();
        mes = mes+1;
        if(mes<10)
            mes="0"+mes;
        dia = d.getDate();
        if(dia<10)
            dia="0"+dia;

        ano = d.getFullYear();

        dt = dia+"/"+mes+"/"+ano;
        if(dt=="31/12/1969")
            dt="";
    }	
   return dt;
}
function formataData02 (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = dia+"/"+ano+"/"+mes;
	if(dt=="31/1969/12")
		dt="";
   return dt;
}
function formataData03 (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = ano+"/"+mes+"/"+dia;
	if(dt=="1969/12/31")
		dt="";
   return dt;
}
function formataData04 (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = ano+"/"+dia+"/"+mes;
	if(dt=="1969/31/12")
		dt="";
   return dt;
}
function formataData05 (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = mes+"/"+dia+"/"+ano;
	if(dt=="12/31/1969")
		dt="";
   return dt;
}
function formataData06 (cellvalue, options, rowObject)
{
	var d = new Date(cellvalue);
	var mes = d.getMonth();
	mes = mes+1;
	if(mes<10)
		mes="0"+mes;
	dia = d.getDate();
	if(dia<10)
		dia="0"+dia;
	
	ano = d.getFullYear();

	var dt = mes+"/"+ano+"/"+dia;
	if(dt=="12/1969/31")
		dt="";
   return dt;
}
function formatRIPC(cellValue, opts, rowObject){ 
    if(cellValue != 0){
        return '<span style="color:red;font-weight: bold;">'+cellValue+'</span>'; 
    }
    else return cellValue
}

function formatABCC(cellValue, opts, rowObject){ 
	
    if(cellValue == "A"){		
        return '<span style="color:goldenrod;font-weight: bold;">'+cellValue+'</span>'; 
    }
	else if(cellValue=="B"){		
		return '<span style="color:yellow;font-weight: bold;">'+cellValue+'</span>'; 
	}
    else return cellValue
}

function formatR0TC (cellvalue, options, rowObject)
{	
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = cellvalue.toString()
	value = value.replace(",",".")
	value = "" + Math.round(value);
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.');
   return value;
}
function formatR0TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	var value = "" + Math.round(cellvalue);
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
   return value;
}
function formatR1TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
    var value = parseFloat(stringToDouble2(cellvalue.toString()));
	
    var value = value.toFixed(1);
	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.');
   return value;
}
function formatR2TC (cellvalue, options, rowObject)
{
	if(cellvalue===null || cellvalue==="null" || cellvalue==="" || cellvalue===undefined )
		return "";
   var value = parseFloat(stringToDouble2(cellvalue.toString()));
    var value = value.toFixed(2)

	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.');
   return value;
}
function formatR4TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
		var value = parseFloat(cellvalue);
	var value = value.toFixed(4);
	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{4})+(?!\d))/g, '$1.');
   return value;
}

function formatR5TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
		var value = parseFloat(cellvalue);
	var value = value.toFixed(5);
	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{5})+(?!\d))/g, '$1.');
   return value;
}
function formatR6TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
		var value = parseFloat(cellvalue);
	var value = value.toFixed(6);
	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{6})+(?!\d))/g, '$1.');
   return value;
}

function formatR3TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(3);
	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.');
   return value;
}

function formatP0NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR0NC (cellvalue, options, rowObject) + "%";
}
function formatP1NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR1NC (cellvalue, options, rowObject) + "%";
}
function formatP2NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";

	cellvalue = cellvalue*100
	return formatR2NC (cellvalue, options, rowObject) + "%";
}
function formatP3NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR3NC (cellvalue, options, rowObject) + "%";
}

function formatI0NP (cellvalue, options, rowObject){
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return Math.round(cellvalue);
}

function formatP0TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === ""  )
		return "";
	cellvalue = cellvalue*100
   return formatR0TC (cellvalue, options, rowObject) + "%";
}
function formatP1TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR1TC (cellvalue, options, rowObject) + "%";
}
function formatP2TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue==="")
		return "";
	cellvalue = cellvalue*100
	return formatR2TC (cellvalue, options, rowObject) + "%";
}
function formatP3TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR3TC (cellvalue, options, rowObject) + "%";
}
function formatP4TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR4TC (cellvalue, options, rowObject) + "%";
}
function formatC0NMGC (cellvalue, options, rowObject)
{
	let currency = rowObject.managementGroupCurrencyCode
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return currency + " " + formatR0NC (cellvalue, options, rowObject);
}

function formatC0NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return currency + " " + formatR0NC (cellvalue, options, rowObject);
}
function formatC0TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	return currency + " " + formatR0TC (cellvalue, options, rowObject);
}
function formatC2TC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return currency + " " + formatR2TC (cellvalue, options, rowObject);
}

function formatC0TMGC (cellvalue, options, rowObject)
{
	let currency = rowObject.managementGroupCurrencyCode
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	return '<span style="float: left;">'+currency+'</span>' + " " +  '<span style="text-align: right;float: right;">'+formatR0TC (cellvalue, options, rowObject)+'</span>';
}

function formatC2MGTC (cellvalue, options, rowObject)
{
	let currency = rowObject.managementGroupCurrencyCode
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";        
	return '<span style="float: left;">'+currency+'</span>' + " " +  '<span style="text-align: right;float: right;">'+formatR2TC (cellvalue, options, rowObject)+'</span>';
}

function formatC0TMUC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";        
    let currency = managementUnitCurrencyCode
    if(rowObject)		
        return '<span style="float: left;color:#5d5d5d">'+currency+'</span>' + " " +  '<span style="text-align: right;float: right;">'+formatR0TC (cellvalue, options, rowObject)+'</span>'; 
    else {
		if(cellvalue.toString().includes('span'))
			cellvalue = cellvalue.split('>')[3].split('<')[0]   
        return formatR2TC (cellvalue, options, rowObject); 
    }
}

function formatC2MUTC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";        
    let currency = managementUnitCurrencyCode
	if(rowObject){    		
		return '<span style="float: left;color:#5d5d5d">'+currency+'</span>' + " " +  '<span style="text-align: right;float: right;">'+formatR2TC (cellvalue, options, rowObject)+'</span>'; 
	}
	else {     
		if(cellvalue.toString().includes('span'))
			cellvalue = cellvalue.split('>')[3].split('<')[0]   
		return formatR2TC (cellvalue, options, rowObject); 
	}

}


function formatC2NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";

   return currency + " " + formatR2NC (cellvalue, options, rowObject);
}
function formatI2 (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	if(cellvalue<9)
		valor = "0" + cellvalue;
	else
		valor = cellvalue;
   return valor;
}
function formatarTrad(formato,valor){
	if(formato="formatR2TC")
		return formatR2TC(valor,'','')
	if(formato="formatP2TC")
		return formatP2TC(valor,'','')		
	return valor;
}
function trim2(valor){
	return valor.replace(/^\s*([\S\s]*?)\s*$/, '$1');
}

function strToNumber(valor){
	valor = valor.replace("%","");
	valor = valor.replace(",",".")
	return valor

}
function stringToDouble(valor){
	if(valor.trim()=="")
		return null;
	var saida = valor
	saida=replaceAll(saida,'%',''); // retira %
	saida=replaceAll(saida,'.',''); // retira milhar 1.000,00
	saida=saida.replace(",",".");
	saida = saida.trim();
	return saida;
}
function stringToDouble2(valor){
	if(!valor)
		return null
	if(valor.trim()=="")
		return "";
	var saida = valor
	let percent = false;
	if(valor.includes("%"))
		percent = true;
	saida=replaceAll(saida,'%',''); // retira %
	saida=saida.replaceAll(",",".");
    
    if(saida.split('.').length >2){
        var tmp = "";
        for(var i=0;i<saida.split('.').length-1;i++){
            tmp+=saida.split('.')[i]
        }
        saida = tmp + '.' + saida.split('.')[saida.split('.').length-1]
    }
	saida = saida.trim();
	if(percent)
		saida = saida/100;	
	return saida;
}

function alinhaEsquerda(grid,campo){
    jQuery(grid).jqGrid('setLabel', campo, '', {'text-align':'left'});
}

function formatR1TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   var value = parseFloat(stringToDouble2(cellvalue.toString()));
    var value = value.toFixed(1);
//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
   return value;
}
function formatR2TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   var value = parseFloat(stringToDouble2(cellvalue.toString()));
    var value = value.toFixed(2)

//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
   return value;
}
function formatR4TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
    var value = parseFloat(cellvalue);
	var value = value.toFixed(4);
//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{4})+(?!\d))/g, '$1,');
   return value;
}
function formatR5TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
    var value = parseFloat(cellvalue);
	var value = value.toFixed(5);
//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{5})+(?!\d))/g, '$1,');
   return value;
}
function formatR6TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
    var value = parseFloat(cellvalue);
	var value = value.toFixed(6);
//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{6})+(?!\d))/g, '$1,');
   return value;
}
function formatR3TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   var value = parseFloat(stringToDouble2(cellvalue.toString()));
	var value = value.toFixed(3);
//	value = value.replace('.', ',');
	value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
   return value;
}

function formatP0NP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR0NP (cellvalue, options, rowObject) + "%";
}
function formatP1NP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR1NP (cellvalue, options, rowObject) + "%";
}
function formatP2NP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";

	cellvalue = cellvalue*100
	return formatR2NP (cellvalue, options, rowObject) + "%";
}
function formatP3NP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR3NP (cellvalue, options, rowObject) + "%";
}


function formatP0TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR0TP (cellvalue, options, rowObject) + "%";
}
function formatP1TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR1TP (cellvalue, options, rowObject) + "%";
}
function formatP2TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR2TP (cellvalue, options, rowObject) + "%";
}
function formatP3TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR3TP (cellvalue, options, rowObject) + "%";
}
function formatP4TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	cellvalue = cellvalue*100
	return formatR4TP (cellvalue, options, rowObject) + "%";
}
function formatC0NC (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return currency + " " + formatR0NC (cellvalue, options, rowObject);
}
function formatC0TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
	return currency + " " + formatR0TP (cellvalue, options, rowObject);
}
function formatC2TP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";
   return currency + " " + formatR2TP (cellvalue, options, rowObject);
}
function formatC2NP (cellvalue, options, rowObject)
{
	if(cellvalue==null || cellvalue== "null" || cellvalue === "" )
		return "";

   return currency + " " + formatR2NP (cellvalue, options, rowObject);
}


function converteNumero(caracterDecimal, valor){
	if(caracterDecimal==','){
		
		var valor2 = replaceAll(valor,',','D');
		valor2 = replaceAll(valor2,'.','M');
		valor2 = replaceAll(valor2,'M','');
		valor2 = replaceAll(valor2,'D','.');
		
		return valor2;
	}else{
		
		var valor2 = replaceAll(valor,',','');
	}
	return valor2;
}

function formatarDecimal(caracterDecimal, quantidadeDecimais, valor){
	var valorFormatado;
	if(valor===null || valor === "undefined" || valor === ""){
		
		return "";
	}
	if(caracterDecimal==','){
		switch (quantidadeDecimais) {
	    case 0:
	    	valorFormatado = formatR0TC(valor, "", "");
	        break;
	    case 1:
	    	valorFormatado = formatR1TC(valor, "", "");
	        break;
	    case 2:
	    	valorFormatado = formatR2TC(valor, "", "");
	        break;
	    case 3:
	    	valorFormatado = formatR3TC(valor, "", "");
	        break;
	    case 4:
	    	valorFormatado = formatR4TC(valor, "", "");
	        break;
	    default:
	    	valorFormatado = "";
		}
	}
	else{
		switch (quantidadeDecimais) {
	    case 0:
	    	valorFormatado = formatR0TP(valor, "", "");
	        break;
	    case 1:
	    	valorFormatado = formatR1TP(valor, "", "");
	        break;
	    case 2:
	    	valorFormatado = formatR2TP(valor, "", "");
	        break;
	    case 3:
	    	valorFormatado = formatR3TP(valor, "", "");
	        break;
	    case 4:
	    	valorFormatado = formatR4TP(valor, "", "");
	        break;
	    default:
	    	valorFormatado = "";
		}
	}
	return valorFormatado;
}

function formatarDecimalPorcentagem(caracterDecimal, quantidadeDecimais, valor){
	
	if(valor===null || valor === "undefined" || valor === ""){
		
		return "";
	}
		
	return formatarDecimal(caracterDecimal, quantidadeDecimais, valor) +"%";
}

function formataHora(cellvalue){
	var d = new Date(cellvalue);
	hora = d.getHours();
	if(hora<10)
		hora="0"+hora;
	minuto = d.getMinutes();
	if(minuto<10)
		minuto="0"+minuto;
	segundo = d.getSeconds();
	if(segundo<10)
		segundo="0"+segundo;
	return hora+":"+minuto+":"+segundo;
}
function formataDataHora01 (cellvalue, options, rowObject)
{
	var dt = formataData01 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}
function formataDataHora02 (cellvalue, options, rowObject)
{
	var dt = formataData02 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}
function formataDataHora03 (cellvalue, options, rowObject)
{
	var dt = formataData03 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}
function formataDataHora04 (cellvalue, options, rowObject)
{
	var dt = formataData04 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}
function formataDataHora05 (cellvalue, options, rowObject)
{
	var dt = formataData05 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}
function formataDataHora06 (cellvalue, options, rowObject)
{
	var dt = formataData06 (cellvalue, options, rowObject);
	if(dt=="")
		return dt;
	var hr = formataHora(cellvalue);
	return dt + " " + hr;
}