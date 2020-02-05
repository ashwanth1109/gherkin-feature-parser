@NotAutomated
@JIRA-Key-MANUSCRIPT-32188
@Schedule
Feature: Schedule - Time Tracking - Case search - Select Case without Estimate

  Scenario: User is asked to provide an estimate when selecting a case without estimate in the time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    And The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title   |
      | 17 | Another |
    And The user selects the "17: Another" option from the "Case # ..." dropdown
    And The user clicks the "OK" button in the sidebar menu
    Then The "Case does not have an estimate" dialog is opened
    And The user enters the following details in the "Case does not have an estimate" dialog:
      | Enter an Estimate |
      | 123               |
    And The user clicks the "OK" button in the "Case does not have an estimate" dialog
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | ID | Title   | Estimate: original | Estimate: current | Working On This Case |
      | 17 | Another | 123 hours          | 123 hours         | Administrator        |

  Scenario: User is asked to provide an estimate when selecting a recently worked on a schedule item without an estimate
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   |
      | 17   | Another17 | Schedule Item | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Schedule Items" group in the sidebar menu:
      | 17 Another17 |
    When The user clicks the "17 Another17" case in the sidebar menu
    Then The "Case does not have an estimate" dialog is opened
    And The user enters the following details in the "Case does not have an estimate" dialog:
      | Enter an Estimate |
      | 123               |
    And The user clicks the "OK" button in the "Case does not have an estimate" dialog
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | ID | Title   | Estimate: original | Estimate: current | Working On This Case |
      | 17 | Another | 123 hours          | 123 hours         | Administrator        |

  Scenario: User is asked to provide an estimate when selecting a favorite case without an estimate
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Assigned To   |
      | 17   | Another17 | Administrator |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Starred" group in the sidebar menu:
      | 17 Another17 |
    When The user clicks the "17 Another17" case in the sidebar menu
    Then The "Case does not have an estimate" dialog is opened
    And The user enters the following details in the "Case does not have an estimate" dialog:
      | Enter an Estimate |
      | 123               |
    And The user clicks the "OK" button in the "Case does not have an estimate" dialog
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | ID | Title   | Estimate: original | Estimate: current | Working On This Case |
      | 17 | Another | 123 hours          | 123 hours         | Administrator        |
