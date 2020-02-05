@JIRA-Key-MANUSCRIPT-28715
@Security
@ResetState
Feature: Security - Login with an email and password

  Scenario: User can log in with an email and password
    Given The following users exist:
      | Email                      | Password       | Full Name   |
      | normal-user@manuscript.com | GoodPassword1! | Normal User |
    And The user navigates to the "Index" page
    And The user clicks the "Log In" menu item in the sidebar menu
    And The "Log in" page is shown
    When The user enters the credentials in the "Login" page:
      | Email                      | Password       |
      | normal-user@manuscript.com | GoodPassword1! |
    And The user clicks the "Log In" button in the "Login" page
    Then The full name of the user is shown as "Normal User" in the sidebar
