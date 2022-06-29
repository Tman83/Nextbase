Feature: Default

	#1. As an HR user, I should be able to login; so that I can land on homepage.
	@NEXT-982
	Scenario: Verify that HR user can login with valid credentials
		Feature: CRM app login feature
		  User Story:
		  As an HR user, I should be able to login; so that I can land on homepage.
		
		Background
		  For the scenarios in the feature file, user is expected to be on login page
		  Given user is on the login page https://login.nextbasecrm.com
		  
		  @HR
		  Scenario: Login as HR
		  When user enters HR username hr1@cybertekschool.com
		  And user enters HR password UserUser
		  And user clicks to login button
		  Then user should see the dashboard