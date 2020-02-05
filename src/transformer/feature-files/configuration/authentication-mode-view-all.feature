@NotAutomated
@JIRA-Key-MANUSCRIPT-31666
@Configuration
Feature: Configuration  - Authentication Mode - View All

  Scenario: User can view all authentication modes available in Site Configuration
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    And The "Site Configuration" page is shown
    When The user clicks the "Authentication" tab in the "Site Configuration" page
    Then The following values are available for the "Authentication Mode" dropdown in the "Site Configuration" page in the following order:
      | Username and Password Authentication                 |
      | Username and Password or Google OAuth Authentication |
      | Google OAuth Authentication                          |
