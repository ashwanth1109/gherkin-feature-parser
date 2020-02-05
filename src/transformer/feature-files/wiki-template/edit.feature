@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-28907
@WikiTemplate
Feature: Wiki template - Edit

  Background:
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The user navigates to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page
    When The user enters the wiki template details in the "Edit Template" page:
      | Template                | Change  |
      | An edited Wiki template | Edited. |

  Scenario: Administrator can edit an existing Wiki template: "Template": "Save" button
    When The user clicks the "Save" button in the "Edit Template" page
    Then The user is redirected to the "Edit Template" page with the updated wiki template
    And The user navigates to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | true     | true     | true       | true    | An edited Wiki template    | No     |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |

  Scenario: Administrator can edit an existing Wiki template: "Template": "Save and Close" button
    When The user clicks the "Save and Close" button in the "Edit Template" page
    Then The user is redirected to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | true     | true     | true       | true    | An edited Wiki template    | No     |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
