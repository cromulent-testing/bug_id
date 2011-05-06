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
    Given I'm on the new bugs page
    When I enter the summary "I can't write a summary yet"
    And save it
    Then it should be visible in on the bugs page


  Scenario: Should show me an error if i try to submit an empty bug
    Given I'm on the new bugs page
    When I enter the summary ""
    And save it
    Then I should see the error div with "1" error

  