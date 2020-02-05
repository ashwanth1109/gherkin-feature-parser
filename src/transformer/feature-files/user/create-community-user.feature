@NotAutomated
@JIRA-Key-MANUSCRIPT-29666
@User
Feature: User - Create - Community User

  Scenario: Administrator can create a community user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "community management page" link in the "Manage Users" page
    And The user clicks the "Add New User" button
    And The "Add a Community User" dialog is opened
    And The user enters the community user details in the "Add a Community User" dialog:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    And The user clicks the "Add User" button
    Then The "Add a Community User" dialog is closed
    And The following community users are listed in the "Manage Community Users" page:
      | Name           | Email              | Schedule | Status | Phone | Description    | Open Cases | Last Activity |
      | Alesha Muromec | alesha@nowhere.com |          | Active |       | Community User | 0          |               |
