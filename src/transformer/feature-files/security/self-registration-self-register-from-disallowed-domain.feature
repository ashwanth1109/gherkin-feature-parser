@NotAutomated
@JIRA-Key-MANUSCRIPT-32848
@Security
Feature: Security - Self-Registration - Self-Register from disallowed domain

  Scenario: When attempting to self-register from not allowed domain - an error page is shown
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user enters the following details in the "Manage Users" page:
      | Allowed Domains |
      | @devfactory.com |
    And The user logs out
    When The user clicks the "Register" button in the sidebar
    And The user is redirected to the "Register" page
    And The user enters the following details in the "Register" page:
      | Your company email   |
      | test@not-allowed.com |
    And The user clicks the "Send me the confirmation link" button in the "Register" page
    Then The "This domain address is not allowed for self-registration." error message is shown in the "Register" page
