Feature: login page
	@SmokeTest
	Scenario: to verify login of the web page with invalidate credentials
		Given you are on the home page
		And nagivate to login page
		When you entered the username "<username>"
		And you entered the password "<password>"
		And click on the login button
		Then verify you get invalide username and password error


		Examples:
                | username | password |
                | Awani    | Awani    |
                | Aswani   | Aswani3  |
                | Aswani3  | Aswani   |
                |          |          |
                



