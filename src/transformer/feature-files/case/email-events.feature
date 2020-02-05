@NotAutomated
@JIRA-Key-MANUSCRIPT-31794
@Case
Feature: Case - Email Events

  Scenario: Opening a case by sending email creates a case event
    Given The user is logged in as Administrator
    And The user clicks the "New Email" button in the sidebar
    And The user is redirected to the "New Email" page
    When The user enters the following details in the "New Email" page:
      | To                 | Subject      | Description |
      | nobody@nowhere.com | Live Matters | Fight back! |
    And The user clicks the "Send" button in the "New Email" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | User          | Date                            |
      | Emailed By | Administrator | "Current time within 5 minutes" |
    And The "Emailed By" case event in the "View Active Case" page has the following content:
    """
    From: FogBugz <{{instance-name}}.fogbugz.com>
    Date: {{current-date}}
    To: "nobody@nowhere.com" <nobody@nowhere.com>
    Subject: (Case 17) Live Matters

    Fight Back!
    """

  Scenario: Replying in a case creates a case event
    And The following case events exist:
      | Case | Type       | User          | Date                            |
      | 17   | Emailed By | Administrator | "Current time within 5 minutes" |
    And The "Emailed By" case event in the "View Active Case" page has the following content:
    """
    From: FogBugz <{{instance-name}}.fogbugz.com>
    Date: {{current-date}}
    To: "nobody@nowhere.com" <nobody@nowhere.com>
    Subject: (Case 17) Live Matters

    Fight Back!
    """
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Reply" button in the "View Active Case" page
    And The user enters the following details in the "View Active Case" page:
      | Description |
      | I agree     |
    And The user clicks the "Send" button in the "New Email" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | User          | Date                            |
      | Replied By | Administrator | "Current time within 5 minutes" |
    And The "Emailed By" case event in the "View Active Case" page has the following content:
    """
    Date: {{current-date}}
    From: "FogBugz" <{{instance-name}}.fogbugz.com>
    To: "nobody@nowhere.com" <nobody@nowhere.com>
    Subject: Re: (Case 20) Live Matters

    I agree

    --
    FogBugz
    cases@{{instance-name}}.fogbugz.com
    ---------------------------------------------------------------------------
    Powered by FogBugz from FogBugz. https://www.fogbugz.com
    """

  Scenario: Forwarding an email in a case creates a case event
    And The following case events exist:
      | Case | Type       | User          | Date                            |
      | 17   | Emailed By | Administrator | "Current time within 5 minutes" |
    And The "Emailed By" case event in the "View Active Case" page has the following content:
    """
    From: FogBugz <{{instance-name}}.fogbugz.com>
    Date: {{current-date}}
    To: "nobody@nowhere.com" <nobody@nowhere.com>
    Subject: (Case 17) Live Matters

    Fight Back!
    """
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Forward" button in the "View Active Case" page
    And The user enters the following details in the "View Active Case" page:
      | Description | To               |
      | I agree     | gman@nowhere.com |
    And The user clicks the "Send" button in the "New Email" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type         | User          | Date                            |
      | Forwarded By | Administrator | "Current time within 5 minutes" |
    And The "Emailed By" case event in the "View Active Case" page has the following content:
    """
    Date: {{current-date}}
    From: "FogBugz" <cases@{{instance-name}}.fogbugz.com>
    To: "mrstollman@nowhere.com" <mrstollman@nowhere.com>
    Subject: Fw: (Case 17) Live Matters

    I agree

    --
    FogBugz
    cases@{{instance-name}}.fogbugz.com
    ---------------------------------------------------------------------------
    Powered by FogBugz from FogBugz. https://www.fogbugz.com
    """
