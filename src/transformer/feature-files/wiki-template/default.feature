@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29668
@WikiTemplate
Feature: Wiki template - Default

  Scenario: Administrator can mark an existing Wiki template as the default one
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                 | HTML                             | CSS                                | Change          | Default |
      | 5k Rewrite Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. | false   |
    And The user navigates to the "List Templates" page
    When The user clicks the "Default" radio button for the "5k Rewrite Wiki template" wiki template row in the "List Templates" page
    Then The user navigates to the "List Templates" page
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Template                   | Can Edit | Can Copy | Can Delete | Default | In Use |
      | 5k Rewrite Wiki template   | true     | true     | true       | true    | No     |
      | FogBugz 8 Default Template | false    | true     | false      | false   | Yes    |
