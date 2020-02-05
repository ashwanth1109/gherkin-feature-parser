@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-32085
@WikiTemplate
Feature: Wiki template - Edit - Attachments - View all

  Scenario: Administrator can edit an existing Wiki template: Attachments: View all: Sorted by name
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The following wiki template attachments exist:
      | Template             | File Name | File Size |
      | Custom Wiki template | c.png     | 33000     |
      | Custom Wiki template | b.png     | 22000     |
      | Custom Wiki template | a.png     | 11000     |
    And The user navigates to the "List Templates" page
    When The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    Then The user is redirected to the "Edit Template" page
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment    | Can Delete |
      | a.png (11 KB) | true       |
      | b.png (22 KB) | true       |
      | c.png (33 KB) | true       |
