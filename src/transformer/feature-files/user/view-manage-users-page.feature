@JIRA-Key-MANUSCRIPT-28746
@User
@ResetState
Feature: User - View "Manage Users" page

  Scenario: View "Manage Users" page: "Total Active" tab: All active users are listed.
    Given The following users exist:
      | Full Name                         | Email                                         | Account Type  | Active | Active on FogBugz | Active on Kiln |
      | FogBugz Administrator             | fogbugz-administrator@fogbugz.com             | Administrator | true   | true              | false          |
      | Kiln Administrator                | kiln-administrator@fogbugz.com                | Administrator | true   | false             | true           |
      | Administrator                     | administrator@fogbugz.com                     | Administrator | true   | false             | false          |
      | Inactive Administrator            | inactive-administrator@fogbugz.com            | Administrator | false  | false             | false          |
      | FogBugz Normal User               | fogbugz-normal-user@fogbugz.com               | Normal        | true   | true              | false          |
      | Kiln Normal User                  | kiln-normal-user@fogbugz.com                  | Normal        | true   | false             | true           |
      | Normal User                       | normal-user@fogbugz.com                       | Normal        | true   | false             | false          |
      | Inactive FogBugz Kiln Normal User | inactive-fogbugz-kiln-normal-user@fogbugz.com | Normal        | false  | true              | true           |
      | Virtual User                      | virtual-user@fogbugz.com                      | Virtual       | true   | N/A               | N/A            |
      | Inactive Virtual User             | inactive-virtual-user@fogbugz.com             | Virtual       | false  | N/A               | N/A            |
    And The user is logged in as Administrator with the "fogbugz-administrator@fogbugz.com" email
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    When The user clicks the "Total Active" tab in the "Manage Users" page
    Then The following users are listed in the "Administrators" table in the "Manage Users" page in the following order:
      | Full name             | Email                             |
      | Administrator         | administrator@fogbugz.com         |
      | FogBugz Administrator | fogbugz-administrator@fogbugz.com |
      | Kiln Administrator    | kiln-administrator@fogbugz.com    |
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name           | Email                           |
      | FogBugz Normal User | fogbugz-normal-user@fogbugz.com |
      | Kiln Normal User    | kiln-normal-user@fogbugz.com    |
      | Normal User         | normal-user@fogbugz.com         |
    And The following users are listed in the "Virtual Users" table in the "Manage Users" page in the following order:
      | Full name    | Email                    |
      | Virtual User | virtual-user@fogbugz.com |
