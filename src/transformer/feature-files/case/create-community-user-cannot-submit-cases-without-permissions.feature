@NotAutomated
@JIRA-Key-MANUSCRIPT-29679
@Case
Feature: Case - Create - Community User - Cannot Submit Cases Without Permissions

  Scenario: Community User can create a new case for projects with permission given to the user group with a community user
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    Then The "New Case" button is not shown in the sidebar
