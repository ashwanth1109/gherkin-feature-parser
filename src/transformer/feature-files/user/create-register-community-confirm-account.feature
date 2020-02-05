@NotAutomated
@JIRA-Key-MANUSCRIPT-29906
@User
Feature: User - Create - Register Community User - Confirm Account


  Scenario: Confirm Account page
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
    Then The user is redirected to the "Confirm Account" page
