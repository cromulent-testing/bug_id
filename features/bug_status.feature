Feature: Bug Status
  In order to remember what has happened to a bug
  As someone interested in the bug
  I want them to have a status

  Scenario: Bugs have a status that defaults to open
    Given I'm creating a bug
    Then the statuses available to me are "Open, Closed"
    And the default status status is "Open"

  Scenario: Bugs can be closed
    Given I have the bug "status-test" with the status "Open"
    When I close the bug "status-test"
    Then the status for "status-test" is "Closed"

  Scenario: Closed bugs appear at the bottom of the bug list
    Given I have the bugs:
      | Description | Status |
      | closed bug  | Closed |
      | open bug    | Open   |
    Then the bug list should be in the following order:
      | Description | Status |
      | open bug    | Open   |
      | closed bug  | Closed |


