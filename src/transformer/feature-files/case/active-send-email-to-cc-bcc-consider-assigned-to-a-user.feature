@NotAutomated
@JIRA-Key-MANUSCRIPT-30630
@Case
Feature: Case - Active - Send Email - TO CC BCC - Consider Assigned Case to a user

  Scenario: Field "<Field>" is validated when sending emails from cases
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         |
      | Lion King | lk@jungle.com |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the top panel in the "View Active Case" page
    When The user enters the following email details in the "Edit Active Case" page:
      | To            | Subject   |
      | lk@jungle.com | curiosity |
    And The user hovers over the "lk@jungle.com" dropdown item in the "To" dropdown in the "Edit Active Case" page
    Then The "Consider assigning a case to this user rather than emailing them" tooltip is shown
