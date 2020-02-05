@NotAutomated
@JIRA-Key-MANUSCRIPT-31790
@Security
Feature: Security - Session - Delete Session Tokens

  Scenario: Administrator can delete session tokens for a user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Session Management" menu item in the sidebar menu
    And The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      | Session    |
    And The user clicks the "Delete" button for the "Session" row for the "Administrator" user in the "Session Management" page
    Then The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      |            |
    And The user is logged out
    And The user is redirected to the "Login" page
