Feature: Execution command
  In order to quickly execute common EY deployment commands
  As an Engine Yard customer
  I want run commands from TextMate

  Scenario: Deploy current application project (known user/password)
    Given I am in an application folder
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "deploy" engineyard command
    Then I should see deploy output
  
  
  
