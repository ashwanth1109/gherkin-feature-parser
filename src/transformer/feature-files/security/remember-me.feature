@NotAutomated
@JIRA-Key-MANUSCRIPT-31768
@Security
Feature: Security - Remember Me

  Scenario: User can enable the "Remember Me" option
    Given The user is logged in as Administrator
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password | Remember Me |
      | administrator@fogbugz.com | test1234 | true        |
    And The user clicks the "Log In" button in the "Login" page
    And The user logs in
    And The following cookies are present:
      | Name    | Expires / Max-Age       |
      | fbToken | "Current time" + 1 year |
