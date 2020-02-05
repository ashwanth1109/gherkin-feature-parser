@NotAutomated
@JIRA-Key-MANUSCRIPT-31765
@Security
Feature: Security - Password recovery - By Email Address

  Scenario: User can recover password by email address
    Given The user is logged in as Administrator
    And The user logs out
    When The user clicks the "Forgot Password" link in the "Login Page" page
    And The user enters the following details in the "Forgot your password?" page:
      | Email                     | Name |
      | administrator@fogbugz.com |      |
    And The user clicks the "OK" button in the "Forgot your password?" page
    And The user clicks the "Back to login page" link in the "Forgot your password?" page
    Then The user receives the "FogBugz & Kiln Password Reset" email message in the "administrator@fogbugz.com" email address
    And The user clicks the "Reset Password" link in the "FogBugz & Kiln Password Reset" email message
    And The user is redirected to the "Reset Password" page
    And The user enters the following details in the "Reset Password" page:
      | Password | Retype Password |
      | 123123   | 123123          |
    And The user clicks the "OK" button in the "Reset Password" page
    And The user logs in
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password |
      | administrator@fogbugz.com | 123123   |
    And The user clicks the "Log In" button
    And The user logs in


