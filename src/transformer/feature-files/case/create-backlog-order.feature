@NotAutomated
@JIRA-Key-MANUSCRIPT-31792
@Case
Feature: Case - Create - Backlog Order

  Scenario: When setting backlog order for a case in an empty milestone - the order is always set to 1
    Given The user is logged in as Administrator
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Backlog Order | Title |
      | 15            | C1    |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 1             | C1    |

  Scenario: When setting backlog order for a case in a non-empty milestone - the order is always set to the minimum
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Milestone               |
      | 17 | C1    | 1             | All projects: Undecided |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title | Backlog Order | Milestone               |
      | C2    | 15            | All projects: Undecided |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 1             | C1    |
      | 2             | C2    |

  Scenario: When setting backlog order less than of existing cases the cases are shifted
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Milestone               |
      | 17 | C1    | 1             | All projects: Undecided |
      | 18 | C2    | 2             | All projects: Undecided |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title | Backlog Order | Milestone               |
      | C3    | 1             | All projects: Undecided |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 1             | C3    |
      | 2             | C1    |
      | 3             | C2    |

  Scenario: Not more than 3 items are shown in backlog order field in the case page
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Milestone               |
      | 17 | C1    | 1             | All projects: Undecided |
      | 18 | C2    | 2             | All projects: Undecided |
      | 19 | C3    | 3             | All projects: Undecided |
      | 20 | C4    | 4             | All projects: Undecided |
    When The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 1             | C1    |
      | 2             | C2    |
    And The user searches for the "18" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 1             | C1    |
      | 2             | C2    |
      | 3             | C3    |
    And The user searches for the "20" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      | 3             | C3    |
      | 4             | C4    |

  Scenario: User can navigate between cases using backlog order links
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Milestone               |
      | 17 | C1    | 1             | All projects: Undecided |
      | 18 | C2    | 2             | All projects: Undecided |
      | 19 | C3    | 3             | All projects: Undecided |
    When The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "2: C2" link in the "Backlog Order" field in the "View Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title |
      | 18 | C2    |

  Scenario: Negative backlog order is equal to not having a backlog order
    Given The user is logged in as Administrator
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Backlog Order | Title |
      | -15           | C1    |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      |               |       |

  Scenario: Non numerical values are not allowed in the backlog order field
    Given The user is logged in as Administrator
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    When The user enters the case details in the "New Case" page:
      | Backlog Order | Title |
      | A.cB          | C1    |
    Then The following case details are shown in the "New Case" page:
      | Backlog Order |
      |               |

  Scenario: Float numbers are not allowed in the backlog order field
    Given The user is logged in as Administrator
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Backlog Order | Title |
      | 1.5           | C1    |
    When The user clicks the "Open" button in the "New Case" page
    Then The "Whoops! It seems something has gone wrong." error message is shown in the "New Case" page

  Scenario: Backlog order greater than 100 is not allowed
    Given The user is logged in as Administrator
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Backlog Order | Title |
      | 101           | C1    |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      |               |       |
