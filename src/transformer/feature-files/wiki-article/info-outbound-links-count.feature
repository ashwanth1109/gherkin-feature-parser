@NotAutomated
@JIRA-Key-MANUSCRIPT-31273
@WikiArticle
Feature: Wiki article - Info - Outbound Links - Count

  Scenario: Administrator user can view count of outbound case links in wiki article using "Info" button
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To cases (1)" means "1" is the count of Outbound link
      | Name         |
      | To cases (1) |

  Scenario: The count of outbound case links shown by the wiki link groups matches the number of outbound links the wiki article
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To cases (1)" means "1" is the count of Outbound link
      | Name         |
      | To cases (1) |
    When The user expands the "To cases (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following case links are listed in the "To cases (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
    # NOTE: Here only one link is shown under the "Outbound" tree view, that matches the count shown by the wiki link group "To cases (1)"
      | Link Text                     | Destination Case ID |
      | Case 17: View Wiki Article W2 | 17                  |

  Scenario: Administrator user can view count of outbound wiki article links in wiki article using "Info" button
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To wiki articles (1)" means "1" is the count of Outbound link
      | Name                 |
      | To wiki articles (1) |

  Scenario: The count of outbound wiki article links shown by the wiki link groups matches the number of outbound links the wiki article
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To wiki articles (1)" means "1" is the count of Outbound link
      | Name                 |
      | To wiki articles (1) |
    When The user expands the "To wiki articles (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following wiki article links are listed in the "To wiki articles (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
    # NOTE: Here only one link is shown under the "Outbound" tree view, that matches the count shown by the wiki link group "To wiki articles (1)"
      | Link Text | Destination Wiki Article ID |
      | Article-3 | W3                          |

  Scenario: Administrator user can view count of outbound web links in wiki article using "Info" button
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To other (1)" means "1" is the count of Outbound link
      | Name          |
      | To others (1) |

  Scenario: The count of outbound web links shown by the wiki link groups matches the number of outbound links the wiki article
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
    # NOTE: The count of the Outbound links is represented by the number in braces. For example here "To other (1)" means "1" is the count of Outbound link
      | Name          |
      | To others (1) |
    When The user expands the "To others (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page
    Then The following web links are listed in the "To others (1)" wiki link group in the "Outbound" tree view in the "Wiki Article Info" page in following order:
    # NOTE: Here only one link is shown under the "Outbound" tree view, that matches the count shown by the wiki link group "To others (1)"
      | Link Text             | Destination Link      |
      | http://www.google.com | http://www.google.com |

  Scenario: Administrator user cannot view count of outbound project links in wiki article using "Info" button
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
    # NOTE: Here no link or number is shown under the outbound link category, which means that the count of project link added as outbound link in wiki articles is not shown in info page
      | Name   |
      | (None) |

  Scenario: Administrator user cannot view count of outbound email addresses in wiki article using "Info" button
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
    # NOTE: Here no link or number is shown under the outbound link category, which means that the count of email address added as outbound link in wiki articles is not shown in info page
      | Name   |
      | (None) |

