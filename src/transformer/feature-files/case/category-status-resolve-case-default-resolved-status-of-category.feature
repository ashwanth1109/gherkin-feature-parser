@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30043
@Case
Feature: Case - Category - Status - Resolve case - Default resolved status of category

  Scenario: User can resolve existing active case: Category and default resolved status within the current case category are used as initial property values.
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following resolved statuses exist in the following display order:
      | Status Name       | Category         | Default |
      | Resolved (Custom) | Customer Feature | true    |
    And The following projects exist:
      | Project Name         |
      | FogBugz (5k Rewrite) |
    And The following cases exist:
      | ID | Title     | Project              | Status |
      | 17 | Test Case | FogBugz (5k Rewrite) | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Resolve" button in the top panel in the "View Active Case" page
    Then The user is redirected to the "Edit Resolved Case" page
    And The following case details are shown in the "Edit Resolved Case" page:
      | ID | Project              | Area | Milestone               | Category         | Status            |
      | 17 | FogBugz (5k Rewrite) | Misc | All projects: Undecided | Customer Feature | Resolved (Custom) |
