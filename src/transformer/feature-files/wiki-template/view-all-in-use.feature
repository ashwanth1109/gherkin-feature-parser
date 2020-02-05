@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31176
@WikiTemplate
Feature: Wiki template - View all - In use

  Background:
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template       | HTML                                     | CSS                                  | Change   |
      | Ticket machine | <div id="container">Ticket machine</div> | span.Tahoma { font-family: Tahoma; } | Initial. |

  Scenario: Administrator view all existing Wiki templates: "In use": Template is not used by Wiki: "In use" is false: "Can delete" is true
    When The user navigates to the "List Templates" page
    Then The "List Templates" page is shown
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | true       | false   | Ticket machine             | No     |

  Scenario: Administrator view all existing Wiki templates: "In use": Template is used by Wiki: "In use" is true: "Can delete" is false
    Given The following wikis exist:
      | Wiki                | Template       |
      | Ticket machine Wiki | Ticket machine |
    When The user navigates to the "List Templates" page
    Then The "List Templates" page is shown
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | false      | false   | Ticket machine             | Yes    |

  Scenario: Administrator view all existing Wiki templates: "In use": Template has become unused by Wiki: "In use" is false: "Can delete" is true
    Given The following wikis exist:
      | Wiki                | Template       |
      | Ticket machine Wiki | Ticket machine |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "Ticket machine Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user enters the wiki details in the "Edit Wiki" page:
      | Template                   |
      | FogBugz 8 Default Template |
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The user navigates to the "List Templates" page
    And The "List Templates" page is shown
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | true       | false   | Ticket machine             | No     |

  Scenario: Administrator view all existing Wiki templates: "In use": Template has become used by Wiki: "In use" is true: "Can delete" is false
    Given The following wikis exist:
      | Wiki                | Template                   |
      | Ticket machine Wiki | FogBugz 8 Default Template |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "Ticket machine Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user enters the wiki details in the "Edit Wiki" page:
      | Template       |
      | Ticket machine |
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The user navigates to the "List Templates" page
    And The "List Templates" page is shown
    And The following wiki templates are listed in the "Templates" table in the "List Templates" page in the following order:
      | Can Edit | Can Copy | Can Delete | Default | Template                   | In Use |
      | false    | true     | false      | true    | FogBugz 8 Default Template | Yes    |
      | true     | true     | false      | false   | Ticket machine             | Yes    |
