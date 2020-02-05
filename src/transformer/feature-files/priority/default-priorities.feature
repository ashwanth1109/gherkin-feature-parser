@NotAutomated
@JIRA-Key-MANUSCRIPT-28775
@Priority
Feature: Priority - Default priorities

  Scenario: System provides the default priorities
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Priority" menu item in the sidebar menu
    Then The "Priorities" page is shown
    And The following priorities are listed in the "Priorities" table in the "Priorities" page in the following order:
      | Priority Number | Priority Label | Default |
      | 1               | Must Fix       | false   |
      | 2               | Must Fix       | false   |
      | 3               | Must Fix       | true    |
      | 4               | Fix If Time    | false   |
      | 5               | Fix If Time    | false   |
      | 6               | Fix If Time    | false   |
      | 7               | Don't Fix      | false   |
