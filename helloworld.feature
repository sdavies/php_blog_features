Feature: Hello World
  In order to test cucumber for php
  As a developer
  I want test cucumber

  Scenario: visit the home page
    Given something truthy
    When I visit the home page
    Then I should see "Blog"
    And I should see "My First Entry"
    #Then I pry
    #And snap!
    When I follow "My First Entry"
    Then I should see "Edit"
    #And show me the page
