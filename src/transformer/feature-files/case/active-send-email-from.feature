@NotAutomated
@JIRA-Key-MANUSCRIPT-30627
@Case
Feature: Case - Active - Send Email - From

  Scenario: User can select among mailboxes available when sending emails from cases
    Given The user is logged in as Administrator
    And The following mailboxes exist:
      | Email address   | Full Name |
      | somewhere@f.com | S f       |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the top panel in the "View Active Case" page
    When The user clicks the "From" dropdown in the "Edit Active Case" page
    Then The following mailboxes are listed in the "From" dropdown in the "Edit Active Case" page:
      | "FogBugz" <cases@"instance name".com>       |
      | "Administrator" <cases@"instance name".com> |
      | "S f" <somehwere@f.com>                     |
