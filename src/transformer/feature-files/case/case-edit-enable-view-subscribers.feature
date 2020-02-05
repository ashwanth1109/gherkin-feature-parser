@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29699
@Case
Feature: Case - Edit - Enable View Subscribers

  Scenario Outline: Administrator can view subscriber of an active case on "Edit Active Case" page when show subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Active   | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page
    Then The "Edit Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Active Case" page:
       | Test UserA |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator can view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved   | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page
    Then The "Edit Resolved Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Resolved Case" page:
       | Test UserA |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator can view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status  | Subscriber |
       | 16   | New Case to handle | Closed  | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page
    Then The "Edit Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Closed Case" page:
       | Test UserA |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot view subscriber of an active case on "Edit Active Case" page when show subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page
    Then The "Edit Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Active Case" page:
       | Subscribers |
       |             |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page
    Then The "Edit Resolved Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Resolved Case" page:
       | Subscribers |
       |             |
    Examples:
      | Location  |
      | top       |
      | bottom    |

  Scenario Outline: Administrator cannot view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Closed | Test UserA |
    And The user searches for the "16" search string by using the search box
    And The "View Closed Case" page is shown
    When The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page
    Then The "Edit Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "Edit Closed Case" page:
       | Subscribers |
       |             |
    Examples:
      | Location  |
      | top       |
      | bottom    |
