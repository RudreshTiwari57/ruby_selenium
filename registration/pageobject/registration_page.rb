require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\registration\pageobject\base.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\registration\config\locators.rb'
require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\registration\pageobject\strategies.rb'
require 'selenium-webdriver'
require 'test/unit'



class Registration 
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


    def loginpagetitle()
        actualtitle = "Account Login"
        assert_equal(actualtitle,@driver.title,"the page didnot get loaded")
    end

    def registrationpagetitle()
        actualtitle = "Create Account"
        assert_equal(actualtitle,@driver.title,"the page didnot get loaded")
    end

    def click_radiobutton()
        @locator.click_radio("register_account_id")
            
    end

    def click_accountcontoniue()
        @locator.click_element("accountcontinuebuttton_xpath")
    end

    def enterfirstname(name)
        @locator.sendkeys_element("firstname_id",name)
    end

    def enterlastname(name)
        @locator.sendkeys_element("lastname_id",name)
    end

    def enteremail(name)
        @locator.sendkeys_element("email_id",name)
    end

    def entertelephone(name)
        @locator.sendkeys_element("telephone_id",name)
    end

    def enterfax(name)
        @locator.sendkeys_element("fax_id",name)
    end

    def entercompany(name)
        @locator.sendkeys_element("company_id",name)
    end

    def enteraddress_1(name)
        @locator.sendkeys_element("address_1_id",name)
    end

    def enteraddress_2(name)
        @locator.sendkeys_element("address_2_id",name)
    end

    def entercity(name)
        @locator.sendkeys_element("city_id",name)
    end

    def enterzipcode(name)
        @locator.sendkeys_element("postcode_id",name)
    end

    def enterloginname(name)
        @locator.sendkeys_element("Loginname_id",name)
    end

    def enterpassword(name)
        @locator.sendkeys_element("loginpassword_id",name)
    end

    def enterconfirmpassword(name)
        @locator.sendkeys_element("confirmpassword_id",name)
    end

    def select_country(name)
        @locator.select_by_text(name,"country_id")
        sleep(3)
    end
    
    def select_state(name)
        @locator.select_by_text(name,"state_id")
    end

    def  click_checkbox()
        @locator.click_radio("registrationcheckbox_id")
    end

    def check_checkbox()
        assert_equal(true,@locator.selected("registrationcheckbox_id"),"please select check box")
    end

    def click_contoniue()
        @locator.click_element("registercontinue_xpath")
        
    end

    def verify_password_mismatch()
        actualtext = "×\n" + "Password confirmation does not match password!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end
    
    def verify_unavaliable_loginname()
        actualtext = "×\n" + "This login name is not available. Try different login name!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end


    def verify_unchecked_checkbox_error()
        actualtext = "×\n" + "Error: You must agree to the Privacy Policy!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end
    def verify_already_mail_registered()
        actualtext = "×\n" + "Error: E-Mail Address is already registered!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end

    def verify_empty_firstname_error()
        actualtext = "×\n" + "First Name must be between 1 and 32 characters!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end

    def verify_empty_lastname_error()
        actualtext = "×\n" + "Last Name must be between 1 and 32 characters!"
        @locator.isequal(actualtext,"passworderror_xpath")
    end

    def quit()
        @driver.quit
    end
end