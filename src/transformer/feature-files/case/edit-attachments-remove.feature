@NotAutomated
@JIRA-Key-MANUSCRIPT-31641
@Case
Feature: Case - Edit - Attachments - Remove

  Scenario: User can remove case attachments
    Given The user is logged in as Administrator
    And The "not-a-virus.txt" file exists
    And The following cases exist:
      | Case | Title      | Status |
      | 17   | Red rabbit | Active |
    And The following case events exist:
      | Case | Type      | Content         |
      | 17   | Edited By | not-a-virus.txt |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user clicks the "Edit" icon for the "Edited By" case event in the "View Active Case" page
    And The user clicks the "Delete" icon for the "not-a-virus.txt" attachment in the "View Active Case" page
    And The user clicks the "Save" button for the "Edited By" case event in the "View Active Case" page
    Then The "View Active Case" page is shown
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content                   |
      | Edited By | not-a-virus.txt (deleted) |
