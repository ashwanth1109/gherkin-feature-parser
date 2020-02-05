@NotAutomated
@JIRA-Key-MANUSCRIPT-29843
@User
Feature: User - Edit - Legacy - Close Case Action

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page


  Scenario: Close Case Action - Redirect to current filter after closing
    Given The user enters the user options details in the "User Options" page:
      | Close Case Action                        |
      | Redirect to current filter after closing |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Bonanza | Active |
    When The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "Resolve & Close" button in the "Edit Resolved" page
    Then The user is redirected to the "Filters" page

  Scenario: Close Case Action - Remain on case details page after closing
    Given The user enters the user options details in the "User Options" page:
      | Close Case Action                         |
      | Remain on case details page after closing |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   | Status |
      | 16 | Bonanza | Active |
    When The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "Resolve & Close" button in the "Edit Resolved" page
    Then The user is redirected to the "View Closed Case" page
