@NotAutomated
@JIRA-Key-MANUSCRIPT-29641
@User
Feature: User - Copy - View Projects

  Scenario: Administrator can view projects copied user has access to
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name | Notes       |
      | X 55 | AKIT Member |
    And The following users exist:
      | User Group | Full name | Email         | Password | Account Type | Active On Kiln | Active on FogBugz |
      | X 55       | Lion King | lk@jungle.com | lking    | Normal       | true           | true              |
    And The following projects exist:
      | Project Name                             | Primary Contact | Deleted |
      | Deleted Project                          | Administrator   | true    |
      | Project of Primary Contact               | Lion King       | false   |
      | Project with All Normal Users: Read      | Administrator   | false   |
      | Project with All Normal Users: Modify    | Administrator   | false   |
      | Project with All Normal Users: Admin     | Administrator   | false   |
      | Project with User Group                  | Administrator   | false   |
      | Project with User                        | Administrator   | false   |
      | Project without All Normal Users: Read   | Administrator   | false   |
      | Project without All Normal Users: Modify | Administrator   | false   |
      | Project without All Normal Users: Admin  | Administrator   | false   |
      | Project without User Group               | Administrator   | false   |
      | Project without User                     | Administrator   | false   |
    And The following permissions exist:
      | Project                                  | Type         | Name                | Read  | Modify | Admin |
      | Project with All Normal Users: Read      | Normal Users | All Normal Users    | true  | false  | false |
      | Project with All Normal Users: Modify    | Normal Users | All Normal Users    | false | true   | false |
      | Project with All Normal Users: Admin     | Normal Users | All Normal Users    | false | false  | true  |
      | Project with User Group                  | Normal Users | Pride               | false | false  | true  |
      | Project with User                        | Normal Users | Lion King           | false | false  | true  |
      | Project without All Normal Users: Read   | Normal Users | Site Administrators | false | false  | true  |
      | Project without All Normal Users: Modify | Normal Users | Site Administrators | false | false  | true  |
      | Project without All Normal Users: Admin  | Normal Users | Site Administrators | false | false  | true  |
      | Project without User Group               | Normal Users | Site Administrators | false | false  | true  |
      | Project without User                     | Normal Users | Site Administrators | false | false  | true  |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Copy" link for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    When The user is redirected to the "Copy User" page
    Then The following projects are listed in the "Projects (6)" section in the "More Information" section in the "Copy User" page:
      | Project                               | Permission |
      | Project of Primary Contact            | Modify     |
      | Project with All Normal Users: Read   | Read       |
      | Project with All Normal Users: Modify | Modify     |
      | Project with All Normal Users: Admin  | Admin      |
      | Project with User Group               | Admin      |
      | Project with User                     | Admin      |
