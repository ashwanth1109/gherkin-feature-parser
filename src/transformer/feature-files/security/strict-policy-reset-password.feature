@NotAutomated
@JIRA-Key-MANUSCRIPT-31773
@Security
Feature: Security - Strict Policy - Reset Password

  Scenario Outline: The "Strict Password Policy" is applied when creating" new users
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Password Policy |
      | true            |
    And The user logs out
    And The user clicks the "Forgot Password" link in the "Login" page
    And The user enters the following details in the "Forgot your password?" page:
      | Email                     | Name |
      | administrator@fogbugz.com |      |
    And The user clicks the "OK" button in the "Forgot your password?" page
    And The user receives the "FogBugz & Kiln Password Reset" email message in the "administrator@fogbugz.com" email address
    And The user clicks the "Reset Password" link in the "FogBugz & Kiln Password Reset" email message
    And The user is redirected to the "Reset Password" page
    When The user enters the following details in the "Reset Password" page:
      | New Password   |
      | <New Password> |
    Then The "Password" field has the "<Error>" error message in the "Reset Password" page
    Examples:
      | New Password | Error                                                                                                                                 |
      | 1            | Must be at least 8 characters long\nMissing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.) |
      | 12345678     | Missing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.)                                     |
      | w2345678     | Missing an uppercase letter\nMissing a special character (@,#,$,etc.)                                                                 |
      | wW345678     | Missing a special character (@,#,$,etc.)                                                                                              |
      | wW!45678     |                                                                                                                                       |
