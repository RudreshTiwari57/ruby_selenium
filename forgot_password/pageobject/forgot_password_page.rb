require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\forgot_password\pageobject\base.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\forgot_password\config\locators.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\forgot_password\pageobject\strategies.rb'
require 'selenium-webdriver'
require 'test/unit'



class Password
    include Test::Unit::Assertions
    include OpeningBrowser
    def get(browser) 
        @driver = openbrowser(browser,"URL")
    end

    def nagivate()
        @locator = Locators.new(@driver)
        @locator.move_to_element("homebutton_xpath")
        @locator.move_to_element_and_click("accountbutton_xpath")
    end

    def click()
        @locator.click_element("forgot-password_xpath")
    end


    def verifytitle()
        actualtitle = "Forgot Your Password?"
        assert_equal(actualtitle,@driver.title,"the page didnot get loaded")
    end

    def enterusername(username)
        @flag = 0
        @locator.sendkeys_element("loginname_id",username)
        if username == ""
            @flag = 1
        end
    end

    def enterpassword(email)
        @locator.sendkeys_element("email_address_id",email)
        if email == ""
            @flag = 1
        end
    end

    def click_continue()
        @locator.click_element("continue_xpath")
    end

    def verify_successfull_mail()
        actualtext = "×\n" + "Success: Password reset link has been sent to your e-mail address."
        @locator.isequal(actualtext,"success_xpath")
        @driver.quit()
    end

    def verify_unsuccessfull_credentails()
        if @flag == 0
            actualtext = "×\n" + "Error: No records found matching information your provided, please check your information and try again!"
            @locator.isequal(actualtext,"success_xpath")
            @driver.quit()
        else
            actualtext = "×\n" + "Error: The Email address was not provided or not found in our records, please try again!"
            @locator.isequal(actualtext,"success_xpath")
            @driver.quit()
        end
    end
    
end

    
        

        