@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29571
@Project
Feature: Project - Edit - Project area - Case Assignment

  Scenario: Once created cases are assigned to the primary contact of the project area
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name | Email                | Role   |
      | Mr Robot  | somebody@nowhere.com | Normal |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact |
      | Ninja   | true       | SW   | Mr Robot        |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    When The user enters the case details in the "New Case" page:
      | Title      | Project | Project Area |
      | Cornucopia | Ninja   | SW           |
    Then The following case details are shown in the "New Case" page:
      | Assigned To                |
      | Primary Contact (Mr Robot) |
    And The user clicks the "Open" button in the "New Case" page
    And The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | Title      | Assigned To |
      | Cornucopia | Mr Roboto   |
