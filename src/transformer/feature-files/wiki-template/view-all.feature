@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29695
@WikiTemplate
Feature: Wiki template - View all

  Scenario: Administrator view all existing Wiki templates
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template            | HTML                                     | CSS                                      | Change           |
      | Alpha               | <div id="container">Alpha!</div>         | span.Terminal { font-family: Terminal; } | First version.   |
      | cases lowercase     | <div id="container">cases</div>          | span.arial { font-family: arial; }       | initial version. |
      | Cases Wiki template | <div id="container">Cases</div>          | span.Arial { font-family: Arial; }       | Initial version. |
      | Ticket machine      | <div id="container">Ticket machine</div> | span.Tahoma { font-family: Tahoma; }     | Initial.         |
    When The user navigates to the "List Templates" page
    Then The "List Templates" page is shown
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Template                   | Can Edit | Can Copy | Can Delete | Default | In Use |
      | Alpha                      | true     | true     | true       | false   | No     |
      | cases lowercase            | true     | true     | true       | false   | No     |
      | Cases Wiki template        | true     | true     | true       | false   | No     |
      | FogBugz 8 Default Template | false    | true     | false      | true    | Yes    |
      | Ticket machine             | true     | true     | true       | false   | No     |
