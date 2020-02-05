@NotAutomated
@JIRA-Key-MANUSCRIPT-31274
@WikiArticle
Feature: Wiki article - Info - Inbound Links

  Scenario: Administrator user can view inbound links groups of wiki article using "Info" button: Case as inbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description       | Wiki   |
      | W4 | Article-4  | This is Article-4 | Wiki-A |
    And The following cases exist:
      | ID | Title                | Description  | Status | Assigned To   | Category |
      | 17 | View Wiki Article W4 | View Wiki W4 | Active | Administrator | Bug      |
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-4" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Inbound  |
      | Outbound |
    And The following wiki link types are listed in the "Inbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name           |
      | From cases (1) |

  Scenario: Administrator user can view inbound links of wiki article using "Info" button: Case as inbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description       | Wiki   |
      | W4 | Article-4  | This is Article-4 | Wiki-A |
    And The following cases exist:
      | ID | Title                | Description  | Status | Assigned To   | Category |
      | 17 | View Wiki Article W4 | View Wiki W4 | Active | Administrator | Bug      |
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-4" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Inbound  |
      | Outbound |
    And The following wiki link types are listed in the "Inbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name           |
      | From cases (1) |
    When The user expands the "From cases (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page
    Then The following case links are listed in the "From cases (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page in following order:
      | Link Text                     | Destination Case ID |
      | Case 17: View Wiki Article W4 | 17                  |

  Scenario: Administrator user can view inbound link groups of wiki article using "Info" button: Wiki article as inbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
      | W3 | Article-3  | This is Article-3. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text      | Destination Wiki Article ID |
      | W3              | View Article-2 | W2                          |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-4" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Inbound  |
      | Outbound |
    And The following wiki link types are listed in the "Inbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name                   |
      | From wiki articles (1) |

  Scenario: Administrator user can view inbound link of wiki article using "Info" button: Wiki article as inbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
      | W3 | Article-3  | This is Article-3. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text      | Destination Wiki Article ID |
      | W3              | View Article-2 | W2                          |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-4" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Inbound  |
      | Outbound |
    And The following wiki link types are listed in the "Inbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name                   |
      | From wiki articles (1) |
    When The user expands the "From wiki articles (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page
    Then The following wiki article links are listed in the "From wiki articles (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page in following order:
      | Link Text | Destination Wiki Article ID |
      | Article-3 | W3                          |
