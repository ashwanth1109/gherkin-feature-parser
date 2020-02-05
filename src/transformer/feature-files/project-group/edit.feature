@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29030
@ProjectGroup
Feature: Project group - Edit

  Scenario: Administrator can edit an existing project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    And The "Modify Project Group" dialog is opened
    When The user enters the project group details in the "Modify Project Group" dialog:
      | Name                     | Description                                |
      | Updated company projects | The group of the updated company projects. |
    And The user clicks the "OK" button in the "Modify Project Group" dialog
    Then The "Modify Project Group" dialog is closed
    # NOTE: Check all the visible property values of the created project group as a part of the below step definition:
      # Project Group (Name).
      # Description.
    And The updated project group is listed in the "Project Groups" section in the "Projects" page
