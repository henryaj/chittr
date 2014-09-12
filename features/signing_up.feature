Feature: Signing up to Chittr
  In order to use Chittr
  As a member of the site
  I want to be able to sign up

  Scenario: Visiting the home page
    When I am on the home page
    Then I should see "Sign up"

  Scenario: Going to the signup page
    Given I am on the home page
    When I follow "Sign up"
    Then I should be on the signup page

  Scenario: Filling in the signup form
  	Given I am on the signup page
  	When I fill in the following:
	  | First Name            | Henry                  |
	  | Last Name             | Stanley                |
	  | Email                 | henry@henrystanley.com |
	  | Password              | 12345                  |
	  | Password Confirmation | 12345                  |
	  And I click 'Submit'
	  Then I should see "Welcome to chittr, Henry!"
  
  
  
  
  

  
