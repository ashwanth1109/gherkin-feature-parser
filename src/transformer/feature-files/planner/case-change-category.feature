@NotAutomated
@JIRA-Key-MANUSCRIPT-31032
@Planner
Feature: Planner - Case - Change Category

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
      | 19 | BugC          | Closed   | Ninja   | Hurricane | Bug           |
      | 20 | FeatureR      | Resolved | Ninja   | Hurricane | Feature       |
      | 21 | FeatureA      | Active   | Ninja   | Hurricane | Feature       |
      | 22 | FeatureC      | Closed   | Ninja   | Hurricane | Feature       |
      | 23 | InquiryR      | Resolved | Ninja   | Hurricane | Inquiry       |
      | 24 | InquiryA      | Active   | Ninja   | Hurricane | Inquiry       |
      | 25 | InquiryC      | Closed   | Ninja   | Hurricane | Inquiry       |
      | 26 | ScheduleItemR | Resolved | Ninja   | Hurricane | Schedule Item |
      | 27 | ScheduleItemA | Active   | Ninja   | Hurricane | Schedule Item |
      | 28 | ScheduleItemC | Closed   | Ninja   | Hurricane | Schedule Item |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |

  Scenario Outline: Change active bug category in planners
    When The user clicks the "Category" icon for the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Category         |
      | 18 | BugA  | <Other Category> |
    And The user clicks the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title | Category         |
      | 18 | BugA  | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Inquiry        |
      | Schedule Item  |

  Scenario Outline: Change active feature category in planners
    When The user clicks the "Category" icon for the "FeatureA" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title    | Category         |
      | 21 | FeatureA | <Other Category> |
    And The user clicks the "FeatureA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title    | Category         |
      | 21 | FeatureA | <Other Category> |
    Examples:
      | Other Category |
      | Bug            |
      | Inquiry        |
      | Schedule Item  |

  Scenario Outline: Change active inquiry category in planners
    When The user clicks the "Category" icon for the "InquiryA" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title    | Category         |
      | 24 | InquiryA | <Other Category> |
    And The user clicks the "InquiryA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title    | Category         |
      | 24 | InquiryA | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Bug            |
      | Schedule Item  |

  Scenario Outline: Change active schedule item category in planners
    When The user clicks the "Category" icon for the "ScheduleItemA" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title         | Category         |
      | 27 | ScheduleItemA | <Other Category> |
    And The user clicks the "ScheduleItemA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title         | Category         |
      | 27 | ScheduleItemA | <Other Category> |
    Examples:
      | Other Category |
      | Feature        |
      | Inquiry        |
      | Bug            |

  Scenario: User cannot change category of a closed bug in planners
    When The user clicks the "Category" icon for the "BugC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Change Category" dropdown is not shown for the "BugC" case in the "Hurricane" milestone in the "Planner" page

  Scenario: User cannot change category of a closed feature in planners
    When The user clicks the "Category" icon for the "FeatureC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Change Category" dropdown is not shown for the "FeatureC" case in the "Hurricane" milestone in the "Planner" page

  Scenario: User cannot change category of a closed inquiry in planners
    When The user clicks the "Category" icon for the "InquiryC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Change Category" dropdown is not shown for the "InquiryC" case in the "Hurricane" milestone in the "Planner" page

  Scenario: User cannot change category of a closed schedule item in planners
    When The user clicks the "Category" icon for the "ScheduleItemC" case in the "Hurricane" milestone in the "Planner" page
    Then The "Change Category" dropdown is not shown for the "ScheduleItemC" case in the "Hurricane" milestone in the "Planner" page

  Scenario Outline: Change resolved bug category in planners
    When The user clicks the "Category" icon for the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "<Status>" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Category         |
      | 17 | BugR  | <Other Category> |
    And The user clicks the "BugR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title | Category         | Status   |
      | 17 | BugR  | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Inquiry        | Resolved (Responded)   |
      | Schedule Item  | Resolved (Completed)   |

  Scenario Outline: Change resolved feature category in planners
    When The user clicks the "Category" icon for the "FeatureR" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "<Status>" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title    | Category         |
      | 20 | FeatureR | <Other Category> |
    And The user clicks the "FeatureR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title    | Category         | Status   |
      | 20 | FeatureR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status               |
      | Bug            | Resolved (Fixed)     |
      | Inquiry        | Resolved (Responded) |
      | Schedule Item  | Resolved (Completed) |

  Scenario Outline: Change resolved inquiry category in planners
    When The user clicks the "Category" icon for the "InquiryR" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "<Status>" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title    | Category         |
      | 23 | InquiryR | <Other Category> |
    And The user clicks the "InquiryR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title    | Category         | Status   |
      | 23 | InquiryR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Bug            | Resolved (Fixed)       |
      | Schedule Item  | Resolved (Completed)   |

  Scenario Outline: Change resolved schedule item category in planners
    When The user clicks the "Category" icon for the "ScheduleItemR" case in the "Hurricane" milestone in the "Planner" page
    And The user selects the "<Other Category>" option from the "Change Category" dropdown
    Then The following cases are shown in the "<Status>" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title         | Category         |
      | 26 | ScheduleItemR | <Other Category> |
    And The user clicks the "ScheduleItemR" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title         | Category         | Status   |
      | 26 | ScheduleItemR | <Other Category> | <Status> |
    Examples:
      | Other Category | Status                 |
      | Feature        | Resolved (Implemented) |
      | Inquiry        | Resolved (Responded)   |
      | Bug            | Resolved (Fixed)       |
