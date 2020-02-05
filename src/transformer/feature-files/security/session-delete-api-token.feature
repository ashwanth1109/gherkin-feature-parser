@NotAutomated
@JIRA-Key-MANUSCRIPT-31789
@Security
Feature: Security - Session - Delete API token

  Scenario: Administrator can delete an API token of a user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Create API Token" button in the "User Options" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Session Management" menu item in the sidebar menu
    Then The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      | Api        |
      | Session    |
    And The user clicks the "Delete" button for the "Api" row for the "Administrator" user in the "Session Management" page
    And The following tokens are shown for the "Administrator" user in the "Session Management" page:
      | Token Type |
      | Session    |
