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

  Scenario: Posting a cheet
  	Given I have signed up
    And I have signed in
    And I am on the home page
    When I follow "Post cheet"
    Then I should see a large text box
    And I should see "Share a thought."

  
  
  

  
