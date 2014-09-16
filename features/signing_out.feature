Feature: Signing out of the site
  As a member of the site
  I want to be able to sign out

  Scenario: Seeing the sign out button
    Given I have signed up
    When I fill in my login details
    Then I should see "Sign out"

  Scenario: Signing out
    Given I have signed up
    And I fill in my login details
    When I follow "Sign out"
    Then I should see "See you later."
  
  
  
  
  
  

  
