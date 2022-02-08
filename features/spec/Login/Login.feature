#language: pt

Funcionalidade: Login
    Para que eu possa fazer compra dos itens clássicos
    Sendo um usuario cadastrado
    Posso me autenticar pela tela Login

    @login_happy
    Cenario: Usuario logado
        Dado que acesso a tela de Login
        Quando eu faço login com "tony@stark.com" e "pass123"
        Então possover a tela minha conta