Feature: Search elib.se
  Scenario: Search for Ruby books
    Given I visit the elib homepage
    When I search for Ruby
    Then I should see Programmering i Ruby

