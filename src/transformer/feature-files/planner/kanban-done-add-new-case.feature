@NotAutomated
@JIRA-Key-MANUSCRIPT-31485
@Planner
Feature: Planner - Kanban - Done - Add New Case

  Scenario: User can create a new untitled case for the "Done" kanban column
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
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Add" button for the "Done" column
    And The user clicks the "Create new: in Ninja" link in the "Add New Case" dialog
    Then The following cases are shown in the "Done" column:
      | ID | Title      |
      | 17 | (Untitled) |
    And The user clicks the "(Untitled)" case in the "Done" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title      | Milestone | Project | Status | Kanban Column |
      | 17 | (Untitled) | Hurricane | Ninja   | Active | Done          |

  Scenario: User can create a new case with a title for the "Done" kanban column
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
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Add" button for the "Done" column
    And The user enters the "Another" search string in the search box in the "Add New Case" dialog in the "Kanban" page
    And The user clicks the "Create new: in Ninja" link in the "Add New Case" dialog
    Then The following cases are shown in the "Done" column:
      | ID | Title   |
      | 17 | Another |
    And The user clicks the "Another" case in the "Done" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title   | Milestone | Project | Status | Kanban Column |
      | 17 | Another | Hurricane | Ninja   | Active | Done          |

