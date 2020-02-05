@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29027
@ProjectGroup
Feature: Project group - Create

  Scenario: Administrator can create a project group
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Create New Project Group" link in the "Project Groups" section in the "Projects" page
    And The "New Project Group" dialog is opened
    When The user enters the project group details in the "New Project Group" dialog:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The user clicks the "OK" button in the "New Project Group" dialog
    Then The "New Project Group" dialog is closed
    # NOTE: Check all the visible property values of the created project group as a part of the below step definition:
      # Project Group (Name).
      # Description.
    And The created project group is listed in the "Project Groups" section in the "Projects" page
