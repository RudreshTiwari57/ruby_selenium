require 'inifile'
require 'pp'

class INIReader
    def inireader(key)
        file = IniFile.load('C:\Users\RUDTIWAR\Desktop\assigiment\forgot_password\config\properties.ini')
        locator = file["locators"]
        return locator[key]
    end
end





