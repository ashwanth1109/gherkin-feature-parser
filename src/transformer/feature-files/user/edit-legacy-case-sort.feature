@NotAutomated
@JIRA-Key-MANUSCRIPT-29842
@User
Feature: User - Edit - Legacy - Case Sort

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page


  Scenario: Case Sort - Show newest edits first
    Given The user enters the user options details in the "User Options" page:
      | Case Sort               |
      | Show newest edits first |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   |
      | 16 | Bonanza |
    When The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Title       |
      | Bonanza 2.0 |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Title       |
      | Bonanza 3.0 |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content                                           |
      | Edited By | Title changed from 'Bonanza 2.0' to 'Bonanza 3.0' |
      | Edited By | Title changed from 'Bonanza' to 'Bonanza 2.0'     |

  Scenario: Case Sort - Show oldest edits first
    Given The user enters the user options details in the "User Options" page:
      | Case Sort               |
      | Show oldest edits first |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   |
      | 16 | Bonanza |
    When The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Title       |
      | Bonanza 2.0 |
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Title       |
      | Bonanza 3.0 |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content                                           |
      | Edited By | Title changed from 'Bonanza' to 'Bonanza 2.0'     |
      | Edited By | Title changed from 'Bonanza 2.0' to 'Bonanza 3.0' |
