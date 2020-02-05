@NotAutomated
@JIRA-Key-MANUSCRIPT-31788
@Security
Feature: Security - Session - Delete All Tokens

  Scenario: Administrator can delete all tokens for a user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Create API Token" button in the "User Options" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Session Management" menu item in the sidebar menu
    And The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      | Api        |
      | Session    |
    And The user clicks the "Delete All Tokens" button for the "Administrator" user in the "Session Management" page
    Then The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      |            |
    And The user is logged out
    And The user is redirected to the "Login" page
