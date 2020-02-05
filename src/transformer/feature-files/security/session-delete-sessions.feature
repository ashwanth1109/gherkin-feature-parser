@NotAutomated
@JIRA-Key-MANUSCRIPT-31791
@Security
Feature: Security - Session - Delete Sessions

  Scenario: Administrator can delete all sessions
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The following community users exist:
      | Email                         | Name    |
      | community-user@manuscript.com | Linus T |
    And The user is logged in as the "lk@jungle.com" user in another web browser window
    And The user is logged in as the "community-user@manuscript.com" user in another web browser window
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Session Management" menu item in the sidebar menu
    And The user clicks the "Kill All Sessions" button in the "Session Management" page
    And The user clicks the "OK" button in the "Kill All Sessions" confirmation dialog
    And The user clicks the "OK" button in the "Last chance to turn back" confirmation dialog
    Then The user is logged out
    And The user is redirected to the "Login" page
    And The user is logged out as the "lk@jungle.com" user in another web browser window
    And The user is logged out as the "community-user@manuscript.com" user in another web browser window
