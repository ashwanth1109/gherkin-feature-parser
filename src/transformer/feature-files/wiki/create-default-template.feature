@NotAutomated
@JIRA-Key-MANUSCRIPT-29674
@Wiki
Feature: Wiki - Create - Default template

  Scenario: Administrator can create a new Wiki: The "Template" property is set to the default Wiki template
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template             | HTML                             | CSS                                | Change          | Default |
      | Custom Wiki template | <div id="container">Custom</div> | span.Arial { font-family: Arial; } | Custom version. | true    |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    When The user clicks the "New Wiki" link in the "Manage Wikis" page
    Then The "New Wiki" page is shown
    And The "Template" dropdown has the "Custom Wiki template" option selected in the "New Wiki" page
