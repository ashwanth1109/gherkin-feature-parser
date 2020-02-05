@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30460
@Search
Feature: Search - Inquiry - Text Search - Custom Fields

  Scenario: Administrator user can search the list of all inquiry cases using custom field as axis
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name    | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Comments| Comment from tester | Left           | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The following cases exist:
      | Category | ID | Title       | Status   | Description         | Project            | Comments  |
      | Inquiry  | 17 | Inquiry-17  | Active   | This is an Inquiry. | Inbox              | Ok Tested |
      | Inquiry  | 18 | Inquiry-18  | Resolved | This is an Inquiry. | Onboarding Project | Ok Tested |
      | Inquiry  | 19 | Inquiry-19  | Closed   | This is an Inquiry. | Inbox              | Ok Tested |
    When The user enters the following details in the "Search" box:
      |  Search cases & wikis |
      |  Comments:"Ok Tested" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Category | ID | Title      | Status   | Description         | Project            | Comments  |
      | Case | Inquiry  | 17 | Inquiry-17 | Active   | This is an Inquiry. | Inbox              | Ok Tested |
      | Case | Inquiry  | 18 | Inquiry-18 | Resolved | This is an Inquiry. | Onboarding Project | Ok Tested |
      | Case | Inquiry  | 19 | Inquiry-19 | Closed   | This is an Inquiry. | Inbox              | Ok Tested |

  Scenario: Administrator user can search the list of all inquiry cases using the data from the custom fields
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name    | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Comments| Comment from tester | Left           | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The following cases exist:
      | Category | ID | Title       | Status   | Description         | Project            | Comments  |
      | Inquiry  | 17 | Inquiry-17  | Active   | This is an Inquiry. | Inbox              | Ok Tested |
      | Inquiry  | 18 | Inquiry-18  | Resolved | This is an Inquiry. | Onboarding Project | Ok Tested |
      | Inquiry  | 19 | Inquiry-19  | Closed   | This is an Inquiry. | Inbox              | Ok Tested |
    When The user enters the following details in the "Search" box:
      |  Search cases & wikis |
      |  Ok Tested            |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Category | ID | Title      | Status   | Description         | Project            | Comments  |
      | Case | Inquiry  | 17 | Inquiry-17 | Active   | This is an Inquiry. | Inbox              | Ok Tested |
      | Case | Inquiry  | 18 | Inquiry-18 | Resolved | This is an Inquiry. | Onboarding Project | Ok Tested |
      | Case | Inquiry  | 19 | Inquiry-19 | Closed   | This is an Inquiry. | Inbox              | Ok Tested |
