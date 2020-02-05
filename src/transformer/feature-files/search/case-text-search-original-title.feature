@NotAutomated
@JIRA-Key-MANUSCRIPT-30454
@Search
Feature: Search - Case - Text Search - Original Title

  Scenario Outline: Administrator user can search a active case using the original title when the title of the case has been updated
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status |
        | 17   | This is a case | Active |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Edit" button present at the <Location> of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user enters the case details in the "Edit Active Case" page:
        | Title   |
        | Welcome |
    And The user clicks the "Save" button
    And The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
        | ID | Title   | Status |
        | 17 | Welcome | Active |
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title   | Status | Original Title |
        | Case | 17   | Welcome | Active | This is a case |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator user can search a resolved case using the original title when the title of the case has been updated
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status |
        | 17   | This is a case | Active |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Edit" button present at the <Location> of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user enters the case details in the "Edit Active Case" page:
        | Title   |
        | Welcome |
    And The user clicks the "Save" button
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button present at the <Location> of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user clicks the "Resolve" button
    And The following case details are shown in the "View Resolved Case" page:
        | ID | Title   | Status   |
        | 17 | Welcome | Resolved |
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title   | Status   | Original Title |
        | Case | 17   | Welcome | Resolved | This is a case |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator user can search a closed case using the original title when the title of the case has been updated
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status   |
        | 17   | This is a case | Resolved |
    And The user searches for the "17" search string by using the search box
    And The "View Resolved Case" page is shown
    And The user clicks the "Edit" button present at the <Location> of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The user enters the case details in the "Edit Resolved Case" page:
        | Title   |
        | Welcome |
    And The user clicks the "Save" button
    And The "View Resolved Case" page is shown
    And The user clicks the "Close Case" button present at the <Location> of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The user clicks the "Close" button
    And The "Search" page is shown
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title   | Status | Original Title |
        | Case | 17   | Welcome | Closed | This is a case |
    Examples:
      | Location  |
      | top       |
      | bottom    |
