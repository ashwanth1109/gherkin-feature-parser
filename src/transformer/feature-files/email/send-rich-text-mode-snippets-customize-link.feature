@NotAutomated
@JIRA-Key-MANUSCRIPT-31676
@Email
Feature: Email - Send - Rich Text Mode - Snippets - Customize link

  Scenario: User can navigate to snippets page from new email page using customize link
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Snippets" button in the "New Email" page
    And The "Snippets" dialog is shown
    And The user clicks the "Customize" link in the "Snippets" dialog
    Then The user is redirected to the "Snippets" page
