@NotAutomated
@JIRA-Key-MANUSCRIPT-29833
@User
Feature: User - Edit - Legacy - User Groups

  Scenario: None is shown for User groups when User has none
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Legacy Settings" link in the "User Options" page
    Then The following user options details are listed in the "User Options" page:
      | User Groups |
      | None        |

  Scenario: User groups are shown as comma-separated list in legacy user options
    Given The user is logged in as Administrator
    And The following user groups exist:
      | Title    |
      | Fakes    |
      | Witchers |
    And The following users exist:
      | User Group | Full Name     |
      | Fakes      | Administrator |
      | Witchers   | Administrator |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Legacy Settings" link in the "User Options" page
    Then The following user options details are listed in the "User Options" page:
      | User Groups     |
      | Fakes, Witchers |

  Scenario: User groups are shown as links in legacy user options
    Given The user is logged in as Administrator
    And The following user groups exist:
      | Title    |
      | Fakes    |
      | Witchers |
    And The following users exist:
      | User Group | Full Name     |
      | Fakes      | Administrator |
      | Witchers   | Administrator |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Legacy Settings" link in the "User Options" page
    And The user clicks the "Fakes" link in the "User Options" page
    Then The user is redirected to the "Edit User Group" page
    And The following details are shown in the "Edit User Group" page:
      | Name  |
      | Fakes |
