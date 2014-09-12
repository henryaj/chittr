Feature: Signing in as an existing user
	In order to use chittr
	As a member of the site
	I should be able to sign in

	Scenario: Signing in
	  Given I am on the home page
	  When I follow "Sign in"
	  Then I should be on the sign in page

	Scenario: Logging into the site
		Given I am on the sign in page
		And I have signed up
		When I fill in my login details
		Then I should see "Welcome back, Henry"
	
	
	