@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29832
@User
Feature: User - Edit - Legacy - Type

  Scenario: User - Edit - Legacy - Type - View Active
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Legacy Settings" link in the "User Options" page
    Then The following user details are shown in the "User Options" page:
      | Type          |
      | Administrator |
