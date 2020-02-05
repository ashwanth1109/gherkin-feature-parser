@NotAutomated
@JIRA-Key-MANUSCRIPT-31700
@Email
Feature: Email - Send - Notify other Users

  Scenario: User can notify other users when sending an email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                | Account Type | Status | Password |
      | Test UserA | userA@devfactory.com | Normal       | Active | 123123   |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users |
      | testA@devfactory.com | Test UserA        |
    And The "Test UserA" item in the "Notify More Users" chunky dropdown has "Green" color
    And The user clicks the "Send" button in the "New Email" page
    And The following case details are shown in the "View Active Case" page:
      | ID |
      | 17 |
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | Content             | User          |
      | Emailed By | Notified Test UserA | Administrator |
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                | Password |
      | userA@devfactory.com | 123123   |
    And The user hovers over the "Notifications" icon in the sidebar
    And The following notifications are shown in the sidebar menu:
      | Read  | Title          | Description                                  |
      | false | 17: (Untitled) | Administrator notified you and sent an email |

  Scenario: User cannot notify themselves when sending an email
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users |
      | testA@devfactory.com | Administrator     |
    And The user hovers over the "Administrator" item in the "Notify More Users" chunky dropdown in the "New Email" page
    Then The "You can't notify yourself" tooltip is shown
    And The "Administrator" item in the "Notify More Users" chunky dropdown has "Yellow" color
    And The user clicks the "Send" button in the "New Email" page
    And The user hovers over the "Notifications" icon in the sidebar
    And The following notifications are shown in the sidebar menu:
      | Read | Title | Description |
      |      |       |             |

  Scenario: User cannot notify an invalid user when sending an email
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users |
      | testA@devfactory.com | Invalid user      |
    And The "Invalid user" item in the "Notify More Users" chunky dropdown has "Red" color
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | Content | User          |
      | Emailed By |         | Administrator |

  Scenario: User cannot notify an inactive user when sending an email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                | Account Type | Status   | Password |
      | Test UserA | userA@devfactory.com | Normal       | Inactive | 123123   |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users |
      | testA@devfactory.com | Test UserA        |
    And The "Test UserA" item in the "Notify More Users" chunky dropdown has "Red" color
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | Content | User          |
      | Emailed By |         | Administrator |

  Scenario: User cannot notify a community user when sending an email
    Given The user is logged in as Administrator
    And The following community users exist:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users |
      | testA@devfactory.com | Alesha Muromec    |
    And The "Alesha Muromec" item in the "Notify More Users" chunky dropdown has "Red" color
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | Content | User          |
      | Emailed By |         | Administrator |

  Scenario: Users are sorted by display name in notify more users dropdown when sending an email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                | Account Type | Status | Password |
      | Test UserA | userA@devfactory.com | Normal       | Active | 123123   |
      | Test UserB | user2@devfactory.com | Normal       | Active | 123123   |
      | Test UserZ | user3@devfactory.com | Normal       | Active | 123123   |
      | Test UserC | user4@devfactory.com | Normal       | Active | 123123   |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Notify More Users |
      | Test              |
    Then The following values are available for the "Notify More Users" chunky dropdown in the "New Email" page in the following order:
      | Test UserA |
      | Test UserB |
      | Test UserC |
      | Test UserZ |

  Scenario: More than 20 users cannot be notified using notify more users when sending an email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name | Email                 | Account Type | Status | Password |
      | 1 1       | user1@devfactory.com  | Normal       | Active | 123123   |
      | 1 2       | user2@devfactory.com  | Normal       | Active | 123123   |
      | 1 3       | user3@devfactory.com  | Normal       | Active | 123123   |
      | 1 4       | user4@devfactory.com  | Normal       | Active | 123123   |
      | 1 5       | user5@devfactory.com  | Normal       | Active | 123123   |
      | 1 6       | user6@devfactory.com  | Normal       | Active | 123123   |
      | 1 7       | user7@devfactory.com  | Normal       | Active | 123123   |
      | 1 8       | user8@devfactory.com  | Normal       | Active | 123123   |
      | 1 9       | user9@devfactory.com  | Normal       | Active | 123123   |
      | 1 10      | user10@devfactory.com | Normal       | Active | 123123   |
      | 1 11      | user11@devfactory.com | Normal       | Active | 123123   |
      | 1 12      | user12@devfactory.com | Normal       | Active | 123123   |
      | 1 13      | user13@devfactory.com | Normal       | Active | 123123   |
      | 1 14      | user14@devfactory.com | Normal       | Active | 123123   |
      | 1 15      | user15@devfactory.com | Normal       | Active | 123123   |
      | 1 16      | user16@devfactory.com | Normal       | Active | 123123   |
      | 1 17      | user17@devfactory.com | Normal       | Active | 123123   |
      | 1 18      | user18@devfactory.com | Normal       | Active | 123123   |
      | 1 19      | user19@devfactory.com | Normal       | Active | 123123   |
      | 1 20      | user20@devfactory.com | Normal       | Active | 123123   |
      | 1 21      | user21@devfactory.com | Normal       | Active | 123123   |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Notify More Users                                                                                                   |
      | testA@devfactory.com | 1 1, 1 2, 1 3, 1 4, 1 5, 1 6, 1 7, 1 8, 1 9, 1 10, 1 11, 1 12, 1 13, 1 14, 1 15, 1 16, 1 17, 1 18, 1 19, 1 20, 1 21 |
    And The user hovers over the "1 21" item in the "Notify More Users" chunky dropdown in the "New Email" page
    Then The "1 21" item in the "Notify More Users" chunky dropdown has "Red" color
    And The "More than 20 users can't be notified" tooltip is shown

  Scenario: Users who don't have access to the selected project can't be notified via notify more users when sending an email
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                | Account Type | Status | Password |
      | Test UserA | userA@devfactory.com | Normal       | Active | 123123   |
    And The following projects exist:
      | Project Name | Primary Contact | Initial Permissions               |
      | Ninja        | Administrator   | Only Site Admins can manage cases |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Project | Notify More Users |
      | Ninja   | Test UserA        |
    And The user hovers over the "Test UserA" item in the "Notify More Users" chunky dropdown in the "New Email" page
    Then The "This person does not have permission to view this case" tooltip is shown
    And The "Test UserA" item in the "Notify More Users" chunky dropdown has "Red" color
