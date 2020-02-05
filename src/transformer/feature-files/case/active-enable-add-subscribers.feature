@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29702
@Case
Feature: Case - Active - Enable Add Subscribers

  Scenario: Administrator can enable add subscribers setting in site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      | Add Subscribers                                                                |
       | The case page will show users who have subscribed to the current case | The case page will not show a section for adding subscriptions for other users |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user checks the "Add Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page
    Then The "Add Subscribers" checkbox is checked

  Scenario: Administrator can add subscribers to an active case when add subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "View Active Case" page
    When The user selects the following users from the "Add Subscriber" dropdown in the "View Active Case" page:
       | Test UserA |
    Then The "Add Subscriber" dropdown is closed
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
       | Test UserA |

  Scenario: Administrator can disable add subscribers setting in site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user unchecks the "Add Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page
    Then The "Add Subscribers" checkbox is unchecked

  Scenario: Administrator cannot add subscribers to an active case when add subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                                |
       | The case page will not show a section for adding subscriptions for other users |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active | Test UserA |
    When The user searches for the "16" search string by using the search box
    Then The "View Active Case" page is shown
    And The "Add Subscriber" dropdown is not shown on "View Active Case" page
