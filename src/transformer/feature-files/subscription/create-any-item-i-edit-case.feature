@NotAutomated
@JIRA-Key-MANUSCRIPT-30292
@Subscription
Feature: Subscription - Create - Any item I edit - Case

  Scenario Outline: Administrator user is auto subscribed to any active case they edit when they have auto subscribed to subscription "Subscribed to ANY ITEM I EDIT"
    Given The user is logged in as Administrator
    And The following site configuration details exist:
        | Show Subscribers                                                      |
        | The case page will show users who have subscribed to the current case |
    And The following subscriptions exist:
        | Can Delete | Subscription                  |
        | true       | Subscribed to ANY ITEM I EDIT |
    And The following cases exist:
        | Case | Title   | Status |
        | 17   | Welcome | Active |
    And The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user clicks the "Save" button
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
        | ID | Title   | Status | Subscribers   |
        | 17 | Welcome | Active | Administrator |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator user is auto subscribed to any closed case they edit when they have auto subscribed to subscription "Subscribed to ANY ITEM I EDIT"
    Given The user is logged in as Administrator
    And The following site configuration details exist:
        | Show Subscribers                                                      |
        | The case page will show users who have subscribed to the current case |
    And The following subscriptions exist:
        | Can Delete | Subscription                  |
        | true       | Subscribed to ANY ITEM I EDIT |
    And The following cases exist:
        | Case | Title   | Status |
        | 17   | Welcome | Closed |
    And The user searches for the "17" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Closed Case" page
    And The "Edit Closed Case" page is shown
    And The user clicks the "Save" button
    Then The "View Closed Case" page is shown
    And The following case details are shown in the "View Closed Case" page:
        | ID | Title   | Status | Subscribers   |
        | 17 | Welcome | Closed | Administrator |
    Examples:
      | Location  |
      | top       |
      | bottom    |


  Scenario Outline: Administrator user is auto subscribed to any resolved case they edit when they have auto subscribed to subscription "Subscribed to ANY ITEM I EDIT"
    Given The user is logged in as Administrator
    And The following site configuration details exist:
        | Show Subscribers                                                      |
        | The case page will show users who have subscribed to the current case |
    And The following subscriptions exist:
        | Can Delete | Subscription                  |
        | true       | Subscribed to ANY ITEM I EDIT |
    And The following cases exist:
        | Case | Title   | Status   |
        | 17   | Welcome | Resolved |
    And The user searches for the "17" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the <Location> of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The user clicks the "Save" button
    Then The "View Resolved Case" page is shown
    And The following case details are shown in the "View Resolved Case" page:
        | ID | Title   | Status   | Subscribers   |
        | 17 | Welcome | Resolved | Administrator |
    Examples:
      | Location  |
      | top       |
      | bottom    |
