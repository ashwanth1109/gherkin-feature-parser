@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29115
@Case
Feature: Case - Edit

  # This scenario covers only a few fields in the case edit page, since other fields will be covered by FSes for
  # fields-specific components. For example, editing case's project and project area will be covered
  # by reworking MANUSCRIPT-23410
  Scenario Outline: User can edit an existing case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      | Priority |
      | 17 | First Case | Must Fix |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Edit" button in the <Panel Position> panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Title     | Priority  |
      | New Title | Don't Fix |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | Title     | Priority  |
      | New Title | Don't Fix |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
