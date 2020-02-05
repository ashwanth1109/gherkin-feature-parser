@NotAutomated
@JIRA-Key-MANUSCRIPT-29931
@Case
Feature: Case - Project - Workflow - Reactivate resolved case

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
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow   |
      | FogBugz (5k Rewrite) | Ticket Factory  | 5k Rewrite |
    And The following cases exist:
      | ID | Title     | Project              | Assigned To     | Status               |
      | 17 | Test Case | FogBugz (5k Rewrite) | Ticker Assignee | Resolved (Completed) |

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To             | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Primary Contact -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To       | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- No Change -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | No Change (Ticker Assignee) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Case Opener -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To           | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Case Resolver -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                   |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Resolver (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | Ticker Implementor | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To             | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Primary Contact -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "No Change"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To       | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- No Change -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | No Change (Ticker Assignee) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Case Opener -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To           | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | -- Case Resolver -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                   |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Resolver (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                       | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Reactivating a Resolved Case | Active | Ticker Implementor | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page
