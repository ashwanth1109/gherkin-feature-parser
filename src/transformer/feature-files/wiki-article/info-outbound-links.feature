@NotAutomated
@JIRA-Key-MANUSCRIPT-31272
@WikiArticle
Feature: Wiki article - Info - Outbound Links

  Scenario: Administrator user can view outbound links groups of wiki article using "Info" button: Case as outbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text    | Destination Case ID |
      | W2              | View Case-17 | 17                  |
    And The following cases exist:
      | ID | Title         | Description                   | Status |
      | 17 | Update a Case | This is a high priority case. | Active |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name         |
      | To cases (1) |

  Scenario: Administrator user can view outbound links of wiki article using "Info" button: Case as outbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text    | Destination Case ID |
      | W2              | View Case-17 | 17                  |
    And The following cases exist:
      | ID | Title         | Description                   | Status |
      | 17 | Update a Case | This is a high priority case. | Active |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name         |
      | To cases (1) |
    When The user expands the "To cases (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following case links are listed in the "To cases (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
      | Link Text                     | Destination Case ID |
      | Case 17: View Wiki Article W2 | 17                  |

  Scenario: Administrator user can view Outbound link groups of wiki article using "Info" button: Wiki article as outbound link
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
      | W2              | View Article-3 | W3                          |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name                 |
      | To wiki articles (1) |

  Scenario: Administrator user can view Outbound link of wiki article using "Info" button: Wiki article as outbound link
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
      | W2              | View Article-3 | W3                          |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name                 |
      | To wiki articles (1) |
    When The user expands the "To wiki articles (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following wiki article links are listed in the "To wiki articles (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
      | Link Text | Destination Wiki Article ID |
      | Article-3 | W3                          |

  Scenario: Administrator user can view outbound link groups of wiki article using "Info" button: External web link as outbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text        | Destination Link |
      | W2              | Search on Google | wwww.google.com  |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name          |
      | To others (1) |

  Scenario: Administrator user can view outbound links of wiki article using "Info" button: External web link as outbound link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text        | Destination Link |
      | W2              | Search on Google | wwww.google.com  |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
      | Name          |
      | To others (1) |
    When The user expands the "To others (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following web links are listed in the "To others (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
      | Link Text             | Destination Link      |
      | http://www.google.com | http://www.google.com |

  Scenario: Administrator user cannot view outbound links of wiki article using "Info" button: Project as outbound Link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text                | Destination Project |
      | W2              | Please see Project Inbox | Inbox               |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
     # NOTE: Here no link is shown under the outbound link category, which means that user cannot view email address added as outbound link in wiki articles in info page
      | Name   |
      | (None) |

  Scenario: Administrator user cannot view outbound links of wiki article using "Info" button: Email address as outbound Link
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text    | Destination Email Address |
      | W2              | Send Mail to | testusera@test.com        |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    Then The user is redirected to the "Wiki Article Info" page
    And The "Links" section is shown in the "Wiki Article Info" page
    And The following wiki link directions are listed in the "Links" section in the "Wiki Article Info" page:
      | Name     |
      | Outbound |
      | Inbound  |
    And The following wiki link types are listed in the "Outbound" tree view in the "Links" section in the "Wiki Article Info" page:
     # NOTE: Here no link is shown under the outbound link category, which means that user cannot view email address added as outbound link in wiki articles in info page
      | Name   |
      | (None) |
