Feature: Selecting environments
  In order to work with applications that have multiple EY environments
  As a developer
  I want to select an environment if I have more than 1

  Scenario: One environment
    Given I am in an application folder
    And I have "one app, one environment"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "deploy" engineyard command
    Then I should see deploy output
  
  Scenario: Run command for multiple environments without having selected one
    Given I am in an application folder
    And I have "one app, many environments"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    When I execute the "deploy" engineyard command
    Then I should be asked to first set my environment
  
  Scenario: Run command for multiple environments after selected one
    Given I am in an application folder
    And I have "one app, many environments"
    And it is a git repository with a remote
    And I have setup my engineyard email/password for API access
    And I expect to select one of the environments
    When I select one of the environments
    When I execute the "deploy" engineyard command
    Then I should see deploy output
