@NotAutomated
@JIRA-Key-MANUSCRIPT-31668
@Configuration
Feature: Configuration - Authentication Mode - Google OAuth Authentication

  Scenario: Administrator can set authentication mode to user and password
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    When The user selects the "Google OAuth Authentication" option from the "Authentication Mode" dropdown
    And The user clicks the "OK" button in the "Site Configuration" page
    And The user logs out
    Then The "Sign in with Google" button is shown in the "Login" page
    And The "Email" field is not shown in the "Login" page
    And The "Password" field is not shown in the "Login" page
    And The "Remember me" checkbox is not shown in the "Login" page
