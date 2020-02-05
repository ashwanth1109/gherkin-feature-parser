@NotAutomated
@JIRA-Key-MANUSCRIPT-31035
@Planner
Feature: Planner - Case - Actions - Assign

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
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
      | ID | Title | Status   | Project | Milestone | Assigned To   |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | Administrator |
      | 18 | BugA  | Active   | Ninja   | Hurricane | Administrator |
      | 19 | BugC  | Closed   | Ninja   | Hurricane | Administrator |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |

  Scenario: Change active bug assignment through action dropdown in planners
    When The user clicks the "Quick Edit" button for the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The user clicks the "Assign" item in the "Quick Edit" dropdown
    And The user selects the "Lion King" option from the "Assign" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Assigned To |
      | 18 | BugA  | Lion King   |
    And The user clicks the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title | Assigned To |
      | 18 | BugA  | Lion King   |

  Scenario: Change resolved bug assignment through action dropdown in planners
    When The user clicks the "Quick Edit" button for the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The user clicks the "Assign" item in the "Quick Edit" dropdown
    And The user selects the "Lion King" option from the "Assign" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Assigned To |
      | 17 | BugR  | Lion King   |
    And The user clicks the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title | Assigned To |
      | 17 | BugR  | Lion King   |

  Scenario: User cannot change assignment of a closed bug through action dropdown in planners
    When The user clicks the "Quick Edit" button for the "BugC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Assign" item is not available in the "Quick Edit" dropdown
