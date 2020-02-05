@NotAutomated
@JIRA-Key-MANUSCRIPT-31572
@Search
Feature: Search - Case - Status

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status                      | Opened By     |
      | 18   | Case-18 | Active                      | Administrator |
      | 19   | Case-19 | Active                      | Administrator |
      | 20   | Case-20 | Resolved (By Design)        | Administrator |
      | 21   | Case-21 | Resolved (Won't Fix)        | Administrator |
      | 22   | Case-22 | Resolved (Postponed)        | Administrator |
      | 23   | Case-23 | Resolved (Duplicate)        | Administrator |
      | 24   | Case-24 | Resolved (Not Reproducible) | Administrator |
      | 25   | Case-25 | Resolved (Fixed)            | Administrator |
      | 26   | Case-26 | Closed (By Design)          | Administrator |
      | 27   | Case-27 | Closed (Won't Fix)          | Administrator |
      | 28   | Case-28 | Closed (Postponed)          | Administrator |
      | 29   | Case-29 | Closed (Duplicate)          | Administrator |
      | 30   | Case-30 | Closed (Not Reproducible)   | Administrator |
      | 31   | Case-31 | Closed (Fixed)              | Administrator |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Status as Active
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status | Opened By     |
      | 18   | Case-18 | Active | Administrator |
      | 19   | Case-19 | Active | Administrator |
    Examples:
      | Search String   |
      | Status:Active   |
      | Status:"Active" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Partial name of status "Resolved"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status                      | Opened By     |
      | 20   | Case-20 | Resolved (By Design)        | Administrator |
      | 21   | Case-21 | Resolved (Won't Fix)        | Administrator |
      | 22   | Case-22 | Resolved (Postponed)        | Administrator |
      | 23   | Case-23 | Resolved (Duplicate)        | Administrator |
      | 24   | Case-24 | Resolved (Not Reproducible) | Administrator |
      | 25   | Case-25 | Resolved (Fixed)            | Administrator |
    Examples:
      | Search String      |
      | Status:Resolved    |
      | Status:"Resolved"  |
      | Status:"Resolved " |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Partial name of status "Closed"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status                    | Opened By     |
      | 26   | Case-26 | Closed (By Design)        | Administrator |
      | 27   | Case-27 | Closed (Won't Fix)        | Administrator |
      | 28   | Case-28 | Closed (Postponed)        | Administrator |
      | 29   | Case-29 | Closed (Duplicate)        | Administrator |
      | 30   | Case-30 | Closed (Not Reproducible) | Administrator |
      | 31   | Case-31 | Closed (Fixed)            | Administrator |
    Examples:
      | Search String    |
      | Status:Closed    |
      | Status:"Closed"  |
      | Status:"Closed " |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Status as Open
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status                      | Opened By     |
      | 18   | Case-18 | Active                      | Administrator |
      | 19   | Case-19 | Active                      | Administrator |
      | 20   | Case-20 | Resolved (By Design)        | Administrator |
      | 21   | Case-21 | Resolved (Won't Fix)        | Administrator |
      | 22   | Case-22 | Resolved (Postponed)        | Administrator |
      | 23   | Case-23 | Resolved (Duplicate)        | Administrator |
      | 24   | Case-24 | Resolved (Not Reproducible) | Administrator |
      | 25   | Case-25 | Resolved (Fixed)            | Administrator |
    Examples:
      | Search String |
      | Status:Open   |
      | Status:"Open" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (By Design)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status               | Opened By     |
      | 20   | Case-20 | Resolved (By Design) | Administrator |
    Examples:
      | Search String                 |
      | Status:Resolved (By Design)   |
      | Status:"Resolved (By Design)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (Won't Fix)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status               | Opened By     |
      | 21   | Case-21 | Resolved (Won't Fix) | Administrator |
    Examples:
      | Search String                 |
      | Status:Resolved (Won't Fix)   |
      | Status:"Resolved (Won't Fix)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (Postponed)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status               | Opened By     |
      | 22   | Case-22 | Resolved (Postponed) | Administrator |
    Examples:
      | Search String                 |
      | Status:Resolved (Postponed)   |
      | Status:"Resolved (Postponed)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (Duplicate)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status               | Opened By     |
      | 23   | Case-23 | Resolved (Duplicate) | Administrator |
    Examples:
      | Search String                 |
      | Status:Resolved (Duplicate)   |
      | Status:"Resolved (Duplicate)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (Not Reproducible)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status                      | Opened By     |
      | 24   | Case-24 | Resolved (Not Reproducible) | Administrator |
    Examples:
      | Search String                        |
      | Status:Resolved (Not Reproducible)   |
      | Status:"Resolved (Not Reproducible)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Resolved (Fixed)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status           | Opened By     |
      | 25   | Case-25 | Resolved (Fixed) | Administrator |
    Examples:
      | Search String             |
      | Status:Resolved (Fixed)   |
      | Status:"Resolved (Fixed)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (By Design)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status             | Opened By     |
      | 26   | Case-26 | Closed (By Design) | Administrator |
    Examples:
      | Search String               |
      | Status:Closed (By Design)   |
      | Status:"Closed (By Design)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (Won't Fix)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status             | Opened By     |
      | 27   | Case-27 | Closed (Won't Fix) | Administrator |
    Examples:
      | Search String               |
      | Status:Closed (Won't Fix)   |
      | Status:"Closed (Won't Fix)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (Postponed)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status             | Opened By     |
      | 28   | Case-28 | Closed (Postponed) | Administrator |
    Examples:
      | Search String               |
      | Status:Closed (Postponed)   |
      | Status:"Closed (Postponed)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (Duplicate)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status             | Opened By     |
      | 29   | Case-29 | Closed (Duplicate) | Administrator |
    Examples:
      | Search String               |
      | Status:Closed (Duplicate)   |
      | Status:"Closed (Duplicate)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (Not Reproducible)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status                    | Opened By     |
      | 30   | Case-30 | Closed (Not Reproducible) | Administrator |
    Examples:
      | Search String                      |
      | Status:Closed (Not Reproducible)   |
      | Status:"Closed (Not Reproducible)" |

  Scenario Outline: Administrator user can search cases with the specified status using "Status" axis: Full name of status "Closed (Fixed)"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status         | Opened By     |
      | 31   | Case-31 | Closed (Fixed) | Administrator |
    Examples:
      | Search String           |
      | Status:Closed (Fixed)   |
      | Status:"Closed (Fixed)" |
