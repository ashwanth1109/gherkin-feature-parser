@NotAutomated
@JIRA-Key-MANUSCRIPT-31636
@Case
Feature: Case - Edit - Attachments - Untrusted file types

  Scenario: When editing a case and appending an untrusted file - an unsafe prefix is added to the file name
    Given The user is logged in as Administrator
    And The "virus.exe" file exists
    And The following cases exist:
      | Case | Title      | Status |
      | 17   | Red rabbit | Active |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user clicks the "Attach Files" link in the "Edit Active Case" page
    And The user uploads the "virus.exe" file in the "Edit Active Case" page
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The "View Active Case" page is shown
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content          |
      | Edited By | virus.exe.unsafe |
