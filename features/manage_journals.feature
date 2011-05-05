Feature: Manage journals
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new journal
    Given I am on the new journal page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete journal
    Given the following journals:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd journal
    Then I should see the following journals:
      |Name|
      |name 1|
      |name 2|
      |name 4|
