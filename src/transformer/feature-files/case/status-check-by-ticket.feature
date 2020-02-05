@NotAutomated
@JIRA-Key-MANUSCRIPT-29688
@Case
Feature: Case - Status - Check by Ticket

  Scenario: Anybody can check the status of a case using the case ticket
    Given The following public cases exist:
      | ID | Title          | Project | Area     | Description    |
      | 17 | Bears wont fly | Inbox   | Not Spam | They can swing |
    And The user saves the "Case Ticket" of the "Bears wont fly" public case as "Bear Case Ticket"
    When The user clicks the "Case Status" button in the sidebar
    And The user is redirected to the "Case Status" page
    And The user enters the case status details in the "Case Status" page:
      | Ticket           |
      | Bear Case Ticket |
    And The user clicks the "OK" button
    Then The user is redirected to the "View Public Case" page
    And The following public case details are shown in the "View Public Case" page:
      | ID | Title                 |
      | 17 | (Open) Bears wont fly |
