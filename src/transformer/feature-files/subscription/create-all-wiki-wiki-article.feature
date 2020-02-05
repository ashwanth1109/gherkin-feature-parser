@NotAutomated
@JIRA-Key-MANUSCRIPT-30349
@Subscription
Feature: Subscription - Create - All Wiki - Wiki Article

  Scenario: Administrator user is auto subscribed to any wiki article they create when they have auto subscribed to subscription "Subscribed to ALL WIKIS"
    Given The user is logged in as Administrator
    And The following subscriptions exist:
        | Can Delete | Subscription            |
        | true       | Subscribed to ALL WIKIS |
    And The following wikis exist:
        | Wiki   |
        | Wiki-A |
    And The user hovers over the option "Wiki" present at the left part in the sidebar
    And The user clicks the "Wiki-A" link in the sidebar menu
    And The user is directed to the "View Wiki Article" page
    And The user clicks the "New Article" button in the "View Wiki Article" page
    And The "New Wiki Article" page is shown
    And The user enters the wiki article details in the "Edit Wiki Article" page:
        | Page Title |
        | Article-1  |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save" dialog is opened
    When The user clicks the "Save and View" button in the "Save" dialog
    Then The "View Wiki Article" page is shown
    And The following options shown on the "View Wiki Article" page:
        | Can View |  Can Edit | Can Unsubscribe |
        | true     |  true     | true            |
