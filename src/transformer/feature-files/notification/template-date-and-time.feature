@NotAutomated
@JIRA-Key-MANUSCRIPT-31879
@Notification
Feature: Notification - Notification Template - Date and time

  Scenario: Date and time is shown for notifications - short periods
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title                            | Description              | Item   | Date                            | Read |
      | Assign | 16: Intro Case for Administrator | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
    And The "Date" field for the "16: Intro Case for Administrator" notification has the "Just now" format
    And 2 minutes have passed
    And The user refreshes the page
    And The "Date" field for the "16: Intro Case for Administrator" notification has the "X minutes ago" format

  Scenario: Date and time is shown for notifications - today
    Given 2 hours have passed
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The "Date" field for the "16: Intro Case for Administrator" notification has the "Today at XX:YY PM/AM" format

  Scenario: Date and time is shown for notifications - yesterday
    Given 1 day has passed
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The "Date" field for the "16: Intro Case for Administrator" notification has the "Yesterday at XX:YY PM/AM" format

  Scenario: Date and time is shown for notifications - until 6 days ago
    Given 5 days have passed
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The "Date" field for the "16: Intro Case for Administrator" notification has the "DayOfWeek at XX:YY PM/AM" format

  Scenario: Date and time is shown for notifications - week and more ago
    Given 1 week has passed
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The "Date" field for the "16: Intro Case for Administrator" notification has the "MMM d at XX:YY PM/AM" format
