@NotAutomated
@JIRA-Key-MANUSCRIPT-31686
@Email
Feature: Email - Send - Rich Text Mode - Link

  Scenario: User can see advanced links help when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user clicks the "Advanced Linking" link in the "Link" dialog
    And The following details are shown for the "Advanced Linking" section in the "Link" dialog:
      | _     | If you type            | We'll link to                     |
      | Case  | 1234                   | Case #1234 in FogBugz             |
      | Wiki  | W123                   | Article #W123 in the FogBugz Wiki |
      | Web   | http://www.example.com | http://www.example.com            |
      | Email | Email@Example.com      | mailto:Email@Example.com          |

  Scenario: User can turn a text into a web link when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    Then The following details are shown in the "Link" dialog:
      | Target      | Text        |
      | Lorem ipsum | Lorem ipsum |
    And The user enters the following details in the "Link" dialog:
      | Target                  | Text        |
      | https://www.google.com/ | Lorem ipsum |
    And The user clicks the "OK" button in the "Link" dialog
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description                                                             |
      | <p><a href="https://www.google.com" target="_blank">Lorem ipsum</a></p> |

  Scenario: User can turn a text into a case link when sending emails
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    Then The following details are shown in the "Link" dialog:
      | Target      | Text        |
      | Lorem ipsum | Lorem ipsum |
    And The user enters the following details in the "Link" dialog:
      | Target | Text        |
      | 17     | Lorem ipsum |
    And The user clicks the "OK" button in the "Link" dialog
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description                                                                    |
      | <p><a href="https://instance-name.fogbugz.com/f/cases/17/">Lorem ipsum</a></p> |

  Scenario: User can turn a text into a wiki link when sending emails
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Page Title |
      | Wiki-W     |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    Then The following details are shown in the "Link" dialog:
      | Target      | Text        |
      | Lorem ipsum | Lorem ipsum |
    And The user enters the following details in the "Link" dialog:
      | Target | Text        |
      | W1     | Lorem ipsum |
    And The user clicks the "OK" button in the "Link" dialog
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description                                                                       |
      | <p><a href="https://instance-name.fogbugz.com/default.asp?W1">Lorem ipsum</a></p> |

  Scenario: User can turn a text into an email link when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    Then The following details are shown in the "Link" dialog:
      | Target      | Text        |
      | Lorem ipsum | Lorem ipsum |
    And The user enters the following details in the "Link" dialog:
      | Target            | Text        |
      | email@example.com | Lorem ipsum |
    And The user clicks the "OK" button in the "Link" dialog
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description                                                               |
      | <p><a href="mailto:email@example.com" target="_blank">Lorem ipsum</a></p> |

  Scenario Outline: When sending emails and adding a case link cases are searched by id or title
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title                      |
      | 17   | Case in onboarding project |
      | 18   | Another                    |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target |
      | <Term> |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title   |
      | 18 | Another |
    Examples:
      | Term    |
      | 18      |
      | Another |

  Scenario Outline: When sending emails and adding a case link case search shows no cases when typed 3 or less letters
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target |
      | <Term> |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title |
      |    |       |
    Examples:
      | Term |
      | A    |
      | An   |
      | Ano  |

  Scenario: When sending emails and adding a case link search by title returns results when typed at least 4 letters
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target |
      | Anot   |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title   |
      | 17 | Another |

  Scenario: When sending emails and adding a case link search does not return cases that user has no access to
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The following cases exist:
      | Case | Title   | Project |
      | 17   | Another | Ninja   |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target |
      | Anot   |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title |
      |    |       |

  Scenario: When sending emails and adding a case link search does not return cases from project area SPAM
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following cases exist:
      | Case | Title        | Project | Project Area | Milestone |
      | 17   | probablyspam | Inbox   | Spam         | Undecided |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target       |
      | probablyspam |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title |
      |    |       |

  Scenario: When sending emails and adding a case link search sorts cases by status
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title    | Status   |
      | 17   | AnotherR | Resolved |
      | 18   | AnotherA | Active   |
      | 19   | AnotherC | Closed   |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target  |
      | Another |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title    |
      | 18 | AnotherA |
      | 19 | AnotherC |
      | 17 | AnotherR |

  Scenario: When sending emails and adding a case link search sorts cases by latest change
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     |
      | 17   | Another17 |
      | 18   | Another18 |
      | 19   | Another19 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target  |
      | Another |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title     |
      | 19 | Another19 |
      | 18 | Another18 |
      | 17 | Another17 |

  Scenario: When sending emails and adding a case link search is limited by 15
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title                      |
      | 17   | Case in onboarding project |
      | 18   | Another 18                 |
      | 19   | Another 19                 |
      | 20   | Another 20                 |
      | 21   | Another 21                 |
      | 22   | Another 22                 |
      | 23   | Another 23                 |
      | 24   | Another 24                 |
      | 25   | Another 25                 |
      | 26   | Another 26                 |
      | 27   | Another 27                 |
      | 28   | Another 28                 |
      | 29   | Another 29                 |
      | 30   | Another 30                 |
      | 31   | Another 31                 |
      | 32   | Another 32                 |
      | 33   | Another 33                 |
      | 34   | Another 34                 |
      | 35   | Another 35                 |
      | 36   | Another 36                 |
      | 37   | Another 37                 |
      | 38   | Another 38                 |
      | 39   | Another 39                 |
      | 40   | Another 40                 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    And The user enters the following details in the "Link" dialog:
      | Target  |
      | Another |
    Then The following cases are listed in the "Target" dropdown in the "Link" dialog:
      | ID | Title      |
      | 32 | Another 32 |
      | 31 | Another 31 |
      | 30 | Another 30 |
      | 29 | Another 29 |
      | 28 | Another 28 |
      | 27 | Another 27 |
      | 26 | Another 26 |
      | 25 | Another 25 |
      | 24 | Another 24 |
      | 23 | Another 23 |
      | 22 | Another 22 |
      | 21 | Another 21 |
      | 20 | Another 20 |
      | 19 | Another 19 |
      | 18 | Another 18 |
