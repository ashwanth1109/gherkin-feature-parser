@NotAutomated
@JIRA-Key-MANUSCRIPT-32845
@Security
Feature: Security - Self-Registration - Complete Registration - password strength

  Scenario Outline: When completing self-registration the password strength indicator shows the safety of the chosen password
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
    Then The user receives the "Confirm your email for {{instance-name}}" email message in the "test@devfactory.com" email address
    And The user clicks the "Confirm email" link in the "Confirm your email for {{instance-name}}" email message
    And The user is redirected to the "Complete Registration" confirmation dialog
    And The user enters the following details in the "Complete Registration" confirmation dialog:
      | Full Name | Password       |
      | T t       | <New Password> |
    And The "Password Strength" indicator is "<Indicator Value>" in the "Complete Registration" confirmation dialog
    Examples:
      | New Password | Indicator Value |
      | 1            | Empty           |
      | 123          | Red             |
      | 123456       | Red             |
      | 1q~          | Yellow          |
      | 1q~Qy        | Green           |
