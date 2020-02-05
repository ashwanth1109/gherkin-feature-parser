@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29705
@Case
Feature: Case - Active - Enable View Subscribers

  Scenario: Administrator can enable view subscribers in site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user checks the "Show Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page
    Then The "Show Subscribers" checkbox is checked
    And The "Add Subscribers" checkbox is enabled

  Scenario: Administrator can view subscriber of an active case when show subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active | Test UserA |
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    When The user searches for the "16" search string by using the search box
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
       | Test UserA |

  Scenario: Administrator can disable view subscribers in site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Advanced" tab in the "Site Configuration" page
    And The "Advanced" tab is shown in the "Site Configuration" page
    When The user unchecks the "Show Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page
    Then The "Show Subscribers" checkbox is unchecked
    And The "Add Subscribers" checkbox is disabled

  Scenario: Administrator cannot view subscriber of an active case when show subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active | Test UserA |
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    When The user searches for the "16" search string by using the search box
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
        | Subscribers |
        |             |
