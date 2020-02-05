@NotAutomated
@JIRA-Key-MANUSCRIPT-29691
@Case
Feature: Case - Create - Public Case - Public Project


  Scenario: Anybody can open a public case
    Given The user clicks the "New Case" button
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following permissions exist:
      | Project | Name             | Submit Cases |
      | Ninja   | Anonymous Users  | true         |
      | Hidden  | All Normal Users | false        |
    When The user clicks the "New Case" button in the sidebar
    Then The following projects are listed in the "Project" dropdown in the "New Public Case" page:
      | Inbox |
      | Ninja |
