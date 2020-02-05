@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-32400
@WikiTemplate
Feature: Wiki template - Edit - HTML

  Background:
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The user navigates to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page
    When The user enters the wiki template details in the "Edit Template" page:
      | HTML                             |
      | <div id="container">Edited</div> |

  Scenario: Administrator can edit an existing Wiki template: "HTML": "Save" button
    When The user clicks the "Save" button in the "Edit Template" page
    Then The user is redirected to the "Edit Template" page
    And The user navigates to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | true       | false   | Custom Wiki template       | No     |
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The following wiki template details are shown in the "Edit Template" page:
      | Template             | HTML                             | CSS                                | Change |
      | Custom Wiki template | <div id="container">Edited</div> | span.Arial { font-family: Arial; } |        |
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment | Can Delete | Column Span |
      | None       |            | 2           |

  Scenario: Administrator can edit an existing Wiki template: "HTML": "Save and Close" button
    When The user clicks the "Save and Close" button in the "Edit Template" page
    Then The user is redirected to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | true       | false   | Custom Wiki template       | No     |
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The following wiki template details are shown in the "Edit Template" page:
      | Template             | HTML                             | CSS                                | Change |
      | Custom Wiki template | <div id="container">Edited</div> | span.Arial { font-family: Arial; } |        |
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment | Can Delete | Column Span |
      | None       |            | 2           |
