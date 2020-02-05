@NotAutomated
@JIRA-Key-MANUSCRIPT-30320
@Case
Feature: Case - Project - Changed Workflow - Create public case

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name             | Email                         | Account Type |
      | Ticker Assignee - Old | admin-old@ticket-assignee.com | Normal       |
      | Ticket Factory        | admin@ticket-factory.com      | Normal       |
      | Ticker Implementor    | admin@ticket-implementor.com  | Normal       |
    And The following workflows exist:
      | Workflow Name    |
      | 5k Rewrite       |
      | 5k Rewrite - Old |
    And The "5k Rewrite - Old" workflow has the following workflow rules:
      | Category | Action                                           | Status | Assign To             | Force "Assign To" |
      | Inquiry  | Creating or Editing the status of an Active Case | Active | Ticker Assignee - Old | false             |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow         |
      | FogBugz (5k Rewrite) | Ticket Factory  | 5k Rewrite - Old |
    And The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project

  Scenario Outline: Changed project workflow: Create public case: Project workflow rule: Default case category for new emails ("Inquiry") and default active status: "Assign To" is set to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category | Action                                           | Status | Assign To   | Force "Assign To" |
      | Inquiry  | Creating or Editing the status of an Active Case | Active | <Assign To> | <Force Assign To> |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    And The user enters the project details in the "Edit Project" page:
      | Workflow   |
      | 5k Rewrite |
    And The user clicks the "OK" button in the "Edit Project" page
    And The user is redirected to the "Projects" page
    And The user logs out
    And The user is redirected to the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    When The user enters the public case details in the "New Public Case" page:
      | Title          | Project              | Area | Description         |
      | Anonymous Case | FogBugz (5k Rewrite) | Misc | The Anonymous Case! |
    And The user clicks the "OK" button in the "New Public Case" page
    Then The user is redirected to the "View Public Case" page
    And The following public case details are shown in the "View Public Case" page:
      | ID | Title                 | Description         |
      | 17 | (Open) Anonymous Case | The Anonymous Case! |
    And The user is logged in as Administrator
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | ID | Title          | Description         | Project              | Area | Milestone               | Category | Assigned To    | Status |
      | 17 | Anonymous Case | The Anonymous Case! | FogBugz (5k Rewrite) | Misc | All projects: Undecided | Inquiry  | Ticket Factory | Active |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page
    Examples:
      | Assign To             | Force Assign To |
      | -- Primary Contact -- | false           |
      | -- Case Opener --     | false           |
      | -- No Change --       | false           |
      | -- Primary Contact -- | true            |
      | -- Case Opener --     | true            |
      | -- No Change --       | true            |

  Scenario Outline: Changed project workflow: Create public case: Project workflow rule: Default case category for new emails ("Inquiry") and default active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category | Action                                           | Status | Assign To          | Force "Assign To" |
      | Inquiry  | Creating or Editing the status of an Active Case | Active | Ticker Implementor | <Force Assign To> |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    And The user enters the project details in the "Edit Project" page:
      | Workflow   |
      | 5k Rewrite |
    And The user clicks the "OK" button in the "Edit Project" page
    And The user is redirected to the "Projects" page
    And The user logs out
    And The user is redirected to the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    When The user enters the public case details in the "New Public Case" page:
      | Title          | Project              | Area | Description         |
      | Anonymous Case | FogBugz (5k Rewrite) | Misc | The Anonymous Case! |
    And The user clicks the "OK" button in the "New Public Case" page
    Then The user is redirected to the "View Public Case" page
    And The following public case details are shown in the "View Public Case" page:
      | ID | Title                 | Description         |
      | 17 | (Open) Anonymous Case | The Anonymous Case! |
    And The user is logged in as Administrator
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | ID | Title          | Description         | Project              | Area | Milestone               | Category | Assigned To        | Status |
      | 17 | Anonymous Case | The Anonymous Case! | FogBugz (5k Rewrite) | Misc | All projects: Undecided | Inquiry  | Ticker Implementor | Active |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page
    Examples:
      | Force Assign To |
      | false           |
      | true            |
