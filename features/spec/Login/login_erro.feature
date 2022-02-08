#language: pt

Funcionalidade: Login errado
    Para que eu possa testar mensagem de erro
    Sendo um usuario nçao cadastrado
    Posso ver alerta pela tela Login

    @login_happiless
    Esquema do Cenario: Erro de login
        Dado que acesso a tela de Login
        Quando eu faço login com o <email> e <senha>
        Então devo ver <mensagem> como popup

        Exemplos:
        |email            |senha    |mensagem                           |
        |"tony@stark.com" |"123pass"|"Usuário e/ou senha inválidos."    |
        |"tony@starck.com"|"123pass"|"Usuário e/ou senha inválidos."    |
        |""               |"123pass"|"Todos os campos são obrigatórios."|
        |"tony@starck.com"|""       |"Todos os campos são obrigatórios."|