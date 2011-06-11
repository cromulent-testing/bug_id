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
    When I create a bug with the description "my description"
    Then the bugs list should have 1 bug

#MB/RB:this is an example of merging scenarios
#  Scenario: delete the only bug
#    Given I have "1" bugs
#    When I delete bug
#    Then the bugs list should be empty

#  Scenario: delete one of many bugs
#    Given I have "2" bugs
#    When I delete bug
#    Then the bugs list should have 1 bug


  Scenario: view all bugs
    Given I have the bugs:
      | Description | Status |
      | bug 1       | Open   |
      | bug 2       | Closed |
    When I view the bugs list
    Then the bug list should be:
      | Description | Status |
      | bug 1       | Open   |
      | bug 2       | Closed |


# a take away - you don't the first scenario right as writing the others will help you form the right words

# BOUNCE BACK FROM TEST: can we have two bugs with the same summary?
#Pagination