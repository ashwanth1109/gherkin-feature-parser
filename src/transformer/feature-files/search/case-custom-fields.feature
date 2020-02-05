@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30483
@Search
Feature: Search - Case - Custom Fields

  Scenario: Administrator user can search the list of all cases using custom field as axis
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name    | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Comments| Comment from tester | Left           | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The following cases exist:
      | Category | ID | Title    | Status   | Description     | Project            | Comments  |
      | Case     | 17 | Case-17  | Active   | This is a Case. | Inbox              | Ok Tested |
      | Case     | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project | Ok Tested |
      | Case     | 19 | Case-19  | Closed   | This is a Case. | Inbox              | Ok Tested |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Comments:"Ok Tested" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Category | ID | Title   | Status   | Description     | Project            | Comments  |
      | Case | Case     | 17 | Case-17 | Active   | This is a Case. | Inbox              | Ok Tested |
      | Case | Case     | 18 | Case-18 | Resolved | This is a Case. | Onboarding Project | Ok Tested |
      | Case | Case     | 19 | Case-19 | Closed   | This is a Case. | Inbox              | Ok Tested |

  Scenario: Administrator user can search the list of all cases using the data from the custom fields
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name    | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Comments| Comment from tester | Left           | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The following cases exist:
      | Category | ID | Title    | Status   | Description     | Project            | Comments  |
      | Case     | 17 | Case-17  | Active   | This is a Case. | Inbox              | Ok Tested |
      | Case     | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project | Ok Tested |
      | Case     | 19 | Case-19  | Closed   | This is a Case. | Inbox              | Ok Tested |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Ok Tested            |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Category | ID | Title   | Status   | Description     | Project            | Comments  |
      | Case | Case     | 17 | Case-17 | Active   | This is a Case. | Inbox              | Ok Tested |
      | Case | Case     | 18 | Case-18 | Resolved | This is a Case. | Onboarding Project | Ok Tested |
      | Case | Case     | 19 | Case-19 | Closed   | This is a Case. | Inbox              | Ok Tested |
