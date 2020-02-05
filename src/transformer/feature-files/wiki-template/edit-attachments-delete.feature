@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31211
@WikiTemplate
Feature: Wiki template - Edit - Attachments - Delete

  Scenario: Administrator can edit an existing Wiki template: Attachments: Delete: Immediately deletes attachment (without pressing "Save" or "Save and Close" button)
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The following wiki template attachments exist:
      | Template             | File Name   | File Size |
      | Custom Wiki template | fogbugz.png | 11000     |
    And The user navigates to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page
    When The user clicks the "Delete" button for the "fogbugz.png" wiki template attachment row in the "Attachments" table in the "Attachments" section in the "Edit Template" page
    And The "Delete Wiki Template Attachment" dialog is opened
    And The following dialog details are shown in the "Delete Wiki Template Attachment" dialog:
      | Caption              | Message                                      |
      | Delete Attached File | Are you sure you want to delete fogbugz.png? |
    And The user clicks the "Yes" button in the "Delete Wiki Template Attachment" dialog
    Then The "Delete Wiki Template Attachment" dialog is closed
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment | Can Delete | Column Span |
      | None       |            | 2           |
    And The user navigates to the "List Templates" page
    And The user clicks the "Edit" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Edit Template" page
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment | Can Delete | Column Span |
      | None       |            | 2           |
