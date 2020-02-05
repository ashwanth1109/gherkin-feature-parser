@NotAutomated
@JIRA-Key-MANUSCRIPT-29935
@User
Feature: User - Create - Register Community User - Invitation Email

  Scenario: Administrator can create a community user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "community management page" link in the "Manage Users" page
    And The user clicks the "Add New User" button
    And The "Add a Community User" dialog is opened
    And The user enters the community user details in the "Add a Community User" dialog:
      | Full Name      | Email            |
      | Alesha Muromec | test@fogbugz.com |
    And The user clicks the "Add User" button
    Then The user receives the "Account Registration" email
    And The "Account Registration" email contains the "Username" value
    And The "Account Registration" email contains the "Password" value
    And The "Account Registration" email contains the "Confirmation URL" value
