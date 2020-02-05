@NotAutomated
@JIRA-Key-MANUSCRIPT-30070
@User
Feature: User - Date, Time, and Number Format - Overrides Configuration

  Background:
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Date, Time, and Number Format |
      | English (United States)       |
    And The following user options exist:
      | Date, Time, and Number Format |
      | Thai (Thailand)               |

  Scenario: User - Date, Time, and Number Format - Overrides Configuration - New Case
    Given The user clicks the "New Case" button in the sidebar
    When The user is redirected to the "New Case" page
    Then The "Opened by" event title contains the current date in the "Thai (Thailand)" date format

  Scenario: User - Date, Time, and Number Format - Overrides Configuration - New Email
    Given The user clicks the "New Email" button in the sidebar
    When The user is redirected to the "New Email" page
    Then The "Emailed by" event title contains the current date in the "Thai (Thailand)" date format

  Scenario: User - Date, Time, and Number Format - Overrides Configuration - Filters - Date Opened
    Given The following cases exist:
      | ID | Title              |
      | 16 | New Case to handle |
    And The user clicks the "Filters" menu item in the sidebar
    When The user is redirected to the "Filters" page
    And The user clicks the "Select Columns" link in the "Filters" page
    And The user checks the "Date Opened" checkbox in the "Select Columns" dropdown in the "Filters" page
    Then The "Date Opened" value of the "New Case to handle" case in the "Filters" page has date in the "Thai (Thailand)" date format

  Scenario: User - Date, Time, and Number Format - Overrides Configuration - Recents - Hover over case
    Given The following cases exist:
      | ID | Title              |
      | 16 | New Case to handle |
    And The user searches for the "16" search string by using the search box
    And The user hovers over the "Recent" menu item in the sidebar
    When The user hovers over the "New Case to handle" case in the sidebar menu
    And The "Case Tooltip" is shown
    Then The "Latest Edit" event title contains the current date in the "Thai (Thailand)" date format in the "Case Tooltip"

  Scenario: User - Date, Time, and Number Format - Overrides Configuration - Recents - Wiki Article - Last Modified
    Given The following wikis exist:
      | Title    |
      | Notebook |
    And The user hovers over the "Wiki" menu item in the sidebar
    And The user clicks the "Notebook" menu item in the sidebar menu
    When The user clicks the "View" link in the "Root Article" wiki article
    Then The "Last Modified" title contains the current date in the "Thai (Thailand)" date format