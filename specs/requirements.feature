Feature: Colombian Business System - Requirements Management

  Scenario: Successful user authentication
    Given the user is on the login page
    When they enter valid credentials with email "user@domain.co" and password "Secure Pass123"
    And they click the "Log In" button
    Then they should be redirected to the main dashboard
    And a welcome message should be displayed

  Scenario: Failed login due to invalid password
    Given the user is on the login page
    When they enter an email "user@domain.co" and an incorrect password "Wrong Pass"
    And they click the "Log In" button
    Then an error message "Invalid credentials" should appear
    And the user should remain on the login page

  Scenario: Create a new high-priority user story
    Given the manager is logged into the administrative portal
    When they create a story titled "Implement Online Payments" with priority "Must Have"
    And they save the new story
    Then the story should appear on the Scrum Board under the "To Do" column

  Scenario: Filter backlog items by MoSCoW priority
    Given the product owner is reviewing the backlog
    When they apply the filter for "Must Have" items
    Then only high-priority tasks should be visible in the list

  Scenario: Automated test execution from feature file
    Given the test runner executes the "requirements.feature" suite
    When all 5 BDD scenarios complete without errors
    Then the CI/CD pipeline status should update to green
