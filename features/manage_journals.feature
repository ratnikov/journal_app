Feature: Manage journals
  In order to have journals
  As a user
  I want to be able to create and manage my journals

  Background:
    Given the following journals:
      |name|
      |test_journal|

  Scenario: Create a new journal
    Given I am on the new journal page
    When I fill in "Name" with "test_journal"
    And I press "Create"
    Then I should see "Journal was successfully created."

  Scenario: Read an existing journal
    And I am on the journals page
    And I follow "test_journal"
    Then I should see "test_journal"

  Scenario: Update an existing journal
    And I am on the journals page
    And I follow "test_journal"
    And I follow "Edit"
    And I fill in "Name" with "update_test"
    And I press "Update Journal"
    Then I should see "Journal was successfully updated."

  Scenario: Delete journal
    And I am on the journals page
    And I follow "test_journal"
    And I follow "Delete"
    Then I should see "Journal was successfully deleted."
