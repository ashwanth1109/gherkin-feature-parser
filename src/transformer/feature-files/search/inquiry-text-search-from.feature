@NotAutomated
@JIRA-Key-MANUSCRIPT-30457
@Search
Feature: Search - Inquiry - Text Search - From

  Scenario Outline: Administrator user can search an inquiry case using the from field of the case
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category |  Case | Title              |
        | Inquiry  |  17   | This is an Inquiry |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Email" button present at the <Location> of the "View Active Case" page
    And The "Send Email" page is shown
    And The user enters the following details in the "Send Email" page:
        | From    | To                       |
        | FogBugz | testusera@manuscript.com |
    And The user clicks the "Send" button
    And The "View Active Case" page is shown
    When The user searches for the "from:fogbugz" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Category  | Case | Title              | From    |
        | Inquiry   | 17   | This is an Inquiry | FogBugz |
    Examples:
      | Location  |
      | top       |
      | bottom    |