Feature: Manage entries
  In order to have entries
  As a journal owner
  I want to be able to create and manage my journal entries

  Background:
    Given the following entries:
      |name|body|
      |test_entry|This is an entry.|

  Scenario: Create a new entry
    Given I am on the new entry page
    When I fill in "Name" with "test_entry"
    And I fill in "Body" with "This is an entry."
    And I press "Create"
    Then I should see "Entry was successfully created."

  Scenario: Read an existing entry
    And I am on the entries page
    And I follow "test_entry"
    Then I should see "test_entry"

  Scenario: Update an existing entry
    And I am on the entries page
    When I follow "test_entry"
    And I follow "Edit"
    And I fill in "Name" with "update_test"
    And I press "Update Entry"
    Then I should see "Entry was successfully updated."

  Scenario: Delete entry
    And I am on the entries page
    And I follow "test_entry"
    And I follow "Delete"
    Then I should see "Entry was successfully deleted."
