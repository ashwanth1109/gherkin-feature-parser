@NotAutomated
@JIRA-Key-MANUSCRIPT-31467
@Planner
Feature: Planner - Kanban - Case - Actions - Change Category

  Background:
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    And The following cases exist:
      | ID | Title         | Status   | Project | Milestone | Category      |
      | 17 | BugR          | Resolved | Ninja   | Hurricane | Bug           |
      | 18 | BugA          | Active   | Ninja   | Hurricane | Bug           |
      | 19 | FeatureR      | Resolved | Ninja   | Hurricane | Feature       |
      | 20 | FeatureA      | Active   | Ninja   | Hurricane | Feature       |
      | 21 | InquiryR      | Resolved | Ninja   | Hurricane | Inquiry       |
      | 22 | InquiryA      | Active   | Ninja   | Hurricane | Inquiry       |
      | 23 | ScheduleItemR | Resolved | Ninja   | Hurricane | Schedule Item |
      | 24 | ScheduleItemA | Active   | Ninja   | Hurricane | Schedule Item |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown

  Scenario Outline: Change active bug category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "BugA" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title | Category         |
      | 18 | BugA  | <Other Category> |
    And The user clicks the "BugA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title | Category         |
      | 18 | BugA  | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Inquiry        |
      | Schedule Item  |

  Scenario Outline: Change active feature category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "FeatureA" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title    | Category         |
      | 21 | FeatureA | <Other Category> |
    And The user clicks the "FeatureA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title    | Category         |
      | 21 | FeatureA | <Other Category> |
    Examples:
      | Other Category |
      | Bug            |
      | Inquiry        |
      | Schedule Item  |

  Scenario Outline: Change active inquiry category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "InquiryA" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title    | Category         |
      | 24 | InquiryA | <Other Category> |
    And The user clicks the "InquiryA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title    | Category         |
      | 24 | InquiryA | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Bug            |
      | Schedule Item  |

  Scenario Outline: Change active schedule item category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "ScheduleItemA" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title         | Category         |
      | 27 | ScheduleItemA | <Other Category> |
    And The user clicks the "ScheduleItemA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title         | Category         |
      | 27 | ScheduleItemA | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Inquiry        |
      | Bug            |

  Scenario Outline: Change resolved bug category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "BugR" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "<Status>" section in the "Planned Cases" column:
      | ID | Title | Category         |
      | 17 | BugR  | <Other Category> |
    And The user clicks the "BugR" case in the "Planned Cases" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title | Category         | Status   |
      | 17 | BugR  | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Inquiry        | Resolved (Responded)   |
      | Schedule Item  | Resolved (Completed)   |

  Scenario Outline: Change resolved feature category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "FeatureR" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title    | Category         |
      | 20 | FeatureR | <Other Category> |
    And The user clicks the "FeatureR" case in the "Planned Cases" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title    | Category         | Status   |
      | 20 | FeatureR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status               |
      | Bug            | Resolved (Fixed)     |
      | Inquiry        | Resolved (Responded) |
      | Schedule Item  | Resolved (Completed) |

  Scenario Outline: Change resolved inquiry category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "InquiryR" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title    | Category         |
      | 23 | InquiryR | <Other Category> |
    And The user clicks the "InquiryR" case in the "Planned Cases" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title    | Category         | Status   |
      | 23 | InquiryR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Bug            | Resolved (Fixed)       |
      | Schedule Item  | Resolved (Completed)   |

  Scenario Outline: Change resolved schedule item category through action dropdown in kanban
    When The user clicks the "Quick Edit" button for the "ScheduleItemR" case in the "Planned Cases" column
    And The user clicks the "Change Category" item in the "Quick Edit" dropdown
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title         | Category         |
      | 26 | ScheduleItemR | <Other Category> |
    And The user clicks the "ScheduleItemR" case in the "Planned Cases" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title         | Category         | Status   |
      | 26 | ScheduleItemR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Inquiry        | Resolved (Responded)   |
      | Bug            | Resolved (Fixed)       |
