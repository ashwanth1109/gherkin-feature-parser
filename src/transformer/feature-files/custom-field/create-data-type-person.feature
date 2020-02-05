@NotAutomated
@JIRA-Key-MANUSCRIPT-29295
@CustomField
Feature: Custom field - Create - Data Type - Person

  Scenario: Administrator can configure which types of users are available for custom fields of type Person
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description    | Field Location | Data Type | Users in Dropdown: Community Users | Users in Dropdown: Inactive Users | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field 1 | Top            | Person    | true                               | false                             | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL2 | Custom Field 2 | Top            | Person    | false                              | true                              | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL3 | Custom Field 3 | Top            | Person    | true                               | true                              | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The following users exist:
      | Full name | Email              | Account Type   | Deleted |
      | Harry P   | harryp@fogbugz.com | Community User | false   |
      | Lion King | lionk@fogbugz.com  | Community User | true    |
    When The user clicks the "New Case" button in the sidebar
    Then The following values are available for the "CFL1" custom field in the "New Case" page:
      | Harry P |
    And The following values are available for the "CFL2" custom field in the "New Case" page:
      | Lion King |
    And The following values are available for the "CFL3" custom field in the "New Case" page:
      | Harry P   |
      | Lion King |
