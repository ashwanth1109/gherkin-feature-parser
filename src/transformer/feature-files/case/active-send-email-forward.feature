@NotAutomated
@JIRA-Key-MANUSCRIPT-30637
@Case
Feature: Case - Active - Send Email - Forward

  Scenario Outline: User can forward an email in a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page
    When The user enters the following details in the "Edit Active Case" page:
      | To                   | Subject         | Description           |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user clicks the "Send" button in the "Edit Active Case" page
    And The user clicks the "Forward" button in the <Location> panel in the "View Active Case" page
    Then The following details are shown in the "Edit Active Case" page:
      | Subject             |
      | Re: (Case 17) 12345 |
    And The "Body" field in the "Edit Active Case" page is:
    """


--
FogBugz
cases@instance-name.fogbugz.com
---------------------------------------------------------------------------
Powered by FogBugz from FogBugz. https://www.fogbugz.com
    """
    And The user enters the following details in the "Edit Active Case" page:
      | To                   | Body                  |
      | testB@devfactory.com | Testing sending email |
    And The user clicks the "Send" button in the "Edit Active Case" page
    And The user receives the "Re: (Case 17) 12345" email message in the "testB@devfactory.com" email address
    Examples:
      | Location |
      | top      |
      | bottom   |
