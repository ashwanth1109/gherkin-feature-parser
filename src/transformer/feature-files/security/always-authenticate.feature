@NotAutomated
@JIRA-Key-MANUSCRIPT-31769
@Security
Feature: Security - Always Authenticate

  Scenario: User can login with session when "Remember Me" option is disabled
    Given The user is logged in as Administrator
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password | Remember Me |
      | administrator@fogbugz.com | test1234 | true        |
    And The user clicks the "Log In" button in the "Login" page
    And The user logs in
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password | Remember Me |
      | administrator@fogbugz.com | test1234 | false       |
    And The user clicks the "Log In" button in the "Login" page
    And The user logs in
    And The following cookies are present:
      | Name    | Expires / Max-Age |
      | fbToken | Session           |
