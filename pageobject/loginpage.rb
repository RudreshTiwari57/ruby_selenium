require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\pageobject\base.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\config\locators.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\pageobject\strategies.rb'
require 'selenium-webdriver'
require 'test/unit'



class Login
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

    def enterusername(username)
        @driver.execute_script("window.scrollTo(0, 200)")
        
        @locator.sendkeys_element("LOGINPAGEUSERNAME_id",username)
    end

    def enterpassword(username)
        @locator.sendkeys_element("LOGINPAGEPASSWORD_id",username)
    end

    def clickloginbutton()
        @locator.click_element("LOGINPAGELOGINBUTTON_xpath")
        
    end

    def verify_successfull_login()
        assert_equal("My Account",@driver.title,failure_message = "invalid username and password" )
        @driver.quit
    end

    def verify_unsuccessfull_login()
        # assert_not_equal("My Account",@driver.title,failure_message = "invalid username and password" )
        @locator.isequal("×\n" + "Error: Incorrect login or password provided.","error_xpath")
        @driver.quit
    end

end

    
        

        