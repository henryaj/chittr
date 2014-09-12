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
  	When I fill in and submit the signup form
	  Then I should see "Welcome to chittr, Henry!"
  
  Scenario: Mismatching passwords on signup
	  Given PENDING: I am on the signup page
  	When I fill in and submit the signup form with non-matching passwords
	  Then I should see "Your password and password confirmation didn't match."
  
  
  
  

  
