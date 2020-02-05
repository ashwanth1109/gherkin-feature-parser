@NotAutomated
@JIRA-Key-MANUSCRIPT-31034
@Planner
Feature: Planner - Case - Change Priority

  Background:
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone | Priority     |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 1 - Must Fix |
      | 19 | BugC  | Closed   | Ninja   | Hurricane | 1 - Must Fix |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |

  Scenario: Change active bug priority through action dropdown in planners
    When The user clicks the "Priority" icon for the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "3 - Must Fix" option from the "Change Priority" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Priority     |
      | 18 | BugA  | 3 - Must Fix |
    And The user clicks the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title | Priority     |
      | 18 | BugA  | 3 - Must Fix |

  Scenario: Change resolved bug priority through action dropdown in planners
    When The user clicks the "Priority" icon for the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "3 - Must Fix" option from the "Change Priority" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Priority     |
      | 17 | BugR  | 3 - Must Fix |
    And The user clicks the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title | Priority     |
      | 17 | BugR  | 3 - Must Fix |

  Scenario: User cannot change priority of a closed bug through action dropdown in planners
    When The user clicks the "Quick Edit" button for the "BugC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Change Priority" item is not available in the "Quick Edit" dropdown
