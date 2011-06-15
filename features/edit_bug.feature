Feature: Edit Bug
  In order to update a bug with what has happened
  As someone interested in the bug
  I want to edit them

  Scenario: I update a bug
    Given I have the bug:
      | Label | Description   | Status |
      | Old   | old/wrong bug | Open   |
    When I update the bug to be:
      | Label | Description | Status |
      | Old   | accurate    | Closed |
    Then the bug list should be in the following order:
      | Description | Status |
      | accurate    | Closed |