@NotAutomated
@JIRA-Key-MANUSCRIPT-31787
@Security
Feature: Security - Session - View All

  Scenario: Administrator can view all sessions
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
    Then The following details are shown in the "Session Management" dialog:
      | User          | Session count |
      | Administrator | 1             |
      | Lion King     | 1             |
      | User 1        | 1             |
