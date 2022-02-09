Dado('que faço login') do
    acc.conta
    login.logar
end
  
  Quando('eu adicionar iten no carrinho') do
    car.add_carrinho
    2.times { back }
end
  
  Então('posso ver no carrinho') do
    car.acess_carr   
end