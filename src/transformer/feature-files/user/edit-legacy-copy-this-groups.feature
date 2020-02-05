@NotAutomated
@JIRA-Key-MANUSCRIPT-30288
@User
Feature: User - Edit - Legacy - Copy this user - Groups

  Scenario: Administrator can view user groups of a user being copied from legacy options
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name   | Notes       |
      | X 55   | AKIT Member |
      | Not In | AKIT Member |
    And The following users exist:
      | User Group | Full name | Email         | Password | Account Type | Active On Kiln | Active on FogBugz |
      | X 55       | Lion King | lk@jungle.com | lking    | Normal       | true           | true              |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Edit" link for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user is redirected to the "Copy User" page
    Then The following projects are listed in the "User Groups (1)" section in the "More Information" section in the "Copy User" page:
      | Group Name |
      | X 55       |
