@NotAutomated
@JIRA-Key-MANUSCRIPT-31770
@Configuration
Feature: Configuration - Remember Me

  Scenario: User can enable the "Remember Me" option in site configuration
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    When The user enters the following details in the "Authentication" tab in the "Site Configuration" page:
      | Log in                |
      | "Remember Me" Allowed |
    And The user logs out
    Then The "Remember me" checkbox is shown in the "Login" page

  Scenario: User can disable the "Remember Me" option in site configuration
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    When The user enters the following details in the "Authentication" tab in the "Site Configuration" page:
      | Log in                    |
      | "Remember Me" Not Allowed |
    And The user logs out
    Then The "Remember me" checkbox is not shown in the "Login" page
