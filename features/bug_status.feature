Feature: Every bug has a status
  In order to remember what has happened to a bug
  As a tester
  I want to assign them a status

  Scenario: Bugs have a status that defaults to open
    Given I'm creating a bug
    Then I the statuses available to me are "open, closed"
    And the default status status is "open"

  Scenario: Closed bugs appear at the bottom of the bug list
    Given I have the following bugs:
      | summary    | status |
      | closed bug | closed |
      | open bug   | open   |
    Then the bug list should be:
      | summary    | status |
      | open bug   | open   |
      | closed bug | closed |

