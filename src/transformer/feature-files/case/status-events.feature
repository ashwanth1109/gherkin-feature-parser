@NotAutomated
@JIRA-Key-MANUSCRIPT-31793
@Case
Feature: Case - Status Events

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title         | Status   | Category      |
      | 17 | A             | Active   | Bug           |
      | 18 | R             | Resolved | Bug           |
      | 19 | C             | Closed   | Bug           |
      | 20 | FeatureR      | Resolved | Feature       |
      | 21 | FeatureA      | Active   | Feature       |
      | 22 | FeatureC      | Closed   | Feature       |
      | 23 | InquiryR      | Resolved | Inquiry       |
      | 24 | InquiryA      | Active   | Inquiry       |
      | 25 | InquiryC      | Closed   | Inquiry       |
      | 26 | ScheduleItemR | Resolved | Schedule Item |
      | 27 | ScheduleItemA | Active   | Schedule Item |
      | 28 | ScheduleItemC | Closed   | Schedule Item |

  Scenario: Opening a case creates a case event
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content | User          | Date                            |
      | Opened By |         | Administrator | "Current time within 5 minutes" |

  Scenario Outline: Resolving a case creates a case event
    And The user searches for the "<Case ID>" search string by using the search box
    When The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "Resolve" button in the "Edit Resolved Case" page
    Then The user is redirected to the "View Resolved Case" page
    And The following case events are listed in the "View Resolved Case" page in the following order:
      | Type                            | Content                                                        | User          | Date                            |
      | Resolved (<Resolution Name>) By | Status changed from 'Active' to 'Resolved (<Resolution Name>)' | Administrator | "Current time within 5 minutes" |
    Examples:
      | Case ID | Resolution Name |
      | 17      | Fixed           |
      | 21      | Implemented     |
      | 24      | Responded       |
      | 27      | Completed       |

  Scenario: Closing a bug creates a case event
    And The user searches for the "18" search string by using the search box
    When The user clicks the "Close" button in the "View Resolved Case" page
    And The user clicks the "Close" button in the "Edit Closed Case" page
    And The user searches for the "18" search string by using the search box
    Then The user is redirected to the "View Closed Case" page
    And The following case events are listed in the "View Closed Case" page in the following order:
      | Type      | Content | User          | Date                            |
      | Closed By |         | Administrator | "Current time within 5 minutes" |

  Scenario Outline: Reopening a bug creates a case event
    And The user searches for the "<Case ID>" search string by using the search box
    When The user clicks the "Reopen" button in the "View Closed Case" page
    And The user clicks the "Reopen" button in the "Edit Resolved Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type        | Content                                                        | User          | Date                            |
      | Reopened By | Status changed from 'Resolved (<Resolution Name>)' to 'Active' | Administrator | "Current time within 5 minutes" |
    Examples:
      | Case ID | Resolution Name |
      | 19      | Fixed           |
      | 22      | Implemented     |
      | 25      | Responded       |
      | 28      | Completed       |

  Scenario Outline: Reactivating a bug creates a case event
    And The user searches for the "<Case ID>" search string by using the search box
    When The user clicks the "Reactivate" button in the "View Resolved Case" page
    And The user clicks the "Reactivate" button in the "Edit Resolved Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type           | Content                                                        | User          | Date                            |
      | Reactivated by | Status changed from 'Resolved (<Resolution Name>)' to 'Active' | Administrator | "Current time within 5 minutes" |
    Examples:
      | Case ID | Resolution Name |
      | 18      | Fixed           |
      | 20      | Implemented     |
      | 23      | Responded       |
      | 26      | Completed       |
