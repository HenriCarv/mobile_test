Dado('que e faça login') do
    acc.conta
    login.logar
  end
  
  Quando('eu adicionar um iten na lista de desejos') do
    desejos.add_desejo
    4.times { back }
  end
  
  Então('possover a tela lista') do
    desejos.acess_desejo
  end