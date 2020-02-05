@JIRA-Key-MANUSCRIPT-29413
@UserGroup
Feature: User - Search users by their name or email

  Scenario: Administrator can search users by name
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name                         | Email                                         | Account Type  | Active | Active on FogBugz | Active on Kiln |
      | FogBugz Administrator             | fogbugz-administrator@nowhere.com             | Administrator | true   | true              | false          |
      | Kiln Administrator                | kiln-administrator@nowhere.com                | Administrator | true   | false             | true           |
      | Administrator                     | administrator@nowhere.com                     | Administrator | true   | false             | false          |
      | Inactive Administrator            | inactive-administrator@nowhere.com            | Administrator | false  | false             | false          |
      | FogBugz Normal User               | fogbugz-normal-user@nowhere.com               | Normal        | true   | true              | false          |
      | Kiln Normal User                  | kiln-normal-user@nowhere.com                  | Normal        | true   | false             | true           |
      | Normal User                       | normal-user@nowhere.com                       | Normal        | true   | false             | false          |
      | Inactive FogBugz Kiln Normal User | inactive-fogbugz-kiln-normal-user@nowhere.com | Normal        | false  | true              | true           |
      | Virtual User                      | virtual-user@nowhere.com                      | Virtual       | true   | N/A               | N/A            |
      | Inactive Virtual User             | inactive-virtual-user@nowhere.com             | Virtual       | false  | N/A               | N/A            |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    When The user searches for the "FogBugz" search string by using the search users box in the "Manage Users" page
    Then The following users are listed in the "Administrators" table in the "Manage Users" page in the following order:
      | Full name             | Email                             |
      | FogBugz Administrator | fogbugz-administrator@nowhere.com |
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name           | Email                           |
      | FogBugz Normal User | fogbugz-normal-user@nowhere.com |
    And The following users are listed in the "Virtual Users" table in the "Manage Users" page in the following order:
      | Full name                         | Email                                         |
      | Inactive FogBugz Kiln Normal User | inactive-fogbugz-kiln-normal-user@nowhere.com |

  Scenario: Administrator can search users by email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name                         | Email                                                 | Account Type  | Active | Active on FogBugz | Active on Kiln |
      | FogBugz Administrator             | fogbugz-administrator-special@nowhere.com             | Administrator | true   | true              | false          |
      | Kiln Administrator                | kiln-administrator@nowhere.com                        | Administrator | true   | false             | true           |
      | Administrator                     | administrator@nowhere.com                             | Administrator | true   | false             | false          |
      | Inactive Administrator            | inactive-administrator@nowhere.com                    | Administrator | false  | false             | false          |
      | FogBugz Normal User               | fogbugz-normal-user-special@nowhere.com               | Normal        | true   | true              | false          |
      | Kiln Normal User                  | kiln-normal-user@nowhere.com                          | Normal        | true   | false             | true           |
      | Normal User                       | normal-user@nowhere.com                               | Normal        | true   | false             | false          |
      | Inactive FogBugz Kiln Normal User | inactive-fogbugz-kiln-normal-user-special@nowhere.com | Normal        | false  | true              | true           |
      | Virtual User                      | virtual-user@nowhere.com                              | Virtual       | true   | N/A               | N/A            |
      | Inactive Virtual User             | inactive-virtual-user@nowhere.com                     | Virtual       | false  | N/A               | N/A            |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    When The user searches for the "special" search string by using the search users box in the "Manage Users" page
    Then The following users are listed in the "Administrators" table in the "Manage Users" page in the following order:
      | Full name             | Email                                     |
      | FogBugz Administrator | fogbugz-administrator-special@nowhere.com |
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name           | Email                                   |
      | FogBugz Normal User | fogbugz-normal-user-special@nowhere.com |
    And The following users are listed in the "Virtual Users" table in the "Manage Users" page in the following order:
      | Full name                         | Email                                                 |
      | Inactive FogBugz Kiln Normal User | inactive-fogbugz-kiln-normal-user-special@nowhere.com |

