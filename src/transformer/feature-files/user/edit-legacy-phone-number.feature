@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29840
@User
Feature: User - Edit - Legacy - Phone Number

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user enters the user options details in the "User Options" page:
      | Phone Number |
      | 123123123123 |
    And The user clicks the "OK" button in the "User Options" page

  Scenario: Administrator can see primary contact's phone in the "Projects" page
    Given The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user hovers over the "Primary Contact" column of the "Inbox" project in the "Projects" page
    Then The "Person Details" popover is shown
    And The following user details are listed in the "Person Details" popover:
      | Phone Number |
      | 123123123123 |

  Scenario: Administrator can see primary contact's phone in the "Edit Project" page
    Given The following project areas exist:
      | Project Name  | Area | Primary Contact |
      | Inbox         | Spam | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" page
    When The user hovers over the "Primary Contact" column of the "Spam" project are in the "Edit Project" page
    Then The "Person Details" popover is shown
    And The following user details are listed in the "Person Details" popover:
      | Phone Number |
      | 123123123123 |
