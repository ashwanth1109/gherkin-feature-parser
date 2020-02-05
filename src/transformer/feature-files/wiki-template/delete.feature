@JIRA-Key-MANUSCRIPT-28911
@WikiTemplate
Feature: Wiki template - Delete

  Scenario: Administrator can delete an existing Wiki template
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. |
    And The user navigates to the "List Templates" page
    When The user clicks the "Delete" button for the "Custom Wiki template" wiki template row in the "List Templates" page
    And The user is redirected to the "Delete Template" confirmation page
    And The user clicks the "Yes" button in the "Delete Template" confirmation page
    Then The user is redirected to the "List Templates" page
    And The deleted wiki template is not listed in the "List Templates" page
