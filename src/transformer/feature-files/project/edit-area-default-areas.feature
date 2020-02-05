@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29570
@Project
Feature: Project - Edit - Project area - Default Project Areas

  Scenario: System provides the default project areas: New project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name       | Primary Contact |
      | FogBugz 5k Rewrite | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    Then The user is redirected to the "Edit Project" page
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Area | Primary Contact           |
      | true     | true       | Misc | Project's Primary Contact |

  Scenario: System provides the default project areas: Default projects: The "Onboarding Project" project
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Edit" button for the "Onboarding Project" project row in the "Projects" table in the "Projects" page
    Then The user is redirected to the "Edit Project" page
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Area       | Primary Contact           |
      | true     | true       | Guidelines | Project's Primary Contact |
      | true     | true       | Resources  | Project's Primary Contact |

  Scenario: System provides the default project areas: Default projects: The "Inbox" project
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Edit" button for the "Inbox" project row in the "Projects" table in the "Projects" page
    Then The user is redirected to the "Edit Project" page
    And The following project areas are listed in the "Areas" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Area      | Primary Contact           | Description                       |
      | true     | false      | Not Spam  | Project's Primary Contact | 'Not Spam' FogBugz Autosort area  |
      | true     | false      | Spam      | Project's Primary Contact | 'Spam' FogBugz Autosort area      |
      | true     | false      | Undecided | Project's Primary Contact | 'Undecided' FogBugz Autosort area |
