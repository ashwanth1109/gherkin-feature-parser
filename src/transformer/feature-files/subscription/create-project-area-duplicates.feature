@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29697
@Subscription
Feature: Subscription - Create - Project Area - Duplicates

  Scenario: Administrator cannot auto subscribe to a project area multiple times by clicking on the "Add New Subscription" link
    Given The user is logged in as Administrator
    And The following projects exist:
        | Project Name |
        | Inbox        |
    And The following project areas exist:
        | Project | Can Delete | Area       | Primary Contact |
        | Inbox   | true       | Not Spam   | Test UserA      |
    And The following subscriptions exist:
        | Can Delete | Subscription                         |
        | true       | Subscribed to area "Inbox: Not Spam" |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Subscribe" menu item in the sidebar menu
    And The "Create an auto subscription" page is shown
    When The user clicks the "Add New Subscription" link in the "Create an auto subscription" page
    And The "Add New Subscription" dialog is opened
    And The user enters the subscription details in the "Add New Subscription" dialog:
        | Subscription                 |
        | Project: Inbox .... Not Spam |
    And The user clicks the "OK" button in the "Add New Subscription" dialog
    Then The "Create an auto subscription" page is shown
    And The subscription "Subscribed to ANY ITEM I EDIT" is not added again to the subscription list
    And The following subscriptions are listed in the "Create an auto subscription" page in the following order:
        | Can Delete | Subscription                         |
        | true       | Subscribed to area "Inbox: Not Spam" |

  Scenario: Administrator cannot auto subscribe to a project area multiple times by clicking on the "+" button left to the "Add New Subscription" link
    Given The user is logged in as Administrator
    And The following projects exist:
        | Project Name |
        | Inbox        |
    And The following project areas exist:
        | Project | Can Delete | Area       | Primary Contact |
        | Inbox   | true       | Not Spam   | Test UserA      |
    And The following subscriptions exist:
        | Can Delete | Subscription                         |
        | true       | Subscribed to area "Inbox: Not Spam" |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Subscribe" menu item in the sidebar menu
    And The "Create an auto subscription" page is shown
    When The user clicks the "+" button left to the "Add New Subscription" link in the "Create an auto subscription" page
    And The "Add New Subscription" dialog is opened
    And The user enters the subscription details in the "Add New Subscription" dialog:
        | Subscription                 |
        | Project: Inbox .... Not Spam |
    And The user clicks the "OK" button in the "Add New Subscription" dialog
    Then The "Create an auto subscription" page is shown
    And The subscription "Subscribed to ANY ITEM I EDIT" is not added again to the subscription list
    And The following subscriptions are listed in the "Create an auto subscription" page in the following order:
        | Can Delete | Subscription                         |
        | true       | Subscribed to area "Inbox: Not Spam" |
