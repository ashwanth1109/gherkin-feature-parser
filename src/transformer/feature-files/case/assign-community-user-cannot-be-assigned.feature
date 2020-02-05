@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29677
@Case
Feature: Case - Assign - Community User Cannot Be Assigned

  Scenario Outline: Active cases cannot be assigned to community users
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title      | Status |
      | 17 | First Case | Active |
    And The following community users exist:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    And The following users exist:
      | Full Name | Email                | Role   |
      | Mr Robot  | somebody@nowhere.com | Normal |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Assign" button in the "<Location>" panel in the "View Active Case" page
    Then The following values are available for the "Assign" dropdown in the "<Location>" panel in the "View Active Case" page in the following order:
      | Choose a Person |
      | Administrator   |
      | Mr Robot        |
    Examples:
      | Location |
      | Top      |
      | Bottom   |

  Scenario Outline: Resolved cases cannot be assigned to community users
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title      | Status   |
      | 17 | First Case | Resolved |
    And The following community users exist:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    And The following users exist:
      | Full Name | Email                | Role   |
      | Mr Robot  | somebody@nowhere.com | Normal |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Assign" button in the "<Location>" panel in the "View Resolved Case" page
    Then The following values are available for the "Assign" dropdown in the "<Location>" panel in the "View Resolved Case" page in the following order:
      | Choose a Person |
      | Administrator   |
      | Mr Robot        |
    Examples:
      | Location |
      | Top      |
      | Bottom   |

  Scenario: New cases cannot be assigned to community users
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    And The following users exist:
      | Full Name | Email                | Role   |
      | Mr Robot  | somebody@nowhere.com | Normal |
    And The user clicks the "New Case" button in the sidebar
    When The user is redirected to the "New Case" page
    Then The following values are available for the "Assign To" dropdown in the "New Case" page in the following order:
      | Choose a Person |
      | Administrator   |
      | Mr Robot        |
