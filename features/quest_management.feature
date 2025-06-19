Feature: Quest Management

    Scenario: User can creates a new quest 
        Given I am on the quest index page
        When I fill in "finish final exam" into the quest title input
        And I click the create quest button
        Then I should see a quest titled "finish final exam"

    Scenario: User can delete a quest after create 
        Given I am on the quest index page
        When I fill in "study git 101" into the quest title input
        And I click the create quest button
        Then I should see a quest titled "study git 101"
        When I click the delete button for "study git 101"
        Then I should not see a quest titled "study git 101"
    
    Scenario: User can update status quest
        Given I am on the quest index page
        When I fill in "complete Gitlab CI" into the quest title input
        And I click the create quest button
        Then I should see a quest titled "complete Gitlab CI"
        When I click the checkbox for "complete Gitlab CI"
        Then the quest titled "complete Gitlab CI" checkbox should be checked