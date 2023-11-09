#language: pt

Funcionalidade: Acessar a pagina com produtos a venda
    Eu como usuário
    Quero acessar a pagina com produtos a venda

    Contexto:
        Dado estar na pagina inicial
        Quando efetuo o cadastro
        Entao efetuo o login

    @cenario_de_teste_de_produtos
    Cenario: Utilizando filtros e adicionando itens
        Quando estar na pagina de produtos
        E selecionar um filtro de za
        E adicionar produtos
        Entao validar produtos adicionados e filtro aplicado

    @cenario_de_teste_de_link
    Cenario: Validar link na tela
        Quando houver redirecionamento para pagina inicial
        Entao valido o link na tela
