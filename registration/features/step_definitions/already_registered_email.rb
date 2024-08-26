Then('verify user gets mail already registered error message') do
    @registration.verify_already_mail_registered()
    @registration.quit()
  end