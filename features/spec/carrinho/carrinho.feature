#language: pt

Funcionalidade: add carrinho
    Para que eu possa adicionar jogos no carrinho
    Sendo um usuario cadastrado
    Posso adicionar o jogo

    @add_a_carrinho
    Cenario: add iten carrinho
        Dado que faço login
        Quando eu adicionar iten no carrinho
        Então posso ver no carrinho