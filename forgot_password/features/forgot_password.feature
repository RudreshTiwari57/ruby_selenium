Feature: forgot your password
	Scenario: to forgot password  is working  with validate credentials
		Given you are on the home page
		And nagivate to login page
		When  click  on the forgot password
		Then verify user is nagivated to forgot password page
		When User enters username "<username>"
		And User enters the Email address "<Email>"
		And clicks on continue button
		Then verify that mail has been sent to user successfully


		Examples:
			| username | Email |
			| Aswani | Aswani@gmail.com |


