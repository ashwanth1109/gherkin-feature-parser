@NotAutomated
@JIRA-Key-MANUSCRIPT-29824
@Configuration
Feature: Site Configuration - Community Users - Toggle

  Scenario: Administrator can enable community users
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    And The user enters the site configuration details in the "Site Configuration" page:
      | Community Users |
      | true            |
    And The user clicks the "OK" button in the "Site Configuration" page
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "Log In" button in the "Login" form in the "Login" page
    Then The user logs in

  Scenario: Administrator can disable community users
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The user clicks the "Authentication" tab in the "Site Configuration" page
    And The user enters the site configuration details in the "Site Configuration" page:
      | Community Users |
      | false           |
    And The user clicks the "OK" button in the "Site Configuration" page
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "Log In" button in the "Login" form in the "Login" page
    Then The "Incorrect password or username" error message is shown in the "Login" page
