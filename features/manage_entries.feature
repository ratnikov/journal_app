Feature: Manage entries
  In order to have journals
  As a user
  I want to be able to create and manage journals

  Scenario: Register new entry
    Given I am on the new entry page
    When I fill in "Name" with "name 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "body 1"

  Scenario: Delete entry
    Given the following entries:
      |name|body|
      |name 1|body 1|
      |name 2|body 2|
      |name 3|body 3|
      |name 4|body 4|
    When I delete the 3rd entry
    Then I should see the following entries:
      |Name|Body|
      |name 1|body 1|
      |name 2|body 2|
      |name 4|body 4|
