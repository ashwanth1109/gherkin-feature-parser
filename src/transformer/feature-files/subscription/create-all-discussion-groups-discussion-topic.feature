@NotAutomated
@JIRA-Key-MANUSCRIPT-30354
@Subscription
Feature: Subscription - Create - All Discussion Groups - Discussion Topic

  Scenario: Administrator user is auto subscribed to a discussion topic they create when they have auto subscribed to subscription "Subscribed to ALL DISCUSSION GROUPS"
    Given The user is logged in as Administrator
    And The following community user groups exist:
        | Name           | Notes                |
        | Community User | Community User Group |
    And The following discussion groups exist:
        | Discussion Group   |
        | Discussion Group-1 |
    And The following subscriptions exist:
        | Can Delete | Subscription                        |
        | true       | Subscribed to ALL DISCUSSION GROUPS |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    When The user clicks the "Edit" button for the "Community User" user group row in the "Community User Groups" table in the "User Groups" page
    And The "Edit User Group" page is shown
    And The user clicks the "discussion groups" link in the "Used By" in the "Edit User Group" page
    And The "Discussion Groups" page is shown
    And The following discussion groups are listed in the "Discussion Groups" page:
        | Discussion Group   |
        | Discussion Group-1 |
    And The user clicks the "View Discussion Group-1" link in the "Discussion Groups" page
    And The "View Discussion Group-1" page is shown
    And The user clicks the "New Topic" link in the "View Discussion Group" page
    And The "New Topic" dialog is opened
    And The user enters the topic details in the "New Topic" dialog:
        | Subject  | Message   |
        | Hi there!| Whats up? |
    And The user clicks the "OK" button in the "New Topic" dialog
    Then The following options are shown in the "View Discussion Group" page:
        | Topic     | Can Delete |  Create New Case | Can Unsubscribe |
        | Hi there! | true       |  true            | true            |
