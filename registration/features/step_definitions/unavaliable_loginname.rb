Then('user should get unavaliable loginname error') do
    @registration.verify_unavaliable_loginname()
    @registration.quit()

  end