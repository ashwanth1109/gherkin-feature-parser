@NotAutomated
@JIRA-Key-MANUSCRIPT-32989
@Wiki
Feature: Wiki - Undelete - Back to Wikis

  Scenario: Administrator can navigate to "Manage Wikis" page from "Undelete Wikis" page: "Back to Wikis" link
    Given The user is logged in as Administrator
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Undelete wikis" link in the "Manage Wikis" page
    And The "Undelete Wikis" page is shown
    When The user clicks the "Back to Wikis" link in the "Undelete Wikis" page
    Then The "Manage Wikis" page is shown
