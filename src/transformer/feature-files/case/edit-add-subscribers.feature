@NotAutomated
@JIRA-Key-MANUSCRIPT-29721
@Case
Feature: Case - Edit - Add Subscribers

  Scenario Outline: Administrator can edit an active case to add subscriber
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Subscriber |
      | 16   | New Case to handle | Active |            |
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following site configuration details exist:
      | Community Users Control                 |
      | Anybody can create their community user |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "Edit Active Case" page
    And The user selects the following users from the "Add Subscriber" dropdown in the "Edit Active Case" page:
      | Test UserA |
    And The "Add Subscriber" dropdown is closed
    And The user clicks the "Save" button
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
      | Test UserA |
    Examples:
      | Location |
      | top      |
      | bottom   |


  Scenario Outline: Administrator can edit a resolved case to add subscriber
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status   | Subscriber |
      | 16   | New Case to handle | Resolved |            |
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following site configuration details exist:
      | Community Users Control                 |
      | Anybody can create their community user |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "Edit Resolved Case" page
    And The user selects the following users from the "Add Subscriber" dropdown in the "Edit Resolved Case" page:
      | Test UserA |
    And The "Add Subscriber" dropdown is closed
    And The user clicks the "Save" button
    Then The "View Resolved Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Resolved Case" page:
      | Test UserA |
    Examples:
      | Location |
      | top      |
      | bottom   |


  Scenario Outline: Administrator cannot add a subscriber when editing a closed case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Subscriber |
      | 16   | New Case to handle | Closed |            |
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following site configuration details exist:
      | Community Users Control                 |
      | Anybody can create their community user |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Closed Case" page
    And The "Edit Closed Case" page is shown
    And The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page
    And The user clicks the "Save" button
    Then The "View Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Closed Case" page:
      | Subscriber |
      |            |
    Examples:
      | Location |
      | top      |
      | bottom   |
