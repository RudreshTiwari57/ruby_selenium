Then('verify user should get agree privay policy error') do
    @registration.verify_unchecked_checkbox_error
    @registration.quit()
  end