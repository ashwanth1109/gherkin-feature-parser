@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29114
@Case
Feature: Case - Auto-incremented case number

  Scenario: Consecutively created cases should have consecutive IDs
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      |
      | 17 | First Case |
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title     |
      | Next case |
    And The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title     |
      | 18 | Next case |

  Scenario: IDs are independently incremented among different customers
    Given The "AWS FogBugz on Demand instance A" FogBugz exists
    And The "AWS FogBugz on Demand instance B" FogBugz exists
    And The user is logged in as Normal User in the "AWS FogBugz on Demand instance A" FogBugz
    And The user clicks the "New Case" button in the sidebar in the "AWS FogBugz on Demand instance A" FogBugz
    And The user is redirected to the "New Case" page in the "AWS FogBugz on Demand instance A" FogBugz
    And The user enters the case details in the "New Case" page:
      | Title                                    |
      | Case of AWS Fogbugz on Demand instance A |
    And The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance A" FogBugz
    When The user is logged in as Normal User in the "AWS FogBugz on Demand instance B" FogBugz
    And The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz
    And The user is redirected to the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz
    And The user clicks the "New Case" button in the sidebar in the "AWS FogBugz on Demand instance B" FogBugz
    And The user enters the case details in the "New Case" page:
      | Title                                    |
      | Case of AWS Fogbugz on Demand instance B |
    And The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz
    Then The following case details are shown in the "View Active Case" page in the "AWS FogBugz on Demand instance B" FogBugz:
      | ID | Title                                    |
      | 17 | Case of AWS Fogbugz on Demand instance B |
    And The user searches for the "17" search string by using the search box in the "AWS FogBugz on Demand instance A" FogBugz
    And The following case details are shown in the "View Active Case" page in the "AWS FogBugz on Demand instance A" FogBugz:
      | ID | Title                                    |
      | 17 | Case of AWS Fogbugz on Demand instance A |
