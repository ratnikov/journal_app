Feature: Manage owners
  In order to have owners
  As a user
  I want to be able to create and manage my account

  Scenario: Register new owner
    Given I am on the new owner page
    When I fill in "Name" with "Deryl R. Doucette"
    And I fill in "Email" with "me@deryldoucette.com"
    And I press "Create"
    Then I should see "Deryl R. Doucette"
    And I should see "me@deryldoucette.com"

  Scenario: Delete owner
    Given the following owners:
      |name|email|
      |Deryl R. Doucette|me@deryldoucette.com|
    And I am on the owners page
    And I follow "Deryl R. Doucette"
    And I follow "Delete"
    And show me the page
    Then I should see "Owner was successfully deleted."
