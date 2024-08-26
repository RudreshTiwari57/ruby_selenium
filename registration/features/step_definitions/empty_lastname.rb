Then('verify user gets enter last name error') do
    @registration.verify_empty_lastname_error()
    @registration.quit()
  end