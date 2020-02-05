@NotAutomated
@JIRA-Key-MANUSCRIPT-31696
@Email
Feature: Email - Send - To All Users

  Scenario: Administrator can send an email to all users
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name   | Email                 | Account Type  | Status   |
      | Test UserA  | userA@devfactory.com  | Normal        | Active   |
      | Test UserB  | userB@devfactory.com  | Normal        | Inactive |
      | Test AdminA | adminA@devfactory.com | Administrator | Active   |
      | Test AdminB | adminB@devfactory.com | Administrator | Inactive |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Email All Users" menu item in the sidebar menu
    And The "Email Users" page is shown
    When The user enters the following details in the "Email Users" page:
      | Subject      | Message             | Send to administrators only |
      | Under Attack | We have been hacked | false                       |
    And The user clicks the "Send Email" button in the "Email Users" page
    Then The following message is shown in the "Email Users" page:
    """
    Subject:
    Under Attack
    Message:
    We have been hacked
    Recipients:
    Administrator
    Test UserA
    Test AdminA
    """
    And The user receives the "Under Attack" email message in the "administrator@fogbugz.com" email address
    And The user receives the "Under Attack" email message in the "userA@devfactory.com" email address
    And The user receives the "Under Attack" email message in the "adminA@devfactory.com" email address
