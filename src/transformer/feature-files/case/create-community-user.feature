@NotAutomated
@JIRA-Key-MANUSCRIPT-29680
@Case
Feature: Case - Edit - Community User

  Scenario: Community user can create a new case
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              | Password |
      | Alesha Muromec | alesha@nowhere.com | 123123   |
    And The following permissions exist:
      | Project | Type           | Name                | Submit Cases |
      | Inbox   | Community User | All Community Users | true         |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user enters the login details in the "Login" form in the "Login" page:
      | Email              | Password |
      | alesha@nowhere.com | 123123   |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    And The user enters the public case details in the "New Public Case" page:
      | Title          | Project | Area     | Description                            |
      | Community Case | Inbox   | Not Spam | Attempt to create first community case |
    And The user clicks the "OK" button
    Then The user is redirected to the "View Public Case" page
    And The following public case details are shown in the "View Public Case" page:
      | ID | Title                 | Description                            |
      | 17 | (Open) Community Case | Attempt to create first community case |
    And The user logs out
    And The user is logged in as Administrator
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title          | Description                            | Project | Area     | Milestone | Correspondent      | Assignee      |
      | 17 | Community Case | Attempt to create first community case | Inbox   | Not Spam | Undecided | alesha@nowhere.com | Administrator |
