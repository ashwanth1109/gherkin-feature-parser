@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29622
@Project
Feature: Project - Edit - Milestone - Case Assignment

  Scenario: Cases can be assigned to non-deleted assignable milestones of a selected project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Boxer        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Deleted | Assignable |
      | Ninja   | false        | true         | Throw a hurricane | 5/16/2022       | false   | true       |
      | Ninja   | false        | true         | Unassignable      | 5/16/2022       | true    | false      |
      | Boxer   | false        | true         | Punch             | 5/16/2022       | false   | true       |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    When The user enters the case details in the "New Case" page:
      | Title      | Project |
      | Cornucopia | Ninja   |
    And The user clicks the "Milestone" dropdown in the "New Case" page
    Then The following milestones are listed in the "Milestone" dropdown in the "New Case" page:
      | Ninja: Throw a hurricane |

  Scenario: All projects milestones are always available
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Boxer        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Deleted | Assignable |
      | Ninja   | false        | true         | Throw a hurricane | 5/16/2022       | false   | true       |
      | Boxer   | false        | true         | Punch             | 5/16/2022       | false   | false      |
      |         | true         | false        | Hit               | 5/16/2022       | false   | true       |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    When The user enters the case details in the "New Case" page:
      | Title      | Project |
      | Cornucopia | Ninja   |
    And The user clicks the "Milestone" dropdown in the "New Case" page
    Then The following milestones are listed in the "Milestone" dropdown in the "New Case" page:
      | Ninja: Throw a hurricane |
      | All Projects: Hit        |
