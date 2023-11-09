#language: pt

Funcionalidade: Buscar elementos

Contexto: 
    * estar na pagina inicial

@buscando_elementos
Cenario: buscar os elementos com sucesso
    Quando visualizar os elementos
    Entao validar que os elementos estao aparecendo

@preenchendo_elementos
Cenario: preencher os elementos com sucesso
    Quando efetuo o cadastro
    E efetuo o login
    Entao validar redirecionamento

@cenario_de_teste_de_comandos_teclado
Cenario: Utilizando comandos do teclado
    Quando preencho login com um segundo usuarios
    E apago o user com comando do teclado
    Entao valido campo vazio