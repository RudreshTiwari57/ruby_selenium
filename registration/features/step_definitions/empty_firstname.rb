Then('verify user gets enter user name error') do
    @registration.verify_empty_firstname_error()
    @registration.quit()
  end