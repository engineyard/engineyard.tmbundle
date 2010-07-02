Feature: Execution command
  In order to quickly execute common EY deployment commands
  As an Engine Yard customer
  I want run commands from TextMate

  Scenario: Deploy current application project (known user/password)
    Given I am in an application folder
    And I have "one app, one environment"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "deploy" engineyard command
    Then I should see deploy output
    
  Scenario: Rebuild current application 
    Given I am in an application folder
    And I have "one app, one environment"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "rebuild" engineyard command
    Then I should see rebuild output
  
  Scenario: Logs for current application 
    Given I am in an application folder
    And I have "one app, one environment"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "logs" engineyard command
    Then I should see logs output
  
  
  
  
  
  
