class Car
    def add_carrinho
        find_elements(id: "qaninja.com.pixel:id/cCatNameTxt")[1].click
        find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt")[4].click
        find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
    end

    def acess_carr
        find_elements(id: "qaninja.com.pixel:id/ibnt_icon_iv")[2].click
        find_element(id: "qaninja.com.pixel:id/refreshButt").click
    end
end