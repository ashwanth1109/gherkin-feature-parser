@NotAutomated
@JIRA-Key-MANUSCRIPT-29928
@Case
Feature: Case - Project - Workflow - Edit status of active case

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name          | Email                        | Account Type |
      | Ticker Assignee    | admin@ticket-assignee.com    | Normal       |
      | Ticket Factory     | admin@ticket-factory.com     | Normal       |
      | Ticker Implementor | admin@ticket-implementor.com | Normal       |
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following active statuses exist in the following display order:
      | Status Name     | Category         | Default |
      | Active (Custom) | Customer Feature | false   |
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow   |
      | FogBugz (5k Rewrite) | Ticket Factory  | 5k Rewrite |
    And The following cases exist:
      | ID | Title     | Project              | Assigned To     | Status |
      | 17 | Test Case | FogBugz (5k Rewrite) | Ticker Assignee | Active |

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Primary Contact -- | false             |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To       | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- No Change -- | false             |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Case Opener -- | false             |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | Ticker Implementor | false             |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To             | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Primary Contact -- | true              |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To       | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- No Change -- | true              |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | -- Case Opener -- | true              |
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

  Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status          | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active (Custom) | Ticker Implementor | true              |
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
