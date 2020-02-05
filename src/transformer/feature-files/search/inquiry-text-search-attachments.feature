@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30458
@Search
Feature: Search - Inquiry - Text Search - Attachments

  Scenario: Administrator user can search an inquiry case using the attachement attached to the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Category |  Case | Title              | Attachement      |
        | Inquiry  |  17   | This is an Inquiry | screesnhot1.png  |
    When The user searches for the "screesnhot1.png" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type  | Category  | Case | Title              | Attachement      |
        | Case  | Inquiry   | 17   | This is an Inquiry | screesnhot1.png  |
