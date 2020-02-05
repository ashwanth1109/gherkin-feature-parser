@NotAutomated
@JIRA-Key-MANUSCRIPT-30042
@Case
Feature: Case - Category - Status - Create case - Default active status of default category

  Background:
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name         |
      | FogBugz (5k Rewrite) |

  Scenario: User can create case: Default category and default active status within the default category are used as initial property values.
    Given The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon    | Default |
      | Customer Feature | Customer Features | Feature | true    |
    And The following active statuses exist in the following display order:
      | Status Name     | Category         | Default |
      | Active (Custom) | Customer Feature | true    |
    When The user clicks the "New Case" button in the sidebar
    Then The user is redirected to the "New Case" page
    And The following case details are shown in the "New Case" page:
      | ID | Project              | Area | Milestone               | Category         | Status          |
      | 17 | FogBugz (5k Rewrite) | Misc | All projects: Undecided | Customer Feature | Active (Custom) |

  Scenario: User can create public case: "Inquiry" category and default active status within the "Inquiry" category are used as initial property values.
    Given The following active statuses exist in the following display order:
      | Status Name             | Category | Default |
      | Active (Custom Inquiry) | Inquiry  | true    |
    And The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project
    And The user logs out
    And The user is redirected to the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    When The user enters the public case details in the "New Public Case" page:
      | Project              | Area |
      | FogBugz (5k Rewrite) | Misc |
    And The user clicks the "OK" button in the "New Public Case" page
    Then The user is redirected to the "View Public Case" page
    And The user is logged in as Administrator
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The following case details are shown in the "Edit Active Case" page:
      | ID | Project              | Area | Milestone               | Category | Status                  |
      | 17 | FogBugz (5k Rewrite) | Misc | All projects: Undecided | Inquiry  | Active (Custom Inquiry) |
