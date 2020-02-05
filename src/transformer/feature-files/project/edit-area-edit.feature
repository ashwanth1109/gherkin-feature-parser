@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29298
@Project
Feature: Project - Edit - Project area - Edit

  Scenario: Administrator can edit a project area for a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact           |
      | Ninja   | true       | SW   | Project's Primary Contact |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Edit" button for the "SW" project area row in the "Areas" table in the "Edit Project" page
    And The "Edit Area" dialog is opened
    And The user enters the following project area details in the "Edit Area" dialog:
      | Area Name  | Primary Contact |
      | SW point 2 | Administrator   |
    And The user clicks the "OK" button in the "Edit Area" dialog
    Then The "Edit Area" dialog is closed
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Area       | Primary Contact |
      | true | true       | SW point 2 | Administrator   |
