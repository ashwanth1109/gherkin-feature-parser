@NotAutomated
@JIRA-Key-MANUSCRIPT-30636
@Case
Feature: Case - Resolved - Send Email - Reply

  Scenario Outline: User can reply to an email in a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Resolved |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    And The user clicks the "Mail" button in the <Location> panel in the "View Resolved Case" page
    When The user enters the following details in the "Edit Resolved Case" page:
      | To                   | Subject         | Description           |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user clicks the "Send" button in the "Edit Resolved Case" page
    And The user clicks the "Reply" button in the <Location> panel in the "View Resolved Case" page
    Then The following details are shown in the "Edit Resolved Case" page:
      | To                   | Subject             |
      | testA@devfactory.com | Re: (Case 17) 12345 |
    And The "Body" field in the "Edit Resolved Case" page is:
    """


--
FogBugz
cases@instance-name.fogbugz.com
---------------------------------------------------------------------------
Powered by FogBugz from FogBugz. https://www.fogbugz.com
    """
    And The user enters the following details in the "Edit Resolved Case" page:
      | Body                  |
      | Testing sending email |
    And The user clicks the "Send" button in the "Edit Resolved Case" page
    And The user receives the "Re: (Case 17) 12345" email message in the "testA@devfactory.com" email address
    Examples:
      | Location |
      | top      |
      | bottom   |
