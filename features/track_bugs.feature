# first thoughts on the feature format
# don't like the inability to store epics in the system because scenarios
# should be aligned to an epic
# you dont always need a given when and then

Feature: tracking bugs
  In order to remember issues I've found
  As a tester
  I want to store them in an accessible place

#First thoughts on this scenario:
# isolated from implementation
# no mention of redirects or user flows
# just what happens and the business benefit

# twitter style bug tracker with #hash-tags and following parts of the system
# i care about?


  Scenario: I've found a bug and want to store it
  #MB things this is not as clear as 'on the bugs list'
  #a better test
  #Then I should see "my summary" on the bugs list

  #MB/RB we think this is perhaps a step to far
  #When I create a bug

  #MB - this is better english
  #Then I should see the bug on the bugs list

  #MB/RB: in the end this is nicer
    When I create a bug with the summary "my summary"
    Then the bugs list should have 1 bug

  Scenario Outline: Delete a bug
    Given I have "<Bug count>" bug
    When I delete a bug
    Then the bugs list should have "<Bugs remaining>" bug

  Examples:
    | Bug count | Bugs remaining |
    | 1         | 0              |
    | 2         | 1              |

#MB/RB:this is an example of merging scenarios
#  Scenario: delete the only bug
#    Given I have "1" bugs
#    When I delete bug
#    Then the bugs list should be empty

#  Scenario: delete one of many bugs
#    Given I have "2" bugs
#    When I delete bug
#    Then the bugs list should have 1 bug


  Scenario: update an existing bug
    Given I have a bug with the summary "my summary"
    When I change the description to "blue screen of death"
    Then the description for that bug should be "blue screen of death"


  Scenario: view all bugs
    Given I have the following bugs:
      | Description |
      | bug 1   |
      | bug 2   |
    When I view the bugs list
    Then I should see the following bugs:
      | Description |
      | bug 1   |
      | bug 2   |


# a take away - you don't the first scenario right as writing the others will help you form the right words

# BOUNCE BACK FROM TEST: can we have two bugs with the same summary?
#Pagination