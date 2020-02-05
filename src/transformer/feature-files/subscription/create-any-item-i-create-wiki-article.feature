@NotAutomated
@JIRA-Key-MANUSCRIPT-30303
@Subscription
Feature: Subscription - Create - Any item I create - Wiki Article

  Scenario: Administrator user is auto subscribed to a wiki article they create when they have auto subscribed to subscription "Subscribed to ANY ITEM I CREATE"
    Given The user is logged in as Administrator
    And The following subscriptions exist:
        |  Subscription                   |
        | Subscribed to ANY ITEM I CREATE |
    And The following wikis exist:
        | Wiki   |
        | Wiki-A |
    And The user hovers over the option "Wiki" present at the left part in the sidebar
    And The user clicks the "Wiki-A" link in the sidebar menu
    And The user is directed to the "Edit Wiki Article" page
    And The user clicks the "New Article" button in the "Edit Wiki Article" page
    And The "New Article" page is shown
    And The user enters the wiki article details in the "New Wiki Article" page:
        | Page Title       |
        | Wiki-A Article-1 |
    And The user clicks the "Save" button in the "New Article" page
    And The "Save" dialog is opened
    When The user clicks the "Save and View" button in the "Save" dialog
    Then The "View Wiki Article" page is shown in the "Wiki-A" page
    And The following options shown on the "Wiki-A Article-1" page:
        | Can View |  Can Edit | Can Unsubscribe |
        | true     |  true     | true            |
