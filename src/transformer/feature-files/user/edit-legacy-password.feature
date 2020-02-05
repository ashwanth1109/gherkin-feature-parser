@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29847
@User
Feature: User - Edit - Legacy - Password

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page

  Scenario: User - Edit - Legacy - Change Password
    Given The user enters the user options details in the "User Options" page:
      | Check to set the password now |
      | true                          |
    And The user enters the user options details in the "User Options" page:
      | New Password | Retype Password |
      | thirtynine   | thirtynine      |
    And The user clicks the "OK" button in the "User Options" page
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password   |
      | administrator@fogbugz.com | thirtynine |
    And The user clicks the "Log In" button in the "Login" page
    Then The user logs in

  Scenario Outline: User - Edit - Legacy - Change Password Strength
    Given The user enters the user options details in the "User Options" page:
      | Check to set the password now |
      | true                          |
    And The user enters the user options details in the "User Options" page:
      | New Password   | Retype Password |
      | <New Password> | <New Password>  |
    Then The "Password Strength" indicator is "<Indicator Value>" in the "Change Password" dialog
    And The "New Password" field has the "<Error>" error message in the "Change Password" dialog
    Examples:
      | New Password | Indicator Value | Error                                       |
      | 1            | Empty           | Password must be at least 6 characters long |
      | 123          | Red             | Password must be at least 6 characters long |
      | 123456       | Red             |                                             |
      | 1q~          | Yellow          | Password must be at least 6 characters long |
      | 1q~Qy        | Green           | Password must be at least 6 characters long |

