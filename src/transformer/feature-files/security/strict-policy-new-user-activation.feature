@NotAutomated
@JIRA-Key-MANUSCRIPT-31772
@Security
Feature: Security - Strict Policy - New User Activation

  Scenario Outline: The "Strict Password Policy" is applied when creating" new users
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Password Policy |
      | true            |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Add New User" button in the "Users" page
    When The user enters the user details in the "Add New User" dialog:
      | Full Name | Email               | Active on FogBugz | Active on Kiln | Role   |
      | A a       | test@devfactory.com | true              | false          | Normal |
    And The user clicks the "Add User" button in the "Add New User" dialog
    And The invitation email with the temporary password has been sent to the "test@devfactory.com" email address
    And The user clicks the "confirm your account" link in the "test@devfactory.com" email message
    And The "New User" page is shown
    And The user enters the following details in the "New User" page:
      | Password     |
      | Set manually |
    And The user enters the following details in the "New User" page:
      | New Password   |
      | <New Password> |
    Then The "New Password" field has the "<Error>" error message in the "New User" page
    Examples:
      | New Password | Error                                                                                                                                 |
      | 1            | Must be at least 8 characters long\nMissing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.) |
      | 12345678     | Missing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.)                                     |
      | w2345678     | Missing an uppercase letter\nMissing a special character (@,#,$,etc.)                                                                 |
      | wW345678     | Missing a special character (@,#,$,etc.)                                                                                              |
      | wW!45678     |                                                                                                                                       |
