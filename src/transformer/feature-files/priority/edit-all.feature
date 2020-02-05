@NotAutomated
@JIRA-Key-MANUSCRIPT-28921
@Priority
Feature: Priority - Edit all

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Priority" menu item in the sidebar menu
    And The "Priorities" page is shown
     # NOTE: This is an assertion, not an action!
    And The following priorities are listed in the "Priorities" table in the "Priorities" page in the following order:
      | Priority Number | Priority Label | Default |
      | 1               | Must Fix       | false   |
      | 2               | Must Fix       | false   |
      | 3               | Must Fix       | true    |
      | 4               | Fix If Time    | false   |
      | 5               | Fix If Time    | false   |
      | 6               | Fix If Time    | false   |
      | 7               | Don't Fix      | false   |

  Scenario: Administrator can rename many priorities at once
    When The user enters the priorities details in the "Priorities" table in the "Priorities" page:
      | Priority Number | Priority Label |
      | 1               | Must Fix 1     |
      | 2               | Must Fix 2     |
      | 3               | Must Fix 3     |
      | 4               | Fix If Time 1  |
      | 5               | Fix If Time 2  |
      | 6               | Fix If Time 3  |
      | 7               | Don't Fix 1    |
    And The user clicks the "OK" button in the "Priorities" page
    Then The following toast notification is shown in the "Priorities" page:
      | Type    | Caption  | Message             |
      | Success | Success! | Priorities updated. |
    And The user navigates to the "Index" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Priority" menu item in the sidebar menu
    And The "Priorities" page is shown
    And The following priorities are listed in the "Priorities" table in the "Priorities" page in the following order:
      | Priority Number | Priority Label | Default |
      | 1               | Must Fix 1     | false   |
      | 2               | Must Fix 2     | false   |
      | 3               | Must Fix 3     | true    |
      | 4               | Fix If Time 1  | false   |
      | 5               | Fix If Time 2  | false   |
      | 6               | Fix If Time 3  | false   |
      | 7               | Don't Fix 1    | false   |

  Scenario: Administrator can mark the priority as default
    When The user clicks the "Default" radio button for the priority number "4" row in the "Priorities" table in the "Priorities" page
    And The user clicks the "OK" button in the "Priorities" page
    Then The following toast notification is shown in the "Priorities" page:
      | Type    | Caption  | Message             |
      | Success | Success! | Priorities updated. |
    And The user navigates to the "Index" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Priority" menu item in the sidebar menu
    And The "Priorities" page is shown
    And The following priorities are listed in the "Priorities" table in the "Priorities" page in the following order:
      | Priority Number | Priority Label | Default |
      | 1               | Must Fix       | false   |
      | 2               | Must Fix       | false   |
      | 3               | Must Fix       | false   |
      | 4               | Fix If Time    | true    |
      | 5               | Fix If Time    | false   |
      | 6               | Fix If Time    | false   |
      | 7               | Don't Fix      | false   |
