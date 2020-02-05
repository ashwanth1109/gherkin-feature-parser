@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31212
@WikiTemplate
Feature: Wiki template - Copy

  Scenario: Administrator can copy an existing Wiki template: Copy: Immediately creates copy with the " (2)" suffix
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                 | HTML                             | CSS                                | Change          |
      | Custom Wiki template (2) | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The following wiki template attachments exist:
      | Template             | File Name | File Size |
      | Custom Wiki template | c.png     | 33000     |
      | Custom Wiki template | b.png     | 22000     |
      | Custom Wiki template | a.png     | 11000     |
    And The user navigates to the "List Templates" page
    When The user clicks the "Copy" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    Then The user is redirected to the "Edit Template" page
    And The following wiki template details are shown in the "Edit Template" page:
      | Template                     | HTML                             | CSS                                      | Change |
      | Custom Wiki template (2) (2) | <div id="container">Custom</div> | span.Terminal { font-family: Terminal; } |        |
    And The following wiki template attachments are listed in the "Attachments" table in the "Attachments" section in the "Edit Template" page in the following order:
      | Attachment    | Can Delete |
      | a.png (11 KB) | true       |
      | b.png (22 KB) | true       |
      | c.png (33 KB) | true       |
    # TODO: Click the "History" link and verify that there is a single revision of the template.
    # TODO: Deep attachment verification can be added: Download and compare with the original ones.
    And The user clicks the "Cancel" button in the "Edit Template" page
    And The user is redirected to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                     | In Use |
      | false    | true     | false      | false   | FogBugz 8 Default Template   | Yes    |
      | true     | true     | true       | true    | Custom Wiki template (2)     | No     |
      | true     | true     | true       | true    | Custom Wiki template (2) (2) | No     |
