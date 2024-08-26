Feature: registration page
	Scenario:  to verify user gets enter first name error if user doesnot enter first name
		Given you are on the home page
		And nagivate to login page
		Then verify user is on login page
		When user click on register account radio button
		And clicks on continue button
		Then verify user is on registration page
		And user enters last name "<lastname>"
		And user enters Email "<Email>"
		And user enters telephone "<telephone>"
		And user enters fax "<fax>"
		And user enters company "<company>"
		And user enters first address "<address_1>"
		And user enters second address  "<address_2>"
		And user enters city "<city>"
		And user selects country "<country>"
		And user selects state "<state>"
		And user enters ZIP code "<ZIP>"
		And user enters login name "<loginname>"
		And user enters password "<password>"
		And user enters confirm password "<confirmpassword>"
		And user checks the check box 
		Then verify user check the check box
		And click on continue button
        Then verify user gets enter user name error


		Examples:
   | lastname | Email             | telephone    | fax | company | address_1            | address_2               | city    | state    | ZIP      | country | loginname | password | confirmpassword |
    | tiswdadasdrie   | rudfdsfrh@gmail.com | 34433321321324334 | asddsfcsdsrd | jrsvdsdido     | shdhsfhradsbfjhsd | ddsjnffjnsd | hfsdrfs | Maharashtra | 432782468 | India   | rudfdsdwar     | rudsdfwar    | rudsdfwar           |


