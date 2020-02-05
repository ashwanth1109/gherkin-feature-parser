@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29834
@User
Feature: User - Edit - Legacy - Status - View

  Scenario: User - Edit - Legacy - Status - View Active
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Avatar" icon for the "Test UserA" user in the "Manage Users" page
    When The user clicks the "Legacy Settings" link in the "User Options" page
    Then The following user details are shown in the "User Options" page:
      | Status |
      | Active |

  Scenario: User - Edit - Legacy - Status - View Inactive
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status   |
      | Test UserA | testusera@manuscript.com | Normal       | Inactive |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Avatar" icon for the "Test UserA" user in the "Manage Users" page
    When The user clicks the "Legacy Settings" link in the "User Options" page
    Then The following user details are shown in the "User Options" page:
      | Status   |
      | Inactive |
