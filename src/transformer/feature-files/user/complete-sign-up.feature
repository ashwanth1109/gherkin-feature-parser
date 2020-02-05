@NotAutomated
@JIRA-Key-MANUSCRIPT-29004
@User
Feature: User - Complete sign up
  Scenario: Invited user can complete sign up using invitation
    Given The "Administrator" user adds a new invited user
    And The invited user receives the invitation email with the temporary password
    When The invited user logs in with the temporary password
    And The invited user is redirected to the "Complete New Password" page
    And The invited user enters the new password in the "Complete New Password" page
    And The invited user clicks the "Set Password" button in the "Complete New Password" page
    Then The invited user is redirected to the "Login" page
    And The invited user logs in with the new password
