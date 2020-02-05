@NotAutomated
@JIRA-Key-MANUSCRIPT-29929
@Case
Feature: Case - Project - Workflow - Reopen closed case

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
      | ID | Title     | Project              | Assigned To     | Status             |
      | 17 | Test Case | FogBugz (5k Rewrite) | Ticker Assignee | Closed (Completed) |

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To             | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Primary Contact -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Opener -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To           | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Resolver -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                   |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Resolver (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Closer"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Closer -- | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Closer (Administrator) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | Ticker Implementor | false             |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is enabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To             | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Primary Contact -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                      |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Primary Contact (Ticket Factory) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Opener -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Opener (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To           | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Resolver -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                   |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Resolver (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Closer"
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To         | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | -- Case Closer -- | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                 |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Case Closer (Administrator) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page

  Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user
    Given The "5k Rewrite" workflow has the following workflow rules:
      | Category         | Action                  | Status | Assign To          | Force "Assign To" |
      | Customer Feature | Reopening a Closed Case | Active | Ticker Implementor | true              |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the top panel in the "View Closed Case" page
    Then The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | Project              | Category         | Status | Assigned To                           |
      | FogBugz (5k Rewrite) | Customer Feature | Active | Default Assignee (Ticker Implementor) |
    And The "Assigned To" dropdown is disabled in the "Edit Active Case" page
