@NotAutomated
@JIRA-Key-MANUSCRIPT-29988
@Configuration
Feature: Configuration - Pending Emails (sent)

  Scenario: User can see the amount of pending outbound emails in site configuration
    Given The user is logged in as Administrator
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 111     |
    And The user clicks the "Send" button in the "New Email" page
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 112     |
    And The user clicks the "Send" button in the "New Email" page
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 113     |
    And The user clicks the "Send" button in the "New Email" page
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 114     |
    And The user clicks the "Send" button in the "New Email" page
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 115     |
    And The user clicks the "Send" button in the "New Email" page
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Subject |
      | nobody@nowhere.com | 116     |
    And The user clicks the "Send" button in the "New Email" page
    When The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Site Configuration" menu item in the sidebar menu
    Then The "Mail Queue Information" field shows at least 1 pending message in the "Site Configuration" page


