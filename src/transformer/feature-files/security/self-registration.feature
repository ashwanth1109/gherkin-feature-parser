@NotAutomated
@JIRA-Key-MANUSCRIPT-31767
@Security
Feature: Security - Self-Registration

  Scenario: User can enable self-registration for an email domain
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user enters the following details in the "Manage Users" page:
      | Allowed Domains |
      | @devfactory.com |
    And The user clicks the "Save" button in the "Manage Users" page
    And The user logs out
    When The user clicks the "Register" button in the sidebar
    And The user is redirected to the "Register" page
    And The user enters the following details in the "Register" page:
      | Your company email  |
      | test@devfactory.com |
    And The user clicks the "Send me the confirmation link" button in the "Register" page
    Then The user receives the "Confirm your email for {{instance-name}}" email message in the "test@devfactory.com" email address
    And The user clicks the "Confirm email" link in the "Confirm your email for {{instance-name}}" email message
    And The user is redirected to the "Complete Registration" confirmation dialog
    And The user enters the following details in the "Complete Registration" confirmation dialog:
      | Full Name | Password |
      | T t       | 123123   |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email               | Password |
      | test@devfactory.com | 123123   |
    And The user clicks the "Log In" button
    And The user logs in
