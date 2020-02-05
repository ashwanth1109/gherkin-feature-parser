@NotAutomated
@JIRA-Key-MANUSCRIPT-30350
@Subscription
Feature: Subscription - Create - Wiki - Wiki Article

  Scenario: Administrator user is auto subscribed to any article they create in a wiki when they have auto subscribed to that wiki
    Given The user is logged in as Administrator
    And The following wikis exist:
        | Wiki   |
        | Wiki-A |
    And The following subscriptions exist:
        | Can Delete | Subscription                |
        | true       | Subscribed to wiki "Wiki-A" |
    And The user hovers over the option "Wiki" present at the left part in the sidebar
    And The user clicks the "Wiki-A" link in the sidebar menu
    And The user is directed to the "View Wiki Article" page
    And The user clicks the "New Article" button in the "View Wiki Article" page
    And The "New Wiki Article" page is shown
    And The user enters the wiki article details in the "New Wiki Article" page:
        | Page Title  |
        | Article-1   |
    And The user clicks the "Save" button in the "New Wiki Article" page
    And The "Save" dialog is opened
    When The user clicks the "Save and View" button in the "Save" dialog
    Then The "View Wiki Article" page is shown
    And The following options shown on the "View Wiki Article" page:
        | Can View |  Can Edit | Can Unsubscribe |
        | true     |  true     | true            |
