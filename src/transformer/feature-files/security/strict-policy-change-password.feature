@NotAutomated
@JIRA-Key-MANUSCRIPT-31771
@Security
Feature: Security - Strict Policy - Change Password

  Scenario: User can see description of the "Strict Password Policy" option in site configuration
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    When The user clicks the "?" link in the "Authentication" tab in the "Site Configuration" page
    Then The following message is shown in the "Authentication" tab in the "Site Configuration" page:
    """
    The Strict Password Policy will enforce the following rules whenever a password is set:
  Passwords must be at least 8 characters long
  Passwords must contain:
    At least 1 uppercase letter
    At least 1 lowercase letter
    At least 1 number
    At least 1 special character (@,#,$,etc.)

If disabled, passwords are only required to be at least 6 characters long.
    """

  Scenario Outline: The "Strict Password Policy" is applied to changing password in the user options
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Password Policy |
      | true            |
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
    Then The "New Password" field has the "<Error>" error message in the "Change Password" dialog
    Examples:
      | New Password | Error                                                |
      | 1            | Password must be at least 8 characters long          |
      | 12345678     | Password must contain at least one uppercase letter  |
      | w2345678     | Password must contain at least one uppercase letter  |
      | wW345678     | Password must contain at least one special character |
      | wW!45678     | Passwords do not match                               |

  Scenario Outline: The "Strict Password Policy" is applied to changing password in the legacy user options
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Password Policy |
      | true            |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Check to set the password now |
      | true                          |
    When The user enters the user options details in the "User Options" page:
      | New Password   |
      | <New Password> |
    Then The "New Password" field has the "<Error>" error message in the "Change Password" dialog
    Examples:
      | New Password | Error                                                                                                                                 |
      | 1            | Must be at least 8 characters long\nMissing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.) |
      | 12345678     | Missing an uppercase letter\nMissing a lowercase letter\nMissing a special character (@,#,$,etc.)                                     |
      | w2345678     | Missing an uppercase letter\nMissing a special character (@,#,$,etc.)                                                                 |
      | wW345678     | Missing a special character (@,#,$,etc.)                                                                                              |
      | wW!45678     |                                                                                                                                       |

  Scenario Outline: The "Strict Password Policy" is not applied to changing password for community users
    Given The user is logged in as Administrator
    And The following site configuration details exist:
      | Community Users Control                 |
      | Anybody can create their community user |
    And The following site configuration details exist:
      | Password Policy |
      | true            |
    And The user logs out
    And The user clicks the "Register" button in the sidebar
    And The "Sign up for a new Community user" page is shown
    When The user enters the community user details in the "Sign up for a new Community user" page:
      | Full Name | Email Address         | Homepage               |
      | Annie J   | community@fogbugz.com | http://www.nowhere.com |
    And The user clicks the "OK" button in the "Sign up for a new Community user" page
    And The user is redirected to the "Confirm Account" page
    And The invitation email with the temporary password has been sent to the "community@fogbugz.com" email address
    And The user enters the following details in the "Confirm Account" page:
      | Password             | Check to change the password now | New Password   |
      | "temporary password" | true                             | <New Password> |
    Then The "New Password" field has the "<Error>" error message in the "Confirm Account" page
    Examples:
      | New Password | Error                              |
      | 1            | Must be at least 6 characters long |
      | 12345678     | Must match                         |
      | w2345678     | Must match                         |
      | wW345678     | Must match                         |
      | wW!45678     | Must match                         |
