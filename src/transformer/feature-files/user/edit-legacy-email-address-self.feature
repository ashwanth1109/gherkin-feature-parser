@NotAutomated
@JIRA-Key-MANUSCRIPT-29830
@User
Feature: User - Edit - Legacy - Email Address - Self

  Scenario: Administrators can edit their own email addresses
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user enters the user options details in the "User Options" page:
      | Email Address     |
      | noone@nowhere.com |
    And The user logs out
    And The user enters the credentials in the "Login" page:
      | Email             | Password |
      | noone@nowhere.com | test1234 |
    And The user clicks the "Log In" button in the "Login" page
    Then The user logs in
