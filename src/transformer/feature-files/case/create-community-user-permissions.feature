@NotAutomated
@JIRA-Key-MANUSCRIPT-29678
@Case
Feature: Case - Create - Community User - Permissions

  Scenario: Community User can create a new case for projects with "All Community Users" permission
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following permissions exist:
      | Project | Type           | Name                | Submit Cases |
      | Ninja   | Community User | All Community Users | true         |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    Then The following projects are listed in the "Project" dropdown in the "New Public Case" page:
      | Ninja |

  Scenario: Community User can create a new case for projects with permission given to that community user
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following permissions exist:
      | Project | Type           | Name           | Submit Cases |
      | Ninja   | Community User | Alesha Muromec | true         |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    Then The following projects are listed in the "Project" dropdown in the "New Case" page:
      | Ninja |

  Scenario: Community User can create a new case for projects with permission given to the user group with a community user
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following community user groups exist:
      | Name | Notes       |
      | X55  | AKIT Member |
    And The following community users exist:
      | User Group | Full Name      | Email              | Password |
      | X55        | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The following permissions exist:
      | Project | Type           | Name | Submit Cases |
      | Ninja   | Community User | X55  | true         |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    Then The following projects are listed in the "Project" dropdown in the "New Public Case" page:
      | Ninja |
