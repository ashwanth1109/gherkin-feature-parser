@NotAutomated
@JIRA-Key-MANUSCRIPT-29642
@User
Feature: User - Copy - View Discussion Groups

  Scenario: Administrator can view discussion groups copied user has access to
    Given The user is logged in as Administrator
    And The following normal user groups exist:
        | Name                | Notes                      |
        | Normal user group A | Normal user group A notes. |
        | Normal user group B | Normal user group B notes. |
        | Normal user group C | Normal user group C notes. |
    And The following users exist:
        | User Group          | Full Name     | Email                     | Password       |
        | Normal user group A | Normal user A | normal-user-a@fogbugz.com | GoodPassword1! |
        | Normal user group B | Normal user B | normal-user-b@fogbugz.com | GoodPassword1! |
        | Normal user group C | Normal user C | normal-user-c@fogbugz.com | GoodPassword1! |
    And The following discussion groups exist:
        | Discussion Group |
        | Group-1          |
        | Group-2          |
        | Group-3          |
        | Group-4          |
    And The following permissions exist:
        | Discussion Group | Type    | Name                | Read  | Edit  | Admin |
        | Group-1          | Normal  | All Normal Users    | true  | true  | false |
        | Group-2          | Normal  | Normal user A       | true  | false | true  |
        | Group-3          | Normal  | Normal user group A | true  | false | false |
        | Group-4          | Normal  | Normal user A       | false | false | false |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    When The user clicks the "Copy" link for the "Normal user A" user row in the "Normal Users" table in the "Manage Users" page
    And The "Copy User" page is shown
    And The user expands the "Discussion Group" section by clicking on the "+" button present left to the "Discussion Group" section in the "Manage Users" page
    Then The following details are listed in the "Copy User" page in the "Discussion Group" section in the "Manage Users" page
        | Discussion Group | Permission |
        | Group-1          | Modify     |
        | Group-2          | Administer |
        | Group-3          | Read       |
