@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31210
@WikiTemplate
Feature: Wiki template - Edit - Attachments - Create

  Background:
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The user navigates to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page

  Scenario: Administrator can edit an existing Wiki template: Attachments: Create: "Save" button
    When The user clicks the "Choose File" button in the "Attachments" section in the "Edit Template" page
    And The user selects the "fogbugz.png" image file in the file browser in the "Edit Template" page
    And The user clicks the "Save" button in the "Edit Template" page
    Then The user is redirected to the "Edit Template" page
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment          | Can Delete |
      | fogbugz.png (11 KB) | true       |

  Scenario: Administrator can edit an existing Wiki template: Attachments: Create: "Save and Close" button
    When The user clicks the "Choose File" button in the "Attachments" section in the "Edit Template" page
    And The user selects the "fogbugz.png" image file in the file browser in the "Edit Template" page
    And The user clicks the "Save and Close" button in the "Edit Template" page
    Then The user is redirected to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment          | Can Delete |
      | fogbugz.png (11 KB) | true       |
