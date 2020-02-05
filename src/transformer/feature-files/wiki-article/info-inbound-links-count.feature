@NotAutomated
@JIRA-Key-MANUSCRIPT-31275
@WikiArticle
Feature: Wiki article - Info - Inbound Links - Count

  Scenario: Administrator user can view count of inbound case links in wiki article using "Info" button
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
    # NOTE: The count of the Inbound links is represented by the number in braces. For example here "From cases (1)" means "1" is the count of inbound links
      | Name           |
      | From cases (1) |

  Scenario: The count of inbound case links shown by the wiki link groups matches the number of inbound links the wiki article
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
    # NOTE: The count of the Inbound links is represented by the number in braces. For example here "From cases (1)" means "1" is the count of inbound links
      | Name           |
      | From cases (1) |
    When The user expands the "From cases (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page
    Then The following case links are listed in the "From cases (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page in following order:
    # NOTE: Here only one link is shown under the "Inbound" tree view, that matches the count shown by the wiki link group "From cases (1)"
      | Link Text                     | Destination Case ID |
      | Case 17: View Wiki Article W4 | 17                  |

  Scenario: Administrator user can view count of inbound wiki article links in wiki article using "Info" button
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
    # NOTE: The count of the Inbound links is represented by the number in braces. For example here "From wiki articles (1)" means "1" is the count of inbound link
      | Name                   |
      | From wiki articles (1) |

  Scenario: The count of inbound wiki article links shown by the wiki link groups matches the number of inbound links the wiki article
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
    # NOTE: The count of the Inbound links is represented by the number in braces. For example here "From wiki articles (1)" means "1" is the count of inbound link
      | Name                   |
      | From wiki articles (1) |
    When The user expands the "From wiki articles (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page
    Then The following wiki article links are listed in the "From wiki articles (1)" wiki link group in the "Inbound" tree view in the "Wiki Article Info" page in following order:
    # NOTE: Here only one link is shown under the "Inbound" tree view, that matches the count shown by the wiki link group "From wiki articles (1)"
      | Link Text | Destination Wiki Article ID |
      | Article-3 | W3                          |
