@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31227
@Wiki
Feature: Wiki - Create - Templates link

  Scenario: The "New Wiki" page contains the "templates" link that has the "List Templates" page as its destination
    Given The user is logged in as Administrator
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "New Wiki" link in the "Manage Wikis" page
    And The "New Wiki" page is shown
    When The user clicks the "templates" link in the "New Wiki" page
    Then The "List Templates" page is shown
