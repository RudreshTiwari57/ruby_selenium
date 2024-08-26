Then('verify user get password mismatch error') do
    @registration.verify_password_mismatch()
    @registration.quit()
  end