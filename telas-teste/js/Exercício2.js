
// Desenvolver as seguintes funções:
// Obs. Lembrar que a melhor forma de achar algum elemento em programação, é pelo id;
//      Lembrar que, em javascript, quando você faz arrays de cópia, ele copia por referência, o que faz com que possa causar 
//      algumas confusões, pode ser que alguma das suas soluções precise, de alguma forma, fazer cópia de arrays:
//      Ex:
//          var array1 = [1,2,3]
//          var array2 = array1;
//          array2[0] = 'B'  
//          console.log(array1) // ['B', 2, 3]
//          console.log(array2) // ['B', 2, 3]
//
//      Ambos os arrays foram alterados!
//      Quando quiser evitar isso, faça sempre array1 = [...array2], faça seus testes com esse tipo de igualdade de arrays em Js, será que pra objetos é igual?

// criar um função que retorne o contato de determinada pessoa
function acharContatoForEach(pessoa){
  var contatoDeAlguem = []
      
  contatos.forEach(el => {
      if(el.idPessoa==pessoa.id)contatoDeAlguem.push(el)
  });

  return contatoDeAlguem;
}

function acharContatoFilter(pessoa){
  // retorna uma array
  var contatoEncontrado = contatos.filter(el=>{return (el.idPessoa==pessoa.id)})
  return contatoEncontrado;
}


var dadosDeContatosPessoa = [];

function acharContatoFor(pessoa){
  // num começa 0, entra na condição (i menor que tamanho da array), então soma +1
  for( i = 0; i < contatos.length; i++){
      dadosDeContatosPessoa.push(contatos[i]);
      console.log(contatos[i]);
  }
}

function acharContatoWhile(pessoa){
  var i = 0

  while(i<=contatos.length){
      console.log(contatos[i]);
      i++;
  }
}

function deletarPessoa(id){
    // Deleta uma pessoa baseada no ID (chave primária).
    // Validação: se pessoa não existir que foi enviada para ser removida não existir, 
    // dar alerta: Pessoa não encontrada.
    // Obs. Observar que os contatos dessa pessoa ainda estão no array de contato, mais a frente a gente faz 
    // a funcionalidade de deletar os contatos de uma pessoa antes de excluir.
    arrayDelete = []
     if(dadosCadastroPessoa.filter(item=>item.id == id)){
        arrayDelete = dadosCadastroPessoa
         console.log("Pessoa Deletada.")
         console.log(arrayDelete)
     }else{
         console.log("Pessoa não Encontrada.")
        }
 }

 //Função retorna os id's que não foram definidos(deletados)
function deletaPessoa(id){
  dadosCadastroPessoa = dadosCadastroPessoa.filter(el=>el.id !== id)
  contatos = contatos.filter(valor => valor.idPessoa !== id);
  console.log(dadosCadastroPessoa)
  return alert("Cadastro Deletado")
}
 
 function atualizaPessoa(id){
    // Atualiza uma pessoa no array;   
    // Recebe uma pessoa que deve ter seus dados atualizados, procura no array de pessoas qual pessoa tem o mesmo id.
    // Ao encontrar essa pessoa, atualizar os novos dados dela.
    // Obs: Note que ainda não estamos atualizando os dados de contato dessa pessoa.
    if(dadosDeCadastro = dadosCadastroPessoa.filter(item=>item.id == id)[0]){
      dadosDeCadastro.nome = "fulano";
      dadosDeCadastro.cpf = "32244";
   }
  }
  

  function removerContato(id){
    // Deleta um contato no ID (chave primária) de um contato.
    // Validação: se o contato não existir, dar alerta: Contato não encontrado.
    // Obs. Agora volte na função de remover pessoa e, utilizando a função removerContato(pessoa.contato), 
    // Remova o contato desta pessoa no array de contatos;
    contatos = contatos.filter(valor => valor.id !== id);
    console.log(contatos)  
    return alert("Cadastro Deletado")
  }
  
  function atualizarContato(contato){
    // Atualiza um contato no array;   
    // Recebe um contato que deve ter seus dados atualizados, procura no array de contatos qual contato tem o mesmo id.
    // Ao encontrar esse contato, atualizar os novos dados del.
    // Obs. Agora volte na função atualizarPessoa(pessoa), e utilize a função atualizarContato(pessoa.contato). Dessa forma, 
    // você estará abstraindo uma função e utilizando dentro de outras.
    if(dadosDeContatos = contatos.filter(item=>item.idPessoa == id)[0]){
      dadosDeContatos.telefone = "2222";
      dadosDeContatos.endereco = "avenida x";
        console.log("Contato atualizado com sucesso!");
   }else{ console.log("Id de contato não encontrado!");
        }
   
  }

  function procuraPessoa(pessoa){
    // Deve retornar uma pessoa que está sendo procurada. Pode utilizar qualquer critério para buscar
    // Ex: 
    //      Se pessoa.id tiver valor, procurar por id, se pessoa.nome tiver valor, procurar por nome, etc...
    //      Bônus: 1) Seria interessante que esta busca (por nome), não retornasse somente valores exatamente iguais, 
    //                Ex
    //                  Caso você tenha os nomes cadastrados: "Thiago Silva", "Pedro de Almeida Silva", "Joana das Couves",
    //                  Ao efetuar uma busca com "Silva", por exemplo, deveria retornar o Thiago e o Pedro.
    // 
    //             2) Pense também se seria possível buscar as pessoas sem que necessariamente precise digitar os caracteres
    //              maísculos ou minúsculos
    //              Ex:
    //                  Ao buscar SilVa, ou SILVA, ou sILva, retorne as pessoas que tenham qualquer forma de digitação de Silva.
  
             
  }

  function acharPessoaPorId(id){

    if(dadosDeCadastro = dadosCadastroPessoa.filter(item=>item.id === id)[0]){
        return dadosDeCadastro   
       } else { return null;}
    }
 
// função div element arrastável
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