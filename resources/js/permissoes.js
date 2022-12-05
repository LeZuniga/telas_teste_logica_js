function procuraPermissoes(){
	permissaoQuery = false;
	permissaoUpdate = false;
	permissaoDelete = false;
	permissaoRun = false;
	chave = "perm-"+sessionStorage.getItem("modulo")+"-"+sessionStorage.getItem("opcaoMenu");
	linhaPermissao = sessionStorage.getItem(chave);
	console.log("Linha Permissao:"+linhaPermissao);
	if(linhaPermissao){
		if(linhaPermissao.substring(0,1)=="Y")
			permissaoQuery = true;
		if(linhaPermissao.substring(1,2)=="Y")
			permissaoUpdate = true;
		if(linhaPermissao.substring(2,3)=="Y")
			permissaoDelete = true;
		if(linhaPermissao.substring(3,4)=="Y")
			permissaoRun = true;
	}
	
}

function setaPermissoesInputs(){
	var inputs = document.getElementsByTagName('input');
	for( var i=0; i<=(inputs.length-1); i++ ){
		if( inputs[i].type!='button' ) 
			inputs[i].disabled = !permissaoUpdate;
	}
}

function setaPermissoesSelects(){
	var selects = document.getElementsByTagName('select');
	for( var i=0; i<=(selects.length-1); i++ ){
		selects[i].disabled = !permissaoUpdate;
	}
}

function setaPermissoesUpdateBotao(nomeBotao){
	document.getElementById(nomeBotao).disabled = !permissaoUpdate;
}

function setaPermissoesDeleteBotao(nomeBotao){
	document.getElementById(nomeBotao).disabled = !permissaoDelete;
}

function setaPermissoesRunBotao(nomeBotao){
	document.getElementById(nomeBotao).disabled = !permissaoRun;
}

function setaPermissoesQueryBotao(nomeBotao){
	document.getElementById(nomeBotao).disabled = !permissaoQuery;
}