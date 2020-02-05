@NotAutomated
@JIRA-Key-MANUSCRIPT-31565
@Search
Feature: Search - Case - AssignedTo

  Scenario: Administrator user can search cases assigned to the specified user using "AssignedTo" axis: Using first name of user
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | UserA Test | useratest@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Case | Title   | Status   | Assigned to   | Opened by     |
      | 17   | Case-17 | Active   | UserA Test    | Administrator |
      | 18   | Case-18 | Resolved | Administrator | Administrator |
      | 19   | Case-19 | Closed   | UserA Test    | Administrator |
    When The user searches for the "AssignedTo:UserA" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status | Opened By     |
      | 17   | Case-17 | Active | Administrator |
      | 19   | Case-19 | Closed | Administrator |

  Scenario: Administrator user can search cases assigned to the specified user using "AssignedTo" axis: Using full name of user
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | UserA Test | useratest@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Case | Title   | Status   | Assigned to   | Opened by     |
      | 17   | Case-17 | Active   | UserA Test    | Administrator |
      | 18   | Case-18 | Resolved | Administrator | Administrator |
      | 19   | Case-19 | Closed   | UserA Test    | Administrator |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search String           |
      | AssignedTo:"UserA Test" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status | Opened By     |
      | 17   | Case-17 | Active | Administrator |
      | 19   | Case-19 | Closed | Administrator |

  Scenario: Administrator user can search cases assigned to the administrator user using "AssignedTo" axis
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | UserA Test | useratest@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Case | Title   | Status   | Assigned to   | Opened by     |
      | 17   | Case-17 | Active   | UserA Test    | Administrator |
      | 18   | Case-18 | Resolved | Administrator | Administrator |
      | 19   | Case-19 | Closed   | UserA Test    | Administrator |
    When The user searches for the "AssignedTo:me" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     |
      | 18   | Case-18 | Resolved | Administrator |

  Scenario: Administrator user can search cases unassigned using "AssignedTo" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Assigned to   | Opened by     |
      | 17   | Case-17 | Active   | UserA Test    | Administrator |
      | 18   | Case-18 | Resolved | Administrator | Administrator |
      | 19   | Case-19 | Closed   | Unassigned    | Administrator |
    When The user searches for the "AssignedTo:me" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status | Opened By     |
      | 19   | Case-19 | Closed | Administrator |

