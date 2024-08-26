require 'selenium-webdriver'
require 'C:\Users\RUDTIWAR\Desktop\assigiment\config\locators.rb'
module OpeningBrowser
    def openbrowser(browser,path)
        if browser == 'CHROME' 
            options = Selenium::WebDriver::Options.chrome(args:['--start-maximized'],detach: true)
            @driver = Selenium::WebDriver.for :chrome,options:options
        
        elsif browser == 'IE'
            options = Selenium::WebDriver::Options.ie(args:['--start-maximized'],detach: true)
            @driver = Selenium::WebDriver.for :ie,options:options
        
        elsif browser == 'EDGE'
            options = Selenium::WebDriver::Options.edge(args:['--start-maximized'],detach: true)
            @driver = Selenium::WebDriver.for :edge,options:options
        
        elsif browser == 'FIREFOX'
            options = Selenium::WebDriver::Options.firefox(args:['--start-maximized'],detach: true)
            @driver = Selenium::WebDriver.for :firefox,options:options
        
        elsif browser == 'SAFARI'
            options = Selenium::WebDriver::Options.safari(args:['--start-maximized'],detach: true)
            @driver = Selenium::WebDriver.for :safari,options:options
        end
        a = INIReader.new
        @driver.get a.inireader(path)
        return @driver 
    end 
end

        