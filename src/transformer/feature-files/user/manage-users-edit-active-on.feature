@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29170
@User
Feature: User - Manage Users - Edit Active On

  Scenario: Administrator can activate Fogbugz for a user
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password | Status | Active On: FogBugz |
      | Lion King | lk@jungle.com | 123123   | Active | false              |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name | Email         | Status | Active On: FogBugz |
      | Lion King | lk@jungle.com | Active | false              |
    And The user checks "Active On: FogBugz" checkbox for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    When The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | 123123   |
    Then The user logs in

  Scenario: Administrator can deactivate Fogbugz for a user
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password | Status | Active On: FogBugz |
      | Lion King | lk@jungle.com | 123123   | Active | true               |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name | Email         | Status | Active On: FogBugz |
      | Lion King | lk@jungle.com | Active | true               |
    And The user unchecks the "Active On: FogBugz" checkbox for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    When The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | 123123   |
    Then The user is redirected to the "Account Disabled" page
