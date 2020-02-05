@NotAutomated
@JIRA-Key-MANUSCRIPT-30294
@Subscription
Feature: Subscription - Create - Any item I edit - Wiki Article

  Scenario: Administrator user is auto subscribed to a wiki article they edit when they have auto subscribed to subscription "Subscribed to ANY ITEM I EDIT"
    Given The user is logged in as Administrator
    And The following subscriptions exist:
        | Subscription                  |
        | Subscribed to ANY ITEM I EDIT |
    And The following wiki articles exist:
        | Page Title |
        | Article-1  |
    And The user searches for the "Article-1" search string by using the search box
    And The following wiki articles are listed in the "Wiki Pages" table in the "Search" page:
      | Wiki-A Article-1 |
    And The user clicks the "View Article-1" link in the "Search" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Edit" link in the "View Wiki Article" page
    And The "Edit Wiki Article" page is shown
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save" dialog is opened
    And The user clicks the "Save and View" button in the "Save" dialog
    Then The "View Wiki Article" page is shown
    And The following options are shown in the "View Wiki Article" page:
        | Can View |  Can Edit | Can Unsubscribe |
        | true     |  true     | true            |
