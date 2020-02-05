@NotAutomated
@JIRA-Key-MANUSCRIPT-31887
@Notification
Feature: Notification - Filter - Save

  Scenario: Filters user select on notifications page are persisted when page is refreshed
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    And The following filters are shown in the "Notifications" page:
      | Assigned | Notified | Subscribed | Only Unread |
      | true     | true     | true       | false       |
    When The user clicks the "Assigned" button in the "Notifications" page
    And The user clicks the "Notified" button in the "Notifications" page
    And The user clicks the "Subscribed" button in the "Notifications" page
    And The user clicks the "Only Unread" button in the "Notifications" page
    And The user refreshes the page
    Then The following filters are shown in the "Notifications" page:
      | Assigned | Notified | Subscribed | Only Unread |
      | true     | true     | true       | false       |
