require 'test/unit'


class Locators
    include Test::Unit::Assertions
    def initialize(driver)
      @driver = driver
      @a = INIReader.new
      
    end
    def click_elements(path,index)
        if path.downcase.include?("tag")
            element = @driver.find_elements( tag_name: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("class")
            element = @driver.find_elements(class: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("id")
            element = @driver.find_elements(id: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("name")
            element = @driver.find_elements(name: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("css")
            element = @driver.find_elements(css: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("link_text")
            element = @driver.find_elements(link_text: @a.inireader(path))
            element[index].click
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_elements(partial_link_text: @a.inireader(path))
            element[index].click    
        elsif path.downcase.include?("xpath")
            element = @driver.find_elements(xpath: @a.inireader(path))
            element[index].click
        end
    end
    def findelements(path)
        if path.downcase.include?("tag")
            element = @driver.find_elements( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_elements(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_elements(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_elements(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_elements(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_elements(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_elements(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_elements(xpath: @a.inireader(path))
        end
        return element
    end
    
    def click_element(path)
        if path.downcase.include?("tag")
            @driver.find_element( tag_name: @a.inireader(path)).click
        elsif path.downcase.include?("class")
            @driver.find_element(class: @a.inireader(path)).click
        elsif path.downcase.include?("id")
            @driver.find_element(id: @a.inireader(path)).click
        elsif path.downcase.include?("name")
            @driver.find_element(name: @a.inireader(path)).click
        elsif path.downcase.include?("css")
            @driver.find_element(css: @a.inireader(path)).click
        elsif path.downcase.include?("link_text")
            @driver.find_element(link_text: @a.inireader(path)).click
        elsif path.downcase.include?("partial_link_text")
            @driver.find_element(partial_link_text: @a.inireader(path)).click    
        elsif path.downcase.include?("xpath")
            @driver.find_element(xpath: @a.inireader(path)).click
        end
    end
    def sendkeys_element(path,text)

        if path.downcase.include?("tag")
            @driver.find_element( tag_name: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("class")
            @driver.find_element(class: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("id")
            @driver.find_element(id: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("name")
            @driver.find_element(name: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("css")
            @driver.find_element(css: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("link_text")
            @driver.find_element(link_text: @a.inireader(path)).send_keys text
        elsif path.downcase.include?("partial_link_text")
            @driver.find_element(partial_link_text: @a.inireader(path)).send_keys text    
        elsif text.downcase.include?("xpath")
            @driver.find_element(xpath: @a.inireader(path)).send_keys text
        end
    end

    def gettext(path,value)
        @text = ""
        if text.downcase.include?("tag")
            @text = @driver.find_element( tag_name: @a.inireader(path)).text
        elsif text.downcase.include?("class")
            @text = @driver.find_element(class: @a.inireader(path)).text
        elsif text.downcase.include?("id")
            @text = @driver.find_element(id: @a.inireader(path)).text
        elsif text.downcase.include?("name")
            @text = @driver.find_element(name: @a.inireader(path)).text
        elsif text.downcase.include?("css")
            @text = @driver.find_element(css: @a.inireader(path)).text
        elsif text.downcase.include?("link_text")
            @text = @driver.find_element(link_text: @a.inireader(path)).text
        elsif text.downcase.include?("partial_link_text")
            @text = @driver.find_element(partial_link_text: @a.inireader(path)).text    
        elsif text.downcase.include?("xpath")
            @text = @driver.find_element(xpath: @a.inireader(path)).text
        end
        return @text
    end


    def isequal(actualtext,expetedtextpath)

        if expetedtextpath.downcase.include?("tag")
            assert_equal(actualtext,@driver.find_element( tag_name: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("class")
            assert_equal(actualtext,@driver.find_element(class: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("id")
            assert_equal(actualtext,@driver.find_element(id: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("name")
            assert_equal(actualtext,@driver.find_element(name: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("css")
            assert_equal(actualtext,@driver.find_element(css: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("link_text")
            assert_equal(actualtext,@driver.find_element(link_text: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        elsif expetedtextpath.downcase.include?("partial_link_text")
            assert_equal(actualtext,@driver.find_element(partial_link_text: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" ) 
        elsif expetedtextpath.downcase.include?("xpath")
            assert_equal(actualtext,@driver.find_element(xpath: @a.inireader(expetedtextpath)).text,failure_message = "invalid username and password" )
        end

    end
    

    def select_by_value(value,path)
        if path.downcase.include?("tag")
            element = @driver.find_element( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_element(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_element(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_element(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_element(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_element(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_element(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_element(xpath: @a.inireader(path))
        end
        selects = Selenium::WebDriver::Support::Select.new(element)
        selects.select_by(:value,value)
    end

    def select_by_index(index,path)
        if path.downcase.include?("tag")
            element = @driver.find_element( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_element(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_element(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_element(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_element(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_element(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_element(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_element(xpath: @a.inireader(path))
        end
        selects = Selenium::WebDriver::Support::Select.new(element)
        selects.select_by(:index,index)
    end

    def select_by_text(text,path)
        if path.downcase.include?("tag")
            element = @driver.find_element( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_element(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_element(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_element(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_element(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_element(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_element(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_element(xpath: @a.inireader(path))
        end
        selects = Selenium::WebDriver::Support::Select.new(element)
        selects.select_by(:text,text)
    end



    def move_to_element(path)
        if path.downcase.include?("tag")
            element = @driver.find_element( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_element(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_element(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_element(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_element(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_element(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_element(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_element(xpath: @a.inireader(path))
        end

        @driver.action.move_to(element).perform
    end

    def move_to_element_and_click(path)
        if path.downcase.include?("tag")
            element = @driver.find_element( tag_name: @a.inireader(path))
        elsif path.downcase.include?("class")
            element = @driver.find_element(class: @a.inireader(path))
        elsif path.downcase.include?("id")
            element = @driver.find_element(id: @a.inireader(path))
        elsif path.downcase.include?("name")
            element = @driver.find_element(name: @a.inireader(path))
        elsif path.downcase.include?("css")
            element = @driver.find_element(css: @a.inireader(path))
        elsif path.downcase.include?("link_text")
            element = @driver.find_element(link_text: @a.inireader(path))
        elsif path.downcase.include?("partial_link_text")
            element = @driver.find_element(partial_link_text: @a.inireader(path))
        elsif path.downcase.include?("xpath")
            element = @driver.find_element(xpath: @a.inireader(path))
        end

        @driver.action.move_to(element).click.perform
    end

    
end        