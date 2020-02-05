@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29299
@Project
Feature: Project - Edit - Project area - View all

  Scenario: Administrator can view all project areas of a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact           |
      | Ninja   | true       | SW   | Project's Primary Contact |
      | Ninja   | true       | Sea  | Administrator             |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Area | Primary Contact           |
      | true | true       | SW   | Project's Primary Contact |
      | true | true       | Sea  | Administrator             |
