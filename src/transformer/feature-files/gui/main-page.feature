@NotAutomated
@JIRA-Key-MANUSCRIPT-31704
@Gui
Feature: GUI - Main Page

  Scenario: Normal User can see the sidebar
    Given The user is logged in as Normal User
    Then The following menu items are shown in the sidebar menu:
      | Filters       |
      | Favorites     |
      | Recent        |
      | Planner       |
      | Wiki          |
      | Time Tracking |
      | Kiln          |
    And The "Avatar" icon is shown in the sidebar
    And The "New Case" button is shown in the sidebar
    And The "New Email" button is shown in the sidebar
    And The "Notifications" icon is shown in the sidebar

  Scenario: Administrator can see the sidebar
    Given The user is logged in as Administrator
    Then The following menu items are shown in the sidebar menu:
      | Filters       |
      | Favorites     |
      | Recent        |
      | Planner       |
      | Wiki          |
      | Time Tracking |
      | Kiln          |
    And The "Avatar" icon is shown in the sidebar
    And The "New Case" button is shown in the sidebar
    And The "New Email" button is shown in the sidebar
    And The "Notifications" icon is shown in the sidebar
