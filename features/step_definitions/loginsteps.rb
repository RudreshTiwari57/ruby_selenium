require_relative 'C:\Users\RUDTIWAR\Desktop\assigiment\pageobject\loginpage.rb'
require 'selenium-webdriver'


  Given('you are on the home page') do
    @login = Login.new
    @login.get("CHROME")
  end

  Given('nagivate to login page') do
    @login.nagivate()
  end
  
  Then('you entered the username {string}') do |string|
    @login.enterusername(string)
  end
  
  Then('you entered the password {string}') do |string|
    @login.enterpassword(string)
  end
  
  Then('click on the login button') do
    @login.clickloginbutton()
    
  end

  Then('verify login home page') do
    @login.verify_successfull_login()
  end


  Then('verify you get invalide username and password error') do
    @login.verify_unsuccessfull_login()
  end


#html output into a file 
#cucumber -f html --out index.html

#to run with tags
#cucumber -t '@RegressionTest' -f html --out index.html