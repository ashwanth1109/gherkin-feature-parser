@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29692
@Case
Feature: Case - Edit - Enable Add Subscribers

  Scenario Outline: Administrator can add subscribers to an active case on "Edit Active Case" page when add subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "Edit Active Case" page
    And The user selects the following users from the "Add Subscriber" dropdown in the "Edit Active Case" page:
       | Test UserA |
    And The "Add Subscriber" dropdown is closed
    And The user clicks the "Save" button
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
       | Test UserA |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator can add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "Edit Resolved Case" page
    And The user selects the following users from the "Add Subscriber" dropdown in the "Edit Resolved Case" page:
       | Test UserA |
    And The "Add Subscriber" dropdown is closed
    And The user clicks the "Save" button
    Then The "View Resolved Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Resolved Case" page:
       | Test UserA |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Closed |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page
    And The "Edit Closed Case" page is shown
    And The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page
    And The user clicks the "Save" button
    Then The "View Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Closed Case" page:
       |  Subscriber  |
       |              |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot add subscribers to an active case on "Edit Active Case" page when add subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                                |
       | The case page will not show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page
    And The "Edit Active Case" page is shown
    And The "Add Subscriber" dropdown is not shown in the "Edit Active Case" page
    And The user clicks the "Save" button
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
       |  Subscriber  |
       |              |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                                |
       | The case page will not show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    And The "Add Subscriber" dropdown is not shown in the "Edit Resolved Case" page
    And The user clicks the "Save" button
    Then The "View Resolved Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Resolved Case" page:
       |  Subscriber  |
       |              |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                                |
       | The case page will not show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Closed |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page
    And The "Edit Closed Case" page is shown
    And The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page
    And The user clicks the "Save" button
    Then The "View Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Closed Case" page:
       |  Subscriber  |
       |              |
    Examples:
      | Location  |
      | top       |
      | bottom    |
