@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30484
@Search
Feature: Search - No Matches

  Scenario: Administrator user finds zero results when there are no results matching the search criteria
    Given The user is logged in as Administrator
    When The user enters the following details in the "Search" box:
       | Search cases & wikis |
       | XYZ                  |
    Then The "Search" page is shown
    And The "Nothing was found that matched." message is shown in the "Search" page
