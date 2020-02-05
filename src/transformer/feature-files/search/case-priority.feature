@NotAutomated
@JIRA-Key-MANUSCRIPT-31570
@Search
Feature: Search - Case - Priority

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "1 - Must Fix"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 1 - Must Fix    |
      | 19   | Case-19 | Resolved | Administrator | 1 - Must Fix    |
      | 20   | Case-20 | Closed   | Administrator | 1 - Must Fix    |
      | 21   | Case-21 | Active   | Administrator | 2 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 4 - Fix If Time |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority     |
      | 18   | Case-18 | Active   | Administrator | 1 - Must Fix |
      | 19   | Case-19 | Resolved | Administrator | 1 - Must Fix |
      | 20   | Case-20 | Closed   | Administrator | 1 - Must Fix |
    Examples:
      | Search String |
      | Priority:1    |
      | Priority:"1"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "2 - Must Fix"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 2 - Must Fix    |
      | 19   | Case-19 | Resolved | Administrator | 2 - Must Fix    |
      | 20   | Case-20 | Closed   | Administrator | 2 - Must Fix    |
      | 21   | Case-21 | Active   | Administrator | 1 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 4 - Fix If Time |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority     |
      | 18   | Case-18 | Active   | Administrator | 2 - Must Fix |
      | 19   | Case-19 | Resolved | Administrator | 2 - Must Fix |
      | 20   | Case-20 | Closed   | Administrator | 2 - Must Fix |
    Examples:
      | Search String |
      | Priority:2    |
      | Priority:"2"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "3 - Must Fix"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-38 | Active   | Administrator | 3 - Must Fix    |
      | 19   | Case-39 | Resolved | Administrator | 3 - Must Fix    |
      | 20   | Case-20 | Closed   | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Active   | Administrator | 2 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 1 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 4 - Fix If Time |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority     |
      | 18   | Case-38 | Active   | Administrator | 3 - Must Fix |
      | 19   | Case-39 | Resolved | Administrator | 3 - Must Fix |
      | 20   | Case-20 | Closed   | Administrator | 3 - Must Fix |
    Examples:
      | Search String |
      | Priority:3    |
      | Priority:"3"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "4 - Fix If Time"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 4 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 4 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 4 - Fix If Time |
      | 21   | Case-21 | Active   | Administrator | 2 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 3 - Must Fix    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 4 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 4 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 4 - Fix If Time |
    Examples:
      | Search String |
      | Priority:4    |
      | Priority:"4"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "5 - Fix If Time"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 5 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 5 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 5 - Fix If Time |
      | 21   | Case-21 | Active   | Administrator | 2 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 3 - Must Fix    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 5 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 5 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 5 - Fix If Time |
    Examples:
      | Search String |
      | Priority:5    |
      | Priority:"5"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "6 - Fix If Time"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 6 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 6 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 6 - Fix If Time |
      | 21   | Case-21 | Active   | Administrator | 2 - Must Fix    |
      | 22   | Case-22 | Resolved | Administrator | 3 - Must Fix    |
      | 23   | Case-23 | Closed   | Administrator | 3 - Must Fix    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 6 - Fix If Time |
      | 19   | Case-19 | Resolved | Administrator | 6 - Fix If Time |
      | 20   | Case-20 | Closed   | Administrator | 6 - Fix If Time |
    Examples:
      | Search String |
      | Priority:6    |
      | Priority:"6"  |

  Scenario Outline: Administrator user can search cases with the specified priority using "Priority" axis: Priority "7 - Don't Fix"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Priority        |
      | 18   | Case-18 | Active   | Administrator | 7 - Don't Fix   |
      | 19   | Case-19 | Resolved | Administrator | 7 - Don't Fix   |
      | 20   | Case-20 | Closed   | Administrator | 7 - Don't Fix   |
      | 27   | Case-27 | Active   | Administrator | 5 - Fix If Time |
      | 22   | Case-22 | Resolved | Administrator | 6 - Fix If Time |
      | 23   | Case-23 | Closed   | Administrator | 4 - Fix If Time |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     | Priority      |
      | 18   | Case-18 | Active   | Administrator | 7 - Don't Fix |
      | 19   | Case-19 | Resolved | Administrator | 7 - Don't Fix |
      | 20   | Case-20 | Closed   | Administrator | 7 - Don't Fix |
    Examples:
      | Search String |
      | Priority:7    |
      | Priority:"7"  |
