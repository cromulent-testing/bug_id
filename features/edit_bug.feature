Feature: Bugs can be edited
  In order to update a bug with what has happened
  As someone interested in the bug
  I want to edit them

  Scenario: I update a bug
    Given I have the bug "old"
      | Summary       | Status |
      | old/wrong bug | open   |
    When I update "old" to be
      | Summary  | Status |
      | accurate | closed |
    Then the bug "old" will be
      | Summary  | Status |
      | accurate | closed |