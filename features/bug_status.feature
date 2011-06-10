Feature: Bug Status
  In order to remember what has happened to a bug
  As someone interested in the bug
  I want them to have a status

  Scenario: Bugs have a status that defaults to open
    Given I'm creating a bug
    Then I the statuses available to me are "Open, Closed"
    And the default status status is "open"

  Scenario: Bugs can be closed
    Given I have the bug "status-test" with the status "open"
    When I close "status-test"
    Then the status for "status-test" is closed"

  Scenario: Closed bugs appear at the bottom of the bug list
    Given I have the following bugs:
      | Description | Status |
      | closed bug  | closed |
      | open bug    | open   |
    Then the bug list should be:
      | Description | Status |
      | open bug    | open   |
      | closed bug  | closed |


