@NotAutomated
@JIRA-Key-MANUSCRIPT-29927
@Case
Feature: Case - Project - Workflow - Create case

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name          | Email                        | Account Type |
      | Ticket Factory     | admin@ticket-factory.com     | Normal       |
      | Ticker Implementor | admin@ticket-implementor.com | Normal       |
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow   |
      | FogBugz (5k Rewrite) | Ticket Factory  | 5k Rewrite |

  Scenario Outline: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Primary Contact" or "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To   | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | <Assign To> | false             |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is enabled in the "New Case" page
    Examples:
      | Assign To             |
      | -- Primary Contact -- |
      | -- No Change --       |

  Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | -- Case Opener -- | false             |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is enabled in the "New Case" page

  Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | Ticker Implementor | false             |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is enabled in the "New Case" page

  Scenario Outline: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Primary Contact" or "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To   | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | <Assign To> | true              |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is disabled in the "New Case" page
    Examples:
      | Assign To             |
      | -- Primary Contact -- |
      | -- No Change --       |

  Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | -- Case Opener -- | true              |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is disabled in the "New Case" page

  Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                                           | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Creating or Editing the status of an Active Case | Active | Ticker Implementor | true              |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title              | Project              |
      | Test Workflow Case | FogBugz (5k Rewrite) |
    Then The following case details are shown in the "New Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is disabled in the "New Case" page
