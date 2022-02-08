class Login
    def logar
        find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys("tony@stark.com")
        find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys("pass123")
        find_element(id: "qaninja.com.pixel:id/loginButt").click
    end
end