@NotAutomated
@JIRA-Key-MANUSCRIPT-32187
@Schedule
Feature: Schedule - Time Tracking - Case search

  Scenario Outline: User can search cases from time tracking menu by id or title
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title                      |
      | 17   | Case in onboarding project |
      | 18   | Another                    |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "<Term>" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title   |
      | 18 | Another |
    Examples:
      | Term    |
      | 18      |
      | Another |

  Scenario Outline: No results are shown when less than 3 letters is typed in time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "<Term>" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title |
      |    |       |
    Examples:
      | Term |
      | A    |
      | An   |
      | Ano  |

  Scenario: Results are shown when 4 letters are typed in time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title   |
      | 17 | Another |

  Scenario: Cases from projects that user has no access to are not found in time tracking menu case search
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The following cases exist:
      | Case | Title   | Project |
      | 17   | Another | Ninja   |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title |
      |    |       |

  Scenario: Cases from project area SPAM are not visible in time tracking menu case search
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following cases exist:
      | Case | Title        | Project | Project Area | Milestone |
      | 17   | probablyspam | Inbox   | Spam         | Undecided |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "probablyspam" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title |
      |    |       |

  Scenario: Active cases are shown first in time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title    | Status   |
      | 17   | AnotherR | Resolved |
      | 18   | AnotherA | Active   |
      | 19   | AnotherC | Closed   |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title    |
      | 18 | AnotherA |
      | 19 | AnotherC |
      | 17 | AnotherR |

  Scenario: Most recently changed cases are shown first in time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     |
      | 17   | Another17 |
      | 18   | Another18 |
      | 19   | Another19 |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title     |
      | 19 | Another19 |
      | 18 | Another18 |
      | 17 | Another17 |

  Scenario: Only 15 cases are shown in time tracking menu case search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title                      |
      | 17   | Case in onboarding project |
      | 18   | Another 18                 |
      | 19   | Another 19                 |
      | 20   | Another 20                 |
      | 21   | Another 21                 |
      | 22   | Another 22                 |
      | 23   | Another 23                 |
      | 24   | Another 24                 |
      | 25   | Another 25                 |
      | 26   | Another 26                 |
      | 27   | Another 27                 |
      | 28   | Another 28                 |
      | 29   | Another 29                 |
      | 30   | Another 30                 |
      | 31   | Another 31                 |
      | 32   | Another 32                 |
      | 33   | Another 33                 |
      | 34   | Another 34                 |
      | 35   | Another 35                 |
      | 36   | Another 36                 |
      | 37   | Another 37                 |
      | 38   | Another 38                 |
      | 39   | Another 39                 |
      | 40   | Another 40                 |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "Case # ..." menu item in the "Change Working To" section in the sidebar menu
    And The user enters the "Anot" search string in the sidebar menu
    Then The following cases are listed in the "Case # ..." dropdown in the "Change Working To" section in the sidebar menu:
      | ID | Title      |
      | 32 | Another 32 |
      | 31 | Another 31 |
      | 30 | Another 30 |
      | 29 | Another 29 |
      | 28 | Another 28 |
      | 27 | Another 27 |
      | 26 | Another 26 |
      | 25 | Another 25 |
      | 24 | Another 24 |
      | 23 | Another 23 |
      | 22 | Another 22 |
      | 21 | Another 21 |
      | 20 | Another 20 |
      | 19 | Another 19 |
      | 18 | Another 18 |
