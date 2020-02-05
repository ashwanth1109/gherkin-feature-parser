@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-28920
@WikiTemplate
Feature: Wiki template - Read-only default template

  Scenario: System provides the read-only default template
    Given The user is logged in as Administrator
    When The user navigates to the "List Templates" page
    Then The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Template                   | Can Edit | Can Copy | Can Delete | Default |
      | FogBugz 8 Default Template | false    | true     | false      | true    |
