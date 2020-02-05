@NotAutomated
@JIRA-Key-MANUSCRIPT-30345
@Subscription
Feature: Subscription - Create - Any item I edit - Discussion Topic

  Scenario: Administrator user is auto subscribed to any discussion topic they edit when they have auto subscribed to "Subscribed to ANY ITEM I EDIT"
    Given The user is logged in as Administrator
    And The following discussion topics exist:
        | Discussion Topic | Month of Creation of Discussion Topic | Created by    |
        | Hi there!        | December 2019                         | Administrator |
    And The following subscriptions exist:
        | Can Delete | Subscription                  |
        | true       | Subscribed to ANY ITEM I EDIT |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    And The user clicks the "Edit" button for the "Community User" user group row in the "Community User Groups" table in the "User Groups" page
    And The "Edit User Group" page is shown
    And The user clicks the "discussion groups" link in the "Used By" in the "Edit User Group" page
    And The "Discussion Groups" page is shown
    And The following discussion groups are listed in the "Discussion Groups" page:
        | Discussion Group   |
        | Discussion Group-1 |
    And The user clicks the "View Discussion Group-1" link in the "Discussion Groups" page
    And The "View Discussion Group" page is shown
    And The user clicks the "Older Topics" link in the "View Discussion Group" page
    And The "Older Topics" dialog is opened
    And The user clicks the following link in the "Older Topics" dialog in the "View Discussion Group" page:
        | Month of Creation of Discussion Topic |
        | December 2019                         |
    And The following discussion topics are listed in the "Older Topics" dialog in the "View Discussion Group" page:
        | Discussion Topic |
        | Hi there!        |
    And The user clicks the "View Hi there!" link in the "Older Topics" dialog
    And The "View Discussion Topic" dialog is opened in the "View Discussion Group" page
    When The user clicks the "Edit" link in the "View Discussion Topic" page
    And The "Edit Discussion Topic" page is shown
    And The user clicks the "Save" button in the "Edit Discussion Topic" page
    Then The following options are shown in the "View Discussion Group" page:
        | Topic     | Can Delete |  Create New Case | Can Unsubscribe |
        | Hi there! | true       |  true            | true            |
