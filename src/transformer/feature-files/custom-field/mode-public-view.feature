@NotAutomated
@JIRA-Key-MANUSCRIPT-30604
@CustomField
Feature: Custom field - Mode - Public - View

  Scenario: Administrator can configure mode of custom fields for viewing public cases
    Given The following public cases exist:
      | ID | Title          | Project | Area     | Description    |
      | 17 | Bears wont fly | Inbox   | Not Spam | They can swing |
    And The user saves the "Case Ticket" of the "Bears wont fly" public case as "Bear Case Ticket"
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL2 | Custom Field left 2 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Read-only   |
    When The user clicks the "Case Status" button in the sidebar
    And The user is redirected to the "Case Status" page
    And The user enters the case status details in the "Case Status" page:
      | Ticket           |
      | Bear Case Ticket |
    And The user clicks the "OK" button
    Then The user is redirected to the "View Public Case" page
    And The "CFL1" custom field is visible in the "View Public Case" page
    And The "CFL2" custom field is visible in the "View Public Case" page

