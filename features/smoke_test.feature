#@javascript
Feature: End to end flows via the front end

  Scenario: Create some bugs
    When I create the bugs:
      | Label  | Description                | Status |
      | first  | closed -end to end summary | Closed |
      | second | open -end to end summary   | Open   |
    Then the bug list should be:
      | Description                | Status |
      | open -end to end summary   | Open   |
      | closed -end to end summary | Closed |
    When I update "second" to be
      | Description | Status |
      | new summary | close  |
    Then the bug list should be:
      | Description                | Status |
      | new summary                | Closed |
      | closed -end to end summary | Closed |