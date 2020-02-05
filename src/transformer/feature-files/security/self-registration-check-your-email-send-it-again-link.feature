@NotAutomated
@JIRA-Key-MANUSCRIPT-32847
@Security
Feature: Security - Self-Registration - Check your email - send it again link

  Scenario: User can re-request confirmation link upon self-registration
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
      | Your company email  |
      | test@devfactory.com |
    And The user clicks the "Send me the confirmation link" button in the "Register" page
    And The user is redirected to the "Check your email" page
    And The user clicks the "send it again" link in the "Check your email" page
    Then The user is redirected to the "Register" page
