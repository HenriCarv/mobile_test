#language: pt

Funcionalidade: Testar lista de desejos
    Para que eu possa adicionar iten na lista de desejos
    Sendo um usuario cadastrado
    Posso me autenticar pela tela Login e colocar iten no desejados

    @desejos
    Cenario: Desejos List
        Dado que e faça login
        Quando eu adicionar um iten na lista de desejos
        Então possover a tela lista