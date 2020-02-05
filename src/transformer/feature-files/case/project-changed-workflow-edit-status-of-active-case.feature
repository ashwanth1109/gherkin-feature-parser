@NotAutomated
@JIRA-Key-MANUSCRIPT-30066
@Case
Feature: Case - Project - Changed Workflow - Edit status of active case

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name             | Email                         | Account Type |
      | Ticker Assignee       | admin@ticket-assignee.com     | Normal       |
      | Ticker Assignee - Old | admin-old@ticket-assignee.com | Normal       |
      | Ticket Factory        | admin@ticket-factory.com      | Normal       |
      | Ticker Implementor    | admin@ticket-implementor.com  | Normal       |
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following active statuses exist in the following display order:
      | Status Name     | Category         | Default |
      | Active (Custom) | Customer Feature | false   |
    And The following workflows exist:
      | Workflow Name    |
      | 5k Rewrite       |
      | 5k Rewrite - Old |
    And The "5k Rewrite - Old" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | Ticker Assignee - Old | false             |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow         |
      | FogBugz (5k Rewrite) | Ticket Factory  | 5k Rewrite - Old |

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Primary Contact -- | false             |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To       | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- No Change -- | false             |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | No Change (Ticker Assignee) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Case Opener -- | false             |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Case Opener (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | Ticker Implementor | false             |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Primary Contact -- | true              |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To       | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- No Change -- | true              |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | No Change (Ticker Assignee) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Case Opener -- | true              |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Case Opener (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | Ticker Implementor | true              |
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
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Status          |
      | Active (Custom) |
    Then The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status          | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active (Custom) | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page
