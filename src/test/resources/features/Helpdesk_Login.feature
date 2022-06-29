Feature: Default

	#2. As a Helpdesk user, I should be able to login; so that I can land on homepage.
	@NEXT-983
	Scenario: Verify that Helpdesk user can login with valid credentials
		Feature: CRM app login feature
		  User Story:
		  As an Helpdesk user, I should be able to login; so that I can land on homepage.
		
		Background
		  For the scenarios in the feature file, user is expected to be on login page
		  Given user is on the login page https://login.nextbasecrm.com
		  
		  @Helpdesk
		  Scenario: Login as Helpdesk
		  When user enters Helpdesk username helpdesk1@cybertekschool.com
		  And user enters Helpdesk password UserUser
		  And user clicks to login button
		  Then user should see the dashboard