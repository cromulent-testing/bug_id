@javascript
Feature: End to end flows via the browser

  Scenario: Create a bug
    When I create a bug:
      | summary            | status |
      | end to end summary | open   |
    Then the bug list should be:
      | summary            | status |
      | end to end summary | open   |