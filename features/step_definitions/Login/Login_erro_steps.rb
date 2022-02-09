Dado('que acesso a tela de Login com usuarios') do
    acc.conta
  end

Quando('eu faço login com o {string} e {string}') do |email, senha|
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(senha)
    find_element(id: "qaninja.com.pixel:id/loginButt").click
end
  
Então('devo ver {string} como popup') do |mensagem_esperada|
    popup = find_element(id: "android:id/message")
    expect(popup.text).to eql mensagem_esperada    
end