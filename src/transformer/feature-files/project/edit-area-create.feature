@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29297
@Project
Feature: Project - Edit - Project area - Create

  Scenario: Administrator can create a project area for a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Create New Area" button in the "Areas" table in the "Edit Project" page
    And The "New Area" dialog is opened
    And The user enters the following project area details in the "New Area" dialog:
      | Area Name | Primary Contact                 |
      | SW        | -- Project's Primary Contact -- |
    And The user clicks the "OK" button in the "New Area" dialog
    Then The "New Area" dialog is closed
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Area | Primary Contact           |
      | true | true       | SW   | Project's Primary Contact |
