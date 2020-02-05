@NotAutomated
@JIRA-Key-MANUSCRIPT-31574
@Search
Feature: Search - Wiki Article - Wiki

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
      | Wiki-B |
    And The following wiki articles exist:
      | Page Title    | Description                | Created by    | Wiki   |
      | New Article 1 | This has not been written. | Administrator | Wiki-A |
      | New Article 2 | This has been written.     | Administrator | Wiki-B |
      | New Article 3 | This is being written.     | Administrator | Wiki-A |

  Scenario Outline: Administrator user can find wiki article in a wiki using "Wiki" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 2 | Wiki-B | Administrator  |
    Examples:
      | Search String                       |
      | wiki:"Wiki-B" title:New Article 2   |
      | wiki:"Wiki-B" title:"New Article 2" |
      | wiki:Wiki-B title:New Article 2     |
      | wiki:Wiki-B title:"New Article 2"   |
      | wiki:"B" title:New Article 2        |
      | wiki:"B" title:"New Article 2"      |
      | wiki:B title:New Article 2          |
      | wiki:B title:"New Article 2"        |

  Scenario Outline: Administrator user can list all the wiki articles in a wiki using "Wiki" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 1 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 3 | Wiki-A | Administrator  |
    Examples:
      | Search String |
      | wiki:"Wiki-A" |
      | wiki:Wiki-A   |
      | wiki:A        |
      | wiki:"A"      |
