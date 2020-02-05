@NotAutomated
@JIRA-Key-MANUSCRIPT-31573
@Search
Feature: Search - Case - Story Points

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Opened By     | Story Points |
      | 18   | Case-18 | Active   | Administrator | 2            |
      | 19   | Case-19 | Resolved | Administrator | 3            |
      | 20   | Case-20 | Active   | Administrator | 2            |
      | 21   | Case-21 | Active   | Administrator | 5            |

  Scenario Outline: Administrator user can search cases with the specified story point value using "StoryPoints" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status | Opened By     |
      | 18   | Case-18 | Active | Administrator |
      | 20   | Case-20 | Active | Administrator |
    Examples:
      | Search String   |
      | StoryPoints:2   |
      | StoryPoints:"2" |

  Scenario Outline: Administrator user can search for multiple cases matching the specified story point value in search field using "StoryPoints" axis separated by "OR"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    And The following cases exist:
      | Case | Title   | Status   | Opened By     |
      | 21   | Case-21 | Active   | Administrator |
      | 19   | Case-19 | Resolved | Administrator |
    Examples:
      | Search String                      |
      | StoryPoints:"3" or StoryPoints:"5" |
      | StoryPoints:3 or StoryPoints:5     |

  Scenario Outline: Administrator user can search cases with story point value that falls into a given range using "StoryPoints" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title   | Status   | Opened By     |
      | 18   | Case-18 | Active   | Administrator |
      | 20   | Case-20 | Active   | Administrator |
      | 19   | Case-19 | Resolved | Administrator |
    Examples:
      | Search String      |
      | StoryPoints:..3    |
      | StoryPoints:...3   |
      | StoryPoints:"..3"  |
      | StoryPoints:"...3" |
