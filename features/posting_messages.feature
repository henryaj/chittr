Feature: Posting to chittr
  In order to communicate with other members
  As a member of the site
  I want to post to chittr

  Scenario: On the home page
    Given I have signed up
    And I have signed in
    When I am on the home page
    Then I should see "Post cheet"

  Scenario: Going to the new cheet page
  	Given I have signed up
    And I have signed in
    And I am on the home page
    When I follow "Post cheet"
    Then I should be on the new cheet page

  Scenario: On the new cheet page
  	Given I am a logged in user
    When I follow "Post cheet"
    Then I should see a large text box
    And I should see "Share a thought."

  Scenario: Posting a new cheet
    Given I am a logged in user
    And I am on the new cheet page
    When I fill in "New Cheet" with "Hey, I'm on Chittr!"
    And I click "Submit"
    Then I should be on the home page
    And I should see "Your cheet has been posted."
    And I should see "Hey, I'm on Chittr!"

  Scenario: Viewing tweets as a non-member
    Given I am a logged in user
    And I am on the new cheet page
    When I fill in "New Cheet" with "Hey, I'm on Chittr!"
    And I click "Submit"
    And I follow "Sign out"
    Then I should be on the home page
    Then I should see "Hey, I'm on Chittr!"  
  
  

  
  
  

  
