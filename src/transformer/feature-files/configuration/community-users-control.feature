@NotAutomated
@JIRA-Key-MANUSCRIPT-29825
@Configuration
Feature: Site Configuration - Community Users Control

  Scenario: Administrator can prohibit creation of community users to administrators only
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    And The user enters the site configuration details in the "Site Configuration" page:
      | Community Users Control                |
      | Only admins can create community users |
    When The user clicks the "OK" button in the "Site Configuration" page
    And The user logs out
    Then The "Register" button is not shown in the sidebar

  Scenario: Administrator can allow creation of community users to administrators only
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    And The user enters the site configuration details in the "Site Configuration" page:
      | Community Users Control                 |
      | Anybody can create their community user |
    When The user clicks the "OK" button in the "Site Configuration" page
    And The user logs out
    And The user clicks the "Register" button in the sidebar
    And The "Sign up for a new Community user" page is shown
    Then The user enters the community user details in the "Sign up for a new Community user" page:
      | Full Name | Email Address | Homepage               |
      | F f       | f@f.com       | http://www.nowhere.com |
    And The user clicks the "OK" button in the "Sign up for a new Community user" page:
    And The user is redirected to the "Confirm Account" page
    And The user clicks the "Log In" button in the sidebar
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "community management page" link in the "Manage Users" page
    And The user clicks the "Edit" button for the "F f" community user in the "Management Community Users" page
    And The "User Options" page is shown
    And The user clicks the "Change Password" button in the "User Options" page
    And The "Change Password" dialog is opened
    And The user enters the change password details in the "Change Password" dialog:
      | New Password | Retype New Password |
      | 123123       | 123123              |
    And The user clicks the "Save" button in the "Change Password" dialog
    And The "Change Password" dialog is closed
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email   | Password |
      | f@f.com | 123123   |
    And The user clicks the "Log In" button
    And The user logs in
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Preferences" menu item in the sidebar menu
    And The user is redirected to the "User Options" page
    And The following user options details are listed in the "User Options" page:
      | Full Name | Email Address | Homepage               |
      | F f       | f@f.com       | http://www.nowhere.com |

