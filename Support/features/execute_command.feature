Feature: Execution command
  In order to quickly execute common EY deployment commands
  As an Engine Yard customer
  I want run commands from TextMate

  Scenario: Deploy current application project
    Given I am in an application
    And it is a git repository with a remote
    When I execute the "deploy" engineyard command
    Then I should see deploy output
  
  
  
