@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29300
@Project
Feature: Project - Edit - Project area - Delete

  Scenario: Administrator can delete a project area from a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact           |
      | Ninja   | true       | SW   | Project's Primary Contact |
      | Ninja   | true       | Sea  | Project's Primary Contact |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Delete" button for the "SW" project area row in the "Areas" table in the "Edit Project" page
    And The confirmation dialog is opened
    And The user clicks the "OK" button in the confirmation dialog
    Then The confirmation dialog is closed
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Area | Primary Contact           |
      | true | true       | Sea  | Project's Primary Contact |
