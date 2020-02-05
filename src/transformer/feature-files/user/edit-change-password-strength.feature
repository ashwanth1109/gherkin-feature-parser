@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29477
@User
Feature: User - Edit - Change Password Strength

  Scenario Outline: Password strength is shown when changing passwords
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Administrator" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    And The user clicks the "Change Password" button in the "User Options" page
    And The "Change Password" dialog is opened
    When The user enters the change password details in the "Change Password" dialog:
      | New Password   |
      | <New Password> |
    Then The "Password Strength" indicator is "<Indicator Value>" in the "Change Password" dialog
    And The "New Password" field has the "<Error>" error message in the "Change Password" dialog
    Examples:
      | New Password | Indicator Value | Error                                       |
      | 1            | Empty           | Password must be at least 6 characters long |
      | 123          | Red             | Password must be at least 6 characters long |
      | 123456       | Red             | Passwords do not match                      |
      | 1q~          | Yellow          | Password must be at least 6 characters long |
      | 1q~Qy        | Green           | Password must be at least 6 characters long |
