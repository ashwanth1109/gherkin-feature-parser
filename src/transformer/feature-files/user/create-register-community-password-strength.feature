@NotAutomated
@JIRA-Key-MANUSCRIPT-29934
@User
Feature: User - Create - Register Community User - Password Strength

  Scenario Outline: Password strength when changing the password for a registered community user
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Community Users Control                 |
      | Anybody can create their community user |
    And The user logs out
    And The user clicks the "Register" button in the sidebar
    And The "Sign up for a new Community user" page is shown
    When The user enters the community user details in the "Sign up for a new Community user" page:
      | Full Name | Email Address         | Homepage               |
      | Annie J   | community@fogbugz.com | http://www.nowhere.com |
    And The user clicks the "OK" button in the "Sign up for a new Community user" page
    And The user is redirected to the "Confirm Account" page
    And The invitation email with the temporary password has been sent to the "community@fogbugz.com" email address
    And The user enters the following details in the "Confirm Account" page:
      | Password             | Check to change the password now | New Password   | Retype Password |
      | "temporary password" | true                             | <New Password> | <New Password>  |
    Then The "Password Strength" indicator is "<Indicator Value>" in the "Change Password" dialog
    And The "New Password" field has the "<Error>" error message in the "Change Password" dialog
    Examples:
      | New Password | Indicator Value | Error                                       |
      | 1            | Empty           | Password must be at least 6 characters long |
      | 123          | Red             | Password must be at least 6 characters long |
      | 123456       | Red             | Passwords do not match                      |
      | 1q~          | Yellow          | Password must be at least 6 characters long |
      | 1q~Qy        | Yellow          | Password must be at least 6 characters long |
      | 1q~Qy123123  | Green           |                                             |
