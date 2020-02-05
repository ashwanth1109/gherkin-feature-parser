@NotAutomated
@JIRA-Key-MANUSCRIPT-29905
@User
Feature: User - Create - Register Community User

  Scenario: Anyone can register as a community user
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
    And The user enters the temporary password in the "Password" field in the "Confirm Account" page
    And The user clicks the "OK" button in the "Confirm Account" page
    Then The user logs in
