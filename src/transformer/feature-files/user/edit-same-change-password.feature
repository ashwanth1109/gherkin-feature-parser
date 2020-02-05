@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29476
@User
Feature: User - Edit same - Change Password

  Scenario: Administrator can change password of themselves
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Administrator" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    And The user enters the user options details in the "User Options" page:
      | Email                    |
      | thirtynine@twentytwo.com |
    And The user clicks the "Check" button for the "Email" field in the "User Options" Page
    And The user clicks the "Change Password" button in the "User Options" page
    And The "Change Password" dialog is opened
    And The user enters the change password details in the "Change Password" dialog:
      | New Password | Retype New Password |
      | thirtynine   | thirtynine          |
    And The user clicks the "Save" button in the "Change Password" dialog
    And The "Change Password" dialog is closed
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email                    | Password   |
      | thirtynine@twentytwo.com | thirtynine |
    And The user clicks the "Log In" button in the "Login" page
    Then The user logs in
