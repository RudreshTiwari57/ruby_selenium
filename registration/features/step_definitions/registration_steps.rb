require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\registration\pageobject\registration_page.rb'
require 'selenium-webdriver'

Given('you are on the home page') do
    @registration = Registration.new
    @registration.get("CHROME")
  end
  
  Given('nagivate to login page') do
    @registration.nagivate()

  end
  Then('verify user is on login page') do
    @registration.loginpagetitle()
  end
  
  
  When('user click on register account radio button') do
    @registration.click_radiobutton()
  end
  
  When('clicks on continue button') do
    @registration.click_accountcontoniue()
  end
  
  Then('verify user is on registration page') do
    @registration.registrationpagetitle()
  end
  
  When('user enters first name {string}') do |firstname|
    @registration.enterfirstname(firstname)
  end
  
  When('user enters last name {string}') do |lastname|
    @registration.enterlastname(lastname)
  end
  
  When('user enters Email {string}') do |email|
    @registration.enteremail(email)
  end
  
  When('user enters telephone {string}') do |telephone|
    @registration.entertelephone(telephone)
  end
  
  When('user enters fax {string}') do |fax|
    @registration.enterfax(fax)
  end
  
  When('user enters company {string}') do |company|
    @registration.entercompany(company)
  end
  
  When('user enters first address {string}') do |first_address|
    @registration.enteraddress_1(first_address)
  end
  
  When('user enters second address  {string}') do |second_address|
    @registration.enteraddress_2(second_address)
  end
  
  When('user enters city {string}') do |city|
    @registration.entercity(city)
  end
  When('user selects country {string}') do |country|
    @registration.select_country(country)
  end
  
  When('user selects state {string}') do |state|
    @registration.select_state(state)
  end
  
  When('user enters ZIP code {string}') do |zip|
    @registration.enterzipcode(zip)
  end
  
  
  
  When('user enters login name {string}') do |loginname|
    @registration.enterloginname(loginname)
  end
  
  When('user enters password {string}') do |password|
    @registration.enterpassword(password)
  end

  When('user enters confirm password {string}') do |confirmpassword|
    @registration.enterconfirmpassword(confirmpassword)
  end
  
  When('user checks the check box') do
    @registration.click_checkbox()
  end
  
  Then('verify user check the check box') do
    @registration.check_checkbox()
  end
  
  Then('click on continue button') do
    @registration.click_contoniue()
  end

  

  

  