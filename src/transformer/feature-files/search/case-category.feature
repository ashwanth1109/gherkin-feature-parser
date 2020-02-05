@NotAutomated
@JIRA-Key-MANUSCRIPT-31567
@Search
Feature: Search - Case - Category

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category      | Case | Title                | Status | Opened By     |
      | Bug           | 24   | Create Bug           | Active | Administrator |
      | Feature       | 25   | Create Feature       | Active | Administrator |
      | Inquiry       | 26   | Create Inquiry       | Active | Administrator |
      | Schedule Item | 27   | Create Schedule Item | Active | Administrator |

  Scenario Outline: Administrator user can search cases with the specified category using "Category" axis: Category as Bug
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | Case | Title      | Status | Opened By     |
      | Bug      | 24   | Create Bug | Active | Administrator |
    Examples:
      | Search String  |
      | Category:Bug   |
      | Category:"Bug" |

  Scenario Outline: Administrator user can search cases with the specified category using "Category" axis: Category as Feature
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | Case | Title          | Status | Opened By     |
      | Feature  | 25   | Create Feature | Active | Administrator |
    Examples:
      | Search String      |
      | Category:Feature   |
      | Category:"Feature" |

  Scenario Outline: Administrator user can search cases with the specified category using "Category" axis: Category as Inquiry
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | Case | Title          | Status | Opened By     |
      | Inquiry  | 26   | Create Inquiry | Active | Administrator |
    Examples:
      | Search String      |
      | Category:Inquiry   |
      | Category:"Inquiry" |

  Scenario Outline: Administrator user can search cases with the specified category using "Category" axis: Category as Schedule Item
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category      | Case | Title                | Status | Opened By     |
      | Schedule Item | 27   | Create Schedule Item | Active | Administrator |
    Examples:
      | Search String            |
      | Category:Schedule Item   |
      | Category:"Schedule Item" |
