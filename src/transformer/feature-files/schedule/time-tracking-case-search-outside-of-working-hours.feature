@NotAutomated
@JIRA-Key-MANUSCRIPT-32189
@Schedule
Feature: Schedule - Time Tracking - Case search - Outside of working hours

  Scenario: User is prompted to confirm working outside of working hours when selecting a case to work outside of working hours
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "My Working Schedule" page:
      | Workday starts at           | and ends at              |
      | "Current time" + 30 minutes | "Current time" + 2 hours |
    And The user clicks the "OK" button in the "My Working Schedule" page
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    And The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title   |
      | 17 | Another |
    And The user selects the "17: Another" option from the "Case # ..." dropdown
    And The user clicks the "OK" button in the sidebar menu
    And The "Case does not have an estimate" dialog is opened
    And The user enters the following details in the "Case does not have an estimate" dialog:
      | Enter an Estimate |
      | 123               |
    And The user clicks the "OK" button in the "Case does not have an estimate" dialog
    Then The "Outside working hours" dialog is shown
    And The "Outside working hours" error message is shown in the sidebar menu
    And The user clicks the "Yes" button in the "Outside working hours" dialog
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | ID | Title   | Estimate: original | Estimate: current | Working On This Case |
      | 17 | Another | 123 hours          | 123 hours         | Administrator        |
