Feature: Manage owners
  In order to have owners
  As a user
  I want to be able to create and manage my account

  Background:
    Given the following owners:
      |name|email|
      |Deryl R. Doucette|me@deryldoucette.com|

  Scenario: Create a new owner
    Given I am on the new owner page
    When I fill in "Name" with "Deryl R. Doucette"
    And I fill in "Email" with "me@deryldoucette.com"
    And I press "Create"
    Then I should see "Deryl R. Doucette"
    And I should see "me@deryldoucette.com"

  Scenario: Read an existing owner
    And I am on the owners page
    And I follow "Deryl R. Doucette"
    Then I should see "me@deryldoucette.com"

  Scenario: Update an existing owner
    And I am on the owners page
    And I follow "Deryl R. Doucette"
    And I follow "Edit"
    And I fill in "Email" with "you@deryldoucette.com"
    And I press "Update Owner"
    Then I should see "Owner was successfully updated."

  Scenario: Delete an owner
    And I am on the owners page
    And I follow "Deryl R. Doucette"
    And I follow "Delete"
    Then I should see "Owner was successfully deleted."
