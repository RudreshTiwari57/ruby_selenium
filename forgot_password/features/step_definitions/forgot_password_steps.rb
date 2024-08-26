require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\forgot_password\pageobject\forgot_password_page.rb'
require 'selenium-webdriver'


  Given('you are on the home page') do
    @password = Password.new
    @password.get("CHROME")
  end

  Given('nagivate to login page') do
    @password.nagivate()
  end

  When('click  on the forgot password') do
    @password.click()
  end
  
  Then('verify user is nagivated to forgot password page') do
    @password.verifytitle()
  end
  
  When('User enters username {string}') do |username|
    @password.enterusername(username)
  end
  
  When('User enters the Email address {string}') do |email|
    @password.enterpassword(email)
  end
  
  When('clicks on continue button') do
    @password.click_continue()
  end
  
  Then('verify that mail has been sent to user successfully') do
    @password.verify_successfull_mail()
  end

  Then('verify that system shows invalid credentials') do
    @password.verify_unsuccessfull_credentails()
  end


 

#html output into a file 
#cucumber -f html --out index.html

#to run with tags
#cucumber -t '@RegressionTest' -f html --out index.html