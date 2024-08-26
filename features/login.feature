Feature: login page
	@SmokeTest
	Scenario: to verify login of the web page with validate credentials
		Given you are on the home page
		And nagivate to login page
		When you entered the username "<username>"
		And you entered the password "<password>"
		And click on the login button
		Then verify login home page


		Examples:
			| username | password |
			| Aswani | Aswani |


