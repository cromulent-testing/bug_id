@javascript
Feature: End to end flows via the front end

  Scenario: Create a bug
    When I create a bug:
      | summary                    | status |
      | closed -end to end summary | close  |
      | open -end to end summary   | open   |

    Then the bug list should be:
      | summary                    | status |
      | open -end to end summary   | open   |
      | closed -end to end summary | close  |
