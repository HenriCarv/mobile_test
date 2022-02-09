class Desejos
    def add_desejo
        find_elements(id: "qaninja.com.pixel:id/cCatNameTxt")[1].click
        find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt")[4].click
        find_element(id: "qaninja.com.pixel:id/addToWishlistButt").click
    end

    def acess_desejo
        find_elements(id: "qaninja.com.pixel:id/ibnt_icon_iv")[1].click
        find_element(id: "qaninja.com.pixel:id/refreshButt").click
    end
end