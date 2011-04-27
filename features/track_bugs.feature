Feature: tracking bugs
  In order to remember issues I've found
  As a tester
  I want to store them in an accessible place

  # first thoughts on the feature format
  # don't like the inability to store epics in the system because scenarios
  # should be aligned to an epic
  # you dont always need a given when and then

  Scenario: I've found a bug and want to store it
    When I enter the summary "I can't write a summary yet"
    And save it
    Then it should be visible in on the bugs page

  #First thoughts on this scenario:
  # isolated from implementation
  # no mention of redirects or user flows
  # just what happens and the business benefit

  # twitter style bug tracker with #hash-tags and following parts of the system
  # i care about?


