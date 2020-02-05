@NotAutomated
@JIRA-Key-MANUSCRIPT-29933
@User
Feature: User - Create - Register Community User - Change Password

  Scenario: Users can change the password when registering the community user
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
      | Password             | Check to change the password now | New Password | Retype Password |
      | "temporary password" | true                             | 123123       | 123123          |
    And The user clicks the "OK" button in the "Confirm Account" page
    Then The user logs in
    And The user logs out
    And The user enters the credentials in the "Login" page:
      | Email                 | Password |
      | community@fogbugz.com | 123123   |
    And The user clicks the "Log In" button in the "Login" page
    And The user logs in
