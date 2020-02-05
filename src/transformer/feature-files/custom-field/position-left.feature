@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29723
@CustomField
Feature: Custom Field - Position - Left

  Scenario Outline: Custom field can be set to be on the left panel in the case pages
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Left           | Text      | true         | false          | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The following cases exist:
      | ID | Title         | Status   |
      | 17 | Active Case   | Active   |
      | 18 | Resolved Case | Resolved |
      | 19 | Closed Case   | Closed   |
    When The user searches for the "<Case ID>" search string by using the search box
    Then The user is redirected to the "<Case Page>" page
    And The "Customer feedback" custom field is visible in the "Left" panel in the "<Case Page>" page
    Examples:
      | Case ID | Case Page          |
      | 17      | View Active Case   |
      | 18      | View Resolved Case |
      | 19      | View Closed Case   |

  Scenario: Custom field can be set to be on the left panel when creating a case
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Left           | Text      | true         | false          | Editable    | Editable  | Editable     | Editable   | Editable    |
    When The user clicks the "New Case" button in the sidebar
    Then The user is redirected to the "New Case" page
    And The "Customer feedback" custom field is visible in the "Left" panel in the "New Case" page

  Scenario: Custom field can be set to be on the left panel when creating a public case
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Left           | Text      | true         | false          | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The user logs out
    When The user clicks the "New Case" button in the sidebar
    Then The user is redirected to the "Public New Case" page
    And The "Customer feedback" custom field is visible in the "Left" panel in the "Public New Case" page
