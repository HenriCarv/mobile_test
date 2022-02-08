Dado('que acesso a tela de Login') do
    acc.conta
  end
  
  Quando('eu faço login com {string} e {string}') do |string, string2|
    login.logar
  end
  
  Então('possover a tela minha conta') do
    acc.conta
    conta = find_element(id: "qaninja.com.pixel:id/account")
    expect(conta.displayed?). to be true
  end