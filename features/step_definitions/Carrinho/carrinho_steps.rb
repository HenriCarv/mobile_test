Dado('que faço login') do
    acc.conta
    login.logar
end
  
  Quando('eu adicionar iten no carrinho') do
    find_element(id: "qaninja.com.pixel:id/cCatNameTxt").text("SUPER NINTENDO").click
    find_element(id: "qaninja.com.pixel:id/cpProdNameTxt").text("F-Zero").click
    find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
    3.times { back }
end
  
  Então('posso ver no carrinho') do
    find_elements(id: "qaninja.com.pixel:id/ibnt_icon_iv")[2].click
    
end