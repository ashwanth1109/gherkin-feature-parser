@NotAutomated
@JIRA-Key-MANUSCRIPT-31569
@Search
Feature: Search - Case - Milestone

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title          | Status   | Milestone         | Opened By     |
      | 26   | Milestone      | Active   | Configure further | Administrator |
      | 27   | Add Users      | Closed   | Configure further | Administrator |
      | 28   | Edit Milestone | Resolved | Intro to FogBugz  | Administrator |
      | 29   | Edit Group     | Active   | Intro to FogBugz  | Administrator |
      | 30   | Delete Group   | Resolved | More resources    | Administrator |

  Scenario: Administrator user cases in the specified milestone using "Milestone" axis
    When The user searches for the "Milestone:Configure further" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 26   | Milestone | Active | Administrator |
      | 27   | Add Users | Closed | Administrator |

  Scenario: Administrator user can search for multiple cases matching the specified milestone in search field using "Milestone" axis separated by "OR"
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis                                       |
      | Milestone:"Intro to FogBugz" or Milestone:"More resources" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    And The following cases exist:
      | Case | Title          | Status   | Opened By     |
      | 29   | Edit Group     | Active   | Administrator |
      | 28   | Edit Milestone | Resolved | Administrator |
      | 30   | Delete Group   | Resolved | Administrator |
