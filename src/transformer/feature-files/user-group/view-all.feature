@JIRA-Key-MANUSCRIPT-29171
@UserGroup
Feature: User group - View all

  Scenario: Administrator can view all user groups
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name     | Notes       |
      | Crazy88  | Amorphly    |
      | Showtime | Showstopper |
    And The following community user groups exist:
      | Name    | Notes          |
      | Misfits | Magical people |
      | Zzz     | Sleepy heads   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    Then The following user groups are listed in the "Normal User Groups" table in the "User Groups" page in the following display order:
      | Name     | Notes       |
      | Crazy88  | Amorphly    |
      | Showtime | Showstopper |
    And The following user groups are listed in the "Community User Groups" table in the "User Groups" page in the following display order:
      | Name    | Notes          |
      | Misfits | Magical people |
      | Zzz     | Sleepy heads   |
