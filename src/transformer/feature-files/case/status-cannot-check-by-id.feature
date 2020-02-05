@NotAutomated
@JIRA-Key-MANUSCRIPT-29689
@Case
Feature: Case - Status - Cannot Check by ID

  Scenario: Public users cannot check the status of a case using the case ID
    Given The following public cases exist:
      | ID | Title          | Project | Area     | Description    |
      | 17 | Bears wont fly | Inbox   | Not Spam | They can swing |
    When The user clicks the "Case Status" button in the sidebar
    And The user is redirected to the "Case Status" page
    And The user enters the case status details in the "Case Status" page:
      | Ticket |
      | 17     |
    And The user clicks the "OK" button
    Then The user is redirected to the "Login" page

  Scenario: Normal users can check the status of a case using the case ID
    Given The following public cases exist:
      | ID | Title          | Project | Area     | Description    |
      | 17 | Bears wont fly | Inbox   | Not Spam | They can swing |
    When The user is logged in as Normal User
    And The user searches for the "17" search string by using the search box
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title          | Status | Project | Area     | Description    | Inquiry | Assigned To |
      | 17 | Bears wont fly | Active | Inbox   | Not Spam | They can swing | true    | Admin       |



