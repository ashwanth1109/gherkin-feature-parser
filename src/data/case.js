const scenarios = [
  {
    name: 'Administrator can add subscriber to case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'The "View Active Case" page is shown',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user clicks the "Add Subscriber" dropdown in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29702'],
            ['@Case'],
            ['Feature: Case - Active - Enable Add Subscribers'],
            [],
            [
              'Scenario: Administrator can enable add subscribers setting in site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active']]
        }
      },
      {
        description: 'The following users exist:',
        outcome: 'Action is executed',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      }
    ]
  },
  {
    name:
      'Administrator can enable add subscribers setting in site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers', 'Add Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case',
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Site Configuration" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Site Configuration" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Advanced" tab in the "Site Configuration" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Advanced" tab is shown in the "Site Configuration" page',
        table: null
      },
      {
        description:
          'The user checks the "Add Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscribers" checkbox is checked',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can add subscribers to an active case when add subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator can disable add subscribers setting in site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can disable add subscribers setting in site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Site Configuration" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Site Configuration" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Advanced" tab in the "Site Configuration" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Advanced" tab is shown in the "Site Configuration" page',
        table: null
      },
      {
        description:
          'The user unchecks the "Add Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscribers" checkbox is unchecked',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot add subscribers to an active case when add subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown on "View Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation of an active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate: current'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31633'],
            ['@Case'],
            [
              'Feature: Case - Active - Estimation - Elapsed - Day by day breakdown'
            ],
            [],
            [
              'Scenario: User can see day by day breakdown of the elapsed time of the case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see day by day breakdown of the elapsed time of the case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed'],
          td: [['17', 'White room', 'Active', '123123 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following time intervals exist:',
        table: {
          th: [
            'ID',
            'Date',
            'User',
            'Can Edit',
            'Can Delete',
            'Start',
            'End',
            'Case',
            'Title'
          ],
          td: [
            [
              '1',
              '"Current Day - 1"',
              'Administrator',
              'true',
              'true',
              '9:00 AM',
              '9:30 AM',
              '17',
              'BugA'
            ],
            [
              '2',
              '"Current Day - 2"',
              'Administrator',
              'true',
              'true',
              '9:00 AM',
              '9:30 AM',
              '17',
              'BugA'
            ],
            [
              '3',
              '"Current Day"',
              'Administrator',
              'true',
              'true',
              '"Current time" - 15 minutes',
              '"Current time" - 5 minutes',
              '17',
              'BugA'
            ]
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Estimate: elapsed" link in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Elapsed time breakdown" dialog is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown for the "DayOfWeek Current Day - 2" section in the "Elapsed time breakdown" dialog:',
        table: {
          th: ['Start', 'End', 'Name'],
          td: [['9:00 AM', '9:30 AM', 'Administrator']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown for the "DayOfWeek Current Day - 1 (Yesterday)" section in the "Elapsed time breakdown" dialog:',
        table: {
          th: ['Start', 'End', 'Name'],
          td: [['9:00 AM', '9:30 AM', 'Administrator']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown for the "DayOfWeek Current Day - 1 (Today)" section in the "Elapsed time breakdown" dialog:',
        table: {
          th: ['Start', 'End', 'Name'],
          td: [
            [
              '"Current time" - 15 minutes',
              '"Current time" - 5 minutes',
              'Administrator'
            ],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30003'],
            ['@Case'],
            ['Feature: Case - Active - Estimation - Elapsed'],
            [],
            ['Scenario: User can see elapsed estimation of active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate: elapsed'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30015'],
            ['@Case'],
            ['Feature: Case - Active - Estimation - Original'],
            [],
            ['Scenario: User can see original estimation of active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate: original'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30364'],
            ['@Case'],
            ['Feature: Case - Active - Estimation - Remaining'],
            [],
            ['Scenario: User can see remaining estimation of active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: remaining'],
          td: [['17', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate: remaining'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30024'],
            ['@Case'],
            ['Feature: Case - Active - Estimation - Toggle Work'],
            [],
            ['Scenario: User can start working on an active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working on an active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['17', 'New Case to handle', 'Active', '1 hour']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Start Work" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['Scenario: User can stop working on an active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop working on an active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: current',
            'Working On This Case'
          ],
          td: [
            ['17', 'New Case to handle', 'Active', '1 hour', 'Administrator']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Stop Work" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30633'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - Attachments'],
            [],
            [
              'Scenario Outline: User can send an email for a case with an attachment'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description', 'Attachment'],
          td: [
            [
              'testA@devfactory.com',
              'Test Send Email',
              'Testing sending email',
              'foo.txt'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Status', 'Title', 'Correspondent', 'Attachments'],
          td: [['17', 'Active', '12345', 'testA@devfactory.com', 'foo.txt']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: { th: ['Type'], td: [['Emailed By']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Emailed By" event in the "View Active Case" page:',
        table: {
          th: ['To', 'Subject', 'Body', 'Attachment'],
          td: [
            [
              'testA@devfactory.com',
              'Test Send Email',
              'Testing sending email',
              'foo.txt'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Test Send Email" email message contains the "foo.txt" attachment',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30637'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - Forward'],
            [],
            ['Scenario Outline: User can forward an email in a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Forward" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Edit Active Case" page:',
        table: { th: ['Subject'], td: [['Re: (Case 17) 12345']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Body" field in the "Edit Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@instance-name.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "Edit Active Case" page:',
        table: {
          th: ['To', 'Body'],
          td: [['testB@devfactory.com', 'Testing sending email']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Re: (Case 17) 12345" email message in the "testB@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30627'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - From'],
            [],
            [
              'Scenario: User can select among mailboxes available when sending emails from cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can select among mailboxes available when sending emails from cases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following mailboxes exist:',
        table: {
          th: ['Email address', 'Full Name'],
          td: [['somewhere@f.com', 'S f']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "From" dropdown in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following mailboxes are listed in the "From" dropdown in the "Edit Active Case" page:',
        table: {
          th: ['"FogBugz" <cases@"instance name".com>'],
          td: [
            ['"Administrator" <cases@"instance name".com>'],
            ['"S f" <somehwere@f.com>'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30635'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - Reply'],
            [],
            ['Scenario Outline: User can reply to an email in a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reply" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Edit Active Case" page:',
        table: {
          th: ['To', 'Subject'],
          td: [['testA@devfactory.com', 'Re: (Case 17) 12345']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Body" field in the "Edit Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@instance-name.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "Edit Active Case" page:',
        table: { th: ['Body'], td: [['Testing sending email']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Re: (Case 17) 12345" email message in the "testA@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30631'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - Send and Close'],
            [],
            ['Scenario Outline: User can send an email and close a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send & Close" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['ID', 'Status', 'Title', 'Correspondent'],
          td: [['17', 'Active', '12345', 'testA@devfactory.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Closed Case" page in the following order:',
        table: { th: ['Type'], td: [['Emailed By']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Emailed By" event in the "View Closed Case" page:',
        table: {
          th: ['To', 'Subject', 'Body'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30632'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - Send'],
            [],
            ['Scenario Outline: User can send an email from a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Status', 'Title', 'Correspondent'],
          td: [['17', 'Active', '12345', 'testA@devfactory.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: { th: ['Type'], td: [['Emailed By']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Emailed By" event in the "View Active Case" page:',
        table: {
          th: ['To', 'Subject', 'Body'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30628'],
            ['@Case'],
            ['Feature: Case - Active - Send Email - TO CC BCC - Autocomplete'],
            [],
            [
              'Scenario Outline: All emails are in autocomplete for "<Field>" field when sending emails from cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Administrator'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Virtual']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email'],
          td: [['Alesha Muromec', 'alesha@nowhere.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Correspondent'],
          td: [['17', '12345', 'a@arf.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user sends the following email message to FogBugz:',
        table: {
          th: ['From', 'To', 'Subject'],
          td: [
            [
              'testA@devfactory.com',
              'cases@"instance name".fogbugz.com',
              'I am batman'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following email details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['<Field>'], td: [['a']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following suggestions are listed for the "<Field>" dropdown in the "Edit Active Case" page:',
        table: {
          th: ['"Ticker Assignee" "admin@ticket-assignee.com"'],
          td: [
            ['"Ticket Factory" "admin@ticket-factory.com"'],
            ['"Ticker Implementor"  "admin@ticket-implementor.com"'],
            ['"Alesha Muromec"  "alesha@nowhere.com"'],
            ['"a@arf.com"'],
            ['"testA@devfactory.com"'],
            ['Examples:'],
            ['Field'],
            ['To'],
            ['CC'],
            ['BCC'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30630'],
            ['@Case'],
            [
              'Feature: Case - Active - Send Email - TO CC BCC - Consider Assigned Case to a user'
            ],
            [],
            [
              'Scenario: Field "<Field>" is validated when sending emails from cases'
            ],
            ['Field'],
            ['To'],
            ['CC'],
            ['BCC'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30630'],
            ['@Case'],
            [
              'Feature: Case - Active - Send Email - TO CC BCC - Consider Assigned Case to a user'
            ],
            [],
            [
              'Scenario: Field "<Field>" is validated when sending emails from cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Field "<Field>" is validated when sending emails from cases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full name', 'Email'],
          td: [['Lion King', 'lk@jungle.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following email details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['To', 'Subject'], td: [['lk@jungle.com', 'curiosity']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "lk@jungle.com" dropdown item in the "To" dropdown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Consider assigning a case to this user rather than emailing them" tooltip is shown',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Email" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the following email details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['<Field>'], td: [['a']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "<Button>" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Invalid email address" error message is shown in the "Edit Active Case" page',
        table: {
          th: ['Field', 'Button'],
          td: [
            ['To', 'Send'],
            ['CC', 'Send'],
            ['BCC', 'Send'],
            ['To', 'Send & Close'],
            ['CC', 'Send & Close'],
            ['BCC', 'Send & Close'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29848'],
            ['@Case'],
            ['Feature: Case - Active - View Subscribers'],
            [],
            ['Scenario: Administrator can view subscriber of an active case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can view subscriber of an active case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30007'],
            ['@Case'],
            ['Feature: Case - Active - With Subcases - Estimation - Current'],
            [],
            [
              'Scenario: User can see current estimation of an active case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation of an active case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current', 'Subcases'],
          td: [
            ['17', 'Subc', 'Active', '1 hour'],
            ['18', 'Parentc', 'Active', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate (incl. subcases) : current'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "current: 2 hours" link in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30011'],
            ['@Case'],
            ['Feature: Case - Active - With Subcases - Estimation - Elapsed'],
            [],
            [
              'Scenario: User can see elapsed estimation of an active case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of an active case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed', 'Subcases'],
          td: [
            ['17', 'Subc', 'Active', '1 hour'],
            ['18', 'Parentc', 'Active', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate (incl. subcases) : elapsed'],
          td: [
            ['2 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30019'],
            ['@Case'],
            ['Feature: Case - Active - With Subcases - Estimation - Original'],
            [],
            [
              'Scenario: User can see original estimation of an active case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of an active case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original', 'Subcases'],
          td: [
            ['17', 'Subc', 'Active', '1 hour'],
            ['18', 'Parentc', 'Active', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate (incl. subcases) : original'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "original: 2 hours" link in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30368'],
            ['@Case'],
            ['Feature: Case - Active - With Subcases - Estimation - Remaining'],
            [],
            [
              'Scenario: User can see remaining estimation of an active case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of an active case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: original',
            'Estimation: elapsed',
            'Estimate: remaining',
            'Subcases'
          ],
          td: [
            ['17', 'Subc', 'Active', '4 hours', '3 hours', '1 hour'],
            ['18', 'Parentc', 'Active', '4 hours', '3 hours', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Estimate (incl. subcases) : remaining'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "remaining: 2 hours" link in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "This Case" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Subcases" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Total" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [
            ['8 hours', '6 hours', '2 hours'],
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29677'],
            ['@Case'],
            ['Feature: Case - Assign - Community User Cannot Be Assigned'],
            [],
            [
              'Scenario Outline: Active cases cannot be assigned to community users'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', 'First Case', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email'],
          td: [['Alesha Muromec', 'alesha@nowhere.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Role'],
          td: [['Mr Robot', 'somebody@nowhere.com', 'Normal']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Assign" button in the "<Location>" panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Assign" dropdown in the "<Location>" panel in the "View Active Case" page in the following order:',
        table: {
          th: ['Choose a Person'],
          td: [
            ['Administrator'],
            ['Mr Robot'],
            ['Examples:'],
            ['Location'],
            ['Top'],
            ['Bottom'],
            [],
            [
              'Scenario Outline: Resolved cases cannot be assigned to community users'
            ],
            ['Location'],
            ['Top'],
            ['Bottom'],
            [],
            [
              'Scenario Outline: Resolved cases cannot be assigned to community users'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', 'First Case', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email'],
          td: [['Alesha Muromec', 'alesha@nowhere.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Role'],
          td: [['Mr Robot', 'somebody@nowhere.com', 'Normal']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Assign" button in the "<Location>" panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Assign" dropdown in the "<Location>" panel in the "View Resolved Case" page in the following order:',
        table: {
          th: ['Choose a Person'],
          td: [
            ['Administrator'],
            ['Mr Robot'],
            ['Examples:'],
            ['Location'],
            ['Top'],
            ['Bottom'],
            [],
            ['Scenario: New cases cannot be assigned to community users'],
            ['Location'],
            ['Top'],
            ['Bottom'],
            [],
            ['Scenario: New cases cannot be assigned to community users']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'New cases cannot be assigned to community users',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email'],
          td: [['Alesha Muromec', 'alesha@nowhere.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Role'],
          td: [['Mr Robot', 'somebody@nowhere.com', 'Normal']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'The user is redirected to the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Assign To" dropdown in the "New Case" page in the following order:',
        table: {
          th: ['Choose a Person'],
          td: [
            ['Administrator'],
            ['Mr Robot'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29118'],
            ['@Case'],
            ['Feature: Case - Assign'],
            [],
            ['Scenario Outline: User can assign a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Role'],
          td: [['Mr Robot', 'somebody@nowhere.com', 'Normal']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['ID', 'Title'], td: [['16', 'Ducks dont quack']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Assign" button in the "<Panel Position>" panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user selects the "Mr Robot" value in the assign dropdown in the "<Panel Position>" panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Assign" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Assigned To'],
          td: [
            ['Mr Robot'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29114'],
            ['@Case'],
            ['Feature: Case - Auto-incremented case number'],
            [],
            [
              'Scenario: Consecutively created cases should have consecutive IDs'
            ],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29114'],
            ['@Case'],
            ['Feature: Case - Auto-incremented case number'],
            [],
            [
              'Scenario: Consecutively created cases should have consecutive IDs'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Consecutively created cases should have consecutive IDs',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['ID', 'Title'], td: [['17', 'First Case']] }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Title'], td: [['Next case']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Open" button in the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Title'],
          td: [
            ['18', 'Next case'],
            [],
            [
              'Scenario: IDs are independently incremented among different customers'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'IDs are independently incremented among different customers',
    steps: [
      {
        description: 'The "AWS FogBugz on Demand instance A" FogBugz exists',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "AWS FogBugz on Demand instance B" FogBugz exists',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user is logged in as Normal User in the "AWS FogBugz on Demand instance A" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "New Case" button in the sidebar in the "AWS FogBugz on Demand instance A" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user is redirected to the "New Case" page in the "AWS FogBugz on Demand instance A" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title'],
          td: [['Case of AWS Fogbugz on Demand instance A']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance A" FogBugz',
        table: null
      },
      {
        description:
          'The user is logged in as Normal User in the "AWS FogBugz on Demand instance B" FogBugz',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user is redirected to the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "New Case" button in the sidebar in the "AWS FogBugz on Demand instance B" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title'],
          td: [['Case of AWS Fogbugz on Demand instance B']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Open" button in the "New Case" page in the "AWS FogBugz on Demand instance B" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page in the "AWS FogBugz on Demand instance B" FogBugz:',
        table: {
          th: ['ID', 'Title'],
          td: [['17', 'Case of AWS Fogbugz on Demand instance B']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box in the "AWS FogBugz on Demand instance A" FogBugz',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page in the "AWS FogBugz on Demand instance A" FogBugz:',
        table: {
          th: ['ID', 'Title'],
          td: [
            ['17', 'Case of AWS Fogbugz on Demand instance A'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-33072'],
            ['@Case'],
            ['Feature: Case - Backlog Order - Add to Bottom'],
            [],
            [
              'Scenario: User can move the case to the bottom of the backlog order'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can move the case to the bottom of the backlog order',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided'],
            ['19', 'C3', '3', 'All projects: Undecided']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add To Bottom" link in the "Backlog Order" field in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['2', 'C3'],
            ['3', 'C1'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-33071'],
            ['@Case'],
            ['Feature: Case - Backlog Order - Add to Top'],
            [],
            ['Scenario: User can move the case to the top of the backlog order']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can move the case to the top of the backlog order',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided'],
            ['19', 'C3', '3', 'All projects: Undecided']
          ]
        }
      },
      {
        description:
          'The user searches for the "19" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add To Top" link in the "Backlog Order" field in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['1', 'C3'],
            ['2', 'C1'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-33073'],
            ['@Case'],
            ['Feature: Case - Backlog Order - Remove from Ordering'],
            [],
            ['Scenario: User can remove the case from ordering']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can remove the case from ordering',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided'],
            ['19', 'C3', '3', 'All projects: Undecided']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Remove from ordering" link in the "Backlog Order" field in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29705'],
            ['@Case'],
            ['Feature: Case - Active - Enable View Subscribers'],
            [],
            [
              'Scenario: Administrator can enable view subscribers in site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can enable view subscribers in site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Site Configuration" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Site Configuration" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Advanced" tab in the "Site Configuration" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Advanced" tab is shown in the "Site Configuration" page',
        table: null
      },
      {
        description:
          'The user checks the "Show Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Show Subscribers" checkbox is checked',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscribers" checkbox is enabled',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can view subscriber of an active case when show subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator can disable view subscribers in site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can disable view subscribers in site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Site Configuration" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Site Configuration" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Advanced" tab in the "Site Configuration" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Advanced" tab is shown in the "Site Configuration" page',
        table: null
      },
      {
        description:
          'The user unchecks the "Show Subscribers" checkbox in the "Advanced" tab in the "Site Configuration" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Show Subscribers" checkbox is unchecked',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscribers" checkbox is disabled',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot view subscriber of an active case when show subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29692'],
            ['@Case'],
            ['Feature: Case - Edit - Enable Add Subscribers'],
            [],
            [
              'Scenario Outline: Administrator can add subscribers to an active case on "Edit Active Case" page when add subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user selects the following users from the "Add Subscriber" dropdown in the "Edit Active Case" page:',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is enabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user selects the following users from the "Add Subscriber" dropdown in the "Edit Resolved Case" page:',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is enabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Subscriber'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to an active case on "Edit Active Case" page when add subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to an active case on "Edit Active Case" page when add subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Subscriber'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a resolved case on "Edit Resolved Case" page when add subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Subscriber'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot add subscribers to a closed case on "Edit Closed Case" page when add subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Subscriber'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29699'],
            ['@Case'],
            ['Feature: Case - Edit - Enable View Subscribers'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of an active case on "Edit Active Case" page when show subscribers setting is enabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29699'],
            ['@Case'],
            ['Feature: Case - Edit - Enable View Subscribers'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of an active case on "Edit Active Case" page when show subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is enabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is enabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator can view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Closed Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of an active case on "Edit Active Case" page when show subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of an active case on "Edit Active Case" page when show subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Active Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of a resolved case on "Edit Resolved Case" page when show subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Resolved Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is disabled in the site configuration'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [
              'Scenario Outline: Administrator cannot view subscriber of a closed case on "Edit Closed Case" page when show subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the "<Location>" of the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "Edit Closed Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30042'],
            ['@Case'],
            [
              'Feature: Case - Category - Status - Create case - Default active status of default category'
            ],
            [],
            ['Background:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30042'],
            ['@Case'],
            [
              'Feature: Case - Category - Status - Create case - Default active status of default category'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name'],
          td: [
            ['FogBugz (5k Rewrite)'],
            [],
            [
              'Scenario: User can create case: Default category and default active status within the default category are used as initial property values.'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can create case: Default category and default active status within the default category are used as initial property values.',
    steps: [
      {
        description:
          'The following categories exist in the following display order:',
        outcome: 'Action is executed',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following active statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Active (Custom)', 'Customer Feature', 'true']]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['ID', 'Project', 'Area', 'Milestone', 'Category', 'Status'],
          td: [
            [
              '17',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Customer Feature',
              'Active (Custom)'
            ],
            [],
            [
              'Scenario: User can create public case: "Inquiry" category and default active status within the "Inquiry" category are used as initial property values.'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can create public case: "Inquiry" category and default active status within the "Inquiry" category are used as initial property values.',
    steps: [
      {
        description:
          'The following active statuses exist in the following display order:',
        outcome: 'Action is executed',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Active (Custom Inquiry)', 'Inquiry', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Project', 'Area'],
          td: [['FogBugz (5k Rewrite)', 'Misc']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['ID', 'Project', 'Area', 'Milestone', 'Category', 'Status'],
          td: [
            [
              '17',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Inquiry',
              'Active (Custom Inquiry)'
            ],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30043'],
            ['@Case'],
            [
              'Feature: Case - Category - Status - Resolve case - Default resolved status of category'
            ],
            [],
            [
              'Scenario: User can resolve existing active case: Category and default resolved status within the current case category are used as initial property values.'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can resolve existing active case: Category and default resolved status within the current case category are used as initial property values.',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following resolved statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Resolved (Custom)', 'Customer Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: { th: ['Project Name'], td: [['FogBugz (5k Rewrite)']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Status'],
          td: [['17', 'Test Case', 'FogBugz (5k Rewrite)', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['ID', 'Project', 'Area', 'Milestone', 'Category', 'Status'],
          td: [
            [
              '17',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Customer Feature',
              'Resolved (Custom)'
            ],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29122'],
            ['@Case'],
            ['Feature: Case - Close'],
            [],
            ['Scenario Outline: User can close a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['16', 'First Case', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Close Case" button in the "<Panel Position>" panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Close" button in the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Iteration Planner" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Title', 'Status'],
          td: [
            ['First Case', 'Closed'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29719'],
            ['@Case'],
            ['Feature: Case - Closed - Add Subscribers'],
            [],
            ['Scenario: Administrator can add subscriber to a closed case'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29719'],
            ['@Case'],
            ['Feature: Case - Closed - Add Subscribers'],
            [],
            ['Scenario: Administrator can add subscriber to a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can add subscriber to a closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'Welcome to the Planner in FogBugz!', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Closed Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29700'],
            ['@Case'],
            ['Feature: Case - Closed - Enable Add Subscribers'],
            [],
            [
              'Scenario: Administrator can add subscribers to a closed case when add subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can add subscribers to a closed case when add subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Closed Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator cannot add subscribers to a closed case when add subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot add subscribers to a closed case when add subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown on "View Closed Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can view subscriber of an closed case when show subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator cannot view subscriber of an closed case when show subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot view subscriber of an closed case when show subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30002'],
            ['@Case'],
            ['Feature: Case - Closed - Estimation - Current'],
            [],
            ['Scenario: User can see current estimation in a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation in a closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['16', 'New Case to handle', 'Closed', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate: current'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30006'],
            ['@Case'],
            ['Feature: Case - Closed - Estimation - Elapsed'],
            [],
            ['Scenario: User can see elapsed estimation of closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed'],
          td: [['16', 'New Case to handle', 'Closed', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate: elapsed'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30018'],
            ['@Case'],
            ['Feature: Case - Closed - Estimation - Original'],
            [],
            ['Scenario: User can see original estimation of closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original'],
          td: [['16', 'New Case to handle', 'Closed', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate: original'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30367'],
            ['@Case'],
            ['Feature: Case - Closed - Estimation - Remaining'],
            [],
            ['Scenario: User can see remaining estimation of closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: remaining'],
          td: [['17', 'New Case to handle', 'Closed', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate: remaining'],
          td: [
            ['123123 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30026'],
            ['@Case'],
            ['Feature: Case - Closed - Estimation - Toggle Work'],
            [],
            ['Scenario: User can start working on a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working on a closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['17', 'New Case to handle', 'Closed', '1 hour']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Start Work" button in the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['Scenario: User can stop working on a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop working on a closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: current',
            'Working On This Case'
          ],
          td: [
            ['17', 'New Case to handle', 'Closed', '1 hour', 'Administrator']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Stop Work" button in the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29850'],
            ['@Case'],
            ['Feature: Case - Closed - View Subscribers'],
            [],
            ['Scenario: Administrator can view subscriber of a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can view subscriber of a closed case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30010'],
            ['@Case'],
            ['Feature: Case - Closed - With Subcases - Estimation - Current'],
            [],
            [
              'Scenario: User can see current estimation of a closed case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation of a closed case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current', 'Subcases'],
          td: [
            ['17', 'Subc', 'Closed', '1 hours'],
            ['18', 'Parentc', 'Closed', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: { th: ['Estimate (incl. subcases): current'], td: [['2 hours']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "current: 2 hours" link in the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30014'],
            ['@Case'],
            ['Feature: Case - Closed - With Subcases - Estimation - remaining'],
            [],
            [
              'Scenario: User can see remaining estimation of a closed case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of a closed case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: remaining', 'Subcases'],
          td: [
            ['17', 'Subc', 'Closed', '1 hours'],
            ['18', 'Parentc', 'Closed', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate (incl. subcases): remaining'],
          td: [
            ['2 hours'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30022'],
            ['@Case'],
            ['Feature: Case - Closed - With Subcases - Estimation - Original'],
            [],
            [
              'Scenario: User can see original estimation of a closed case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of a closed case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original', 'Subcases'],
          td: [
            ['17', 'Subc', 'Closed', '1 hours'],
            ['18', 'Parentc', 'Closed', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Estimate (incl. subcases): original'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "original: 2 hours" link in the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30371'],
            ['@Case'],
            ['Feature: Case - Closed - With Subcases - Estimation - Remaining'],
            [],
            [
              'Scenario: User can see elapsed estimation of a closed case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of a closed case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: original',
            'Estimation: elapsed',
            'Estimate: remaining',
            'Subcases'
          ],
          td: [
            ['17', 'Subc', 'Active', '4 hours', '3 hours', '1 hour'],
            ['18', 'Parentc', 'Active', '4 hours', '3 hours', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: { th: ['Estimate (incl. subcases): elapsed'], td: [['2 hours']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "remaining: 2 hours" link in the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "This Case" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Subcases" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Total" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [
            ['8 hours', '6 hours', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31792'],
            ['@Case'],
            ['Feature: Case - Create - Backlog Order'],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'When setting backlog order for a case in an empty milestone - the order is always set to 1',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Backlog Order', 'Title'], td: [['15', 'C1']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: { th: ['Backlog Order', 'Title'], td: [['1', 'C1'], []] }
      }
    ],
    preconditions: []
  },
  {
    name:
      'When setting backlog order for a case in a non-empty milestone - the order is always set to the minimum',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [['17', 'C1', '1', 'All projects: Undecided']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Backlog Order', 'Milestone'],
          td: [['C2', '15', 'All projects: Undecided']]
        }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [['1', 'C1'], ['2', 'C2'], []]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'When setting backlog order less than of existing cases the cases are shifted',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Backlog Order', 'Milestone'],
          td: [['C3', '1', 'All projects: Undecided']]
        }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['1', 'C3'],
            ['2', 'C1'],
            ['3', 'C2'],
            [],
            [
              'Scenario: Not more than 3 items are shown in backlog order field in the case page'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Not more than 3 items are shown in backlog order field in the case page',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided'],
            ['19', 'C3', '3', 'All projects: Undecided'],
            ['20', 'C4', '4', 'All projects: Undecided']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['1', 'C1'],
            ['2', 'C2']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['1', 'C1'],
            ['2', 'C2'],
            ['3', 'C3']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            ['3', 'C3'],
            ['4', 'C4'],
            [],
            [
              'Scenario: User can navigate between cases using backlog order links'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can navigate between cases using backlog order links',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Backlog Order', 'Milestone'],
          td: [
            ['17', 'C1', '1', 'All projects: Undecided'],
            ['18', 'C2', '2', 'All projects: Undecided'],
            ['19', 'C3', '3', 'All projects: Undecided']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "2: C2" link in the "Backlog Order" field in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Title'],
          td: [
            ['18', 'C2'],
            [],
            [
              'Scenario: Negative backlog order is equal to not having a backlog order'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Negative backlog order is equal to not having a backlog order',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Backlog Order', 'Title'], td: [['-15', 'C1']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            [],
            [],
            [
              'Scenario: Non numerical values are not allowed in the backlog order field'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Non numerical values are not allowed in the backlog order field',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'The user enters the case details in the "New Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Backlog Order', 'Title'], td: [['A.cB', 'C1']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Backlog Order'],
          td: [
            [],
            [],
            [
              'Scenario: Float numbers are not allowed in the backlog order field'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Float numbers are not allowed in the backlog order field',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Backlog Order', 'Title'], td: [['1.5', 'C1']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Whoops! It seems something has gone wrong." error message is shown in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'Backlog order greater than 100 is not allowed',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Backlog Order', 'Title'], td: [['101', 'C1']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following backlog order is shown in the "View Active Case" page in the following order:',
        table: {
          th: ['Backlog Order', 'Title'],
          td: [
            [],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29124'],
            ['@Case'],
            ['Feature: Case - Create comment'],
            [],
            ['Scenario: User can create a comment for a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can create a comment for a case',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Description'],
          td: [['Superman identity', 'Nobody will ever know']]
        }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Opened By', 'Nobody will ever know'],
            [],
            ['Scenario: User can create an additional comment for a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can create an additional comment for a case',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['16', 'Superman identity', 'Nobody will ever know']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Description'], td: [['Yet another idea']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Edited by', 'Yet another idea'],
            ['Opened By', 'Nobody will ever know'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29679'],
            ['@Case'],
            [
              'Feature: Case - Create - Community User - Cannot Submit Cases Without Permissions'
            ],
            [],
            [
              'Scenario: Community User can create a new case for projects with permission given to the user group with a community user'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Community User can create a new case for projects with permission given to the user group with a community user',
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact'],
          td: [
            ['Ninja', 'Administrator'],
            ['Hidden', 'Administrator']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email', 'Password'],
          td: [['Alesha Muromec', 'alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description:
          'The user enters the login details in the "Login" form in the "Login" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Email', 'Password'],
          td: [['alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "New Case" button is not shown in the sidebar',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Community User can create a new case for projects with "All Community Users" permission',
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email', 'Password'],
          td: [['Alesha Muromec', 'alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact'],
          td: [
            ['Ninja', 'Administrator'],
            ['Hidden', 'Administrator']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following permissions exist:',
        table: {
          th: ['Project', 'Type', 'Name', 'Submit Cases'],
          td: [['Ninja', 'Community User', 'All Community Users', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description:
          'The user enters the login details in the "Login" form in the "Login" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Email', 'Password'],
          td: [['alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following projects are listed in the "Project" dropdown in the "New Public Case" page:',
        table: {
          th: ['Ninja'],
          td: [
            [],
            [
              'Scenario: Community User can create a new case for projects with permission given to that community user'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Community User can create a new case for projects with permission given to that community user',
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email', 'Password'],
          td: [['Alesha Muromec', 'alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact'],
          td: [
            ['Ninja', 'Administrator'],
            ['Hidden', 'Administrator']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following permissions exist:',
        table: {
          th: ['Project', 'Type', 'Name', 'Submit Cases'],
          td: [['Ninja', 'Community User', 'Alesha Muromec', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description:
          'The user enters the login details in the "Login" form in the "Login" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Email', 'Password'],
          td: [['alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following projects are listed in the "Project" dropdown in the "New Case" page:',
        table: {
          th: ['Ninja'],
          td: [
            [],
            [
              'Scenario: Community User can create a new case for projects with permission given to the user group with a community user'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Community User can create a new case for projects with permission given to the user group with a community user',
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact'],
          td: [
            ['Ninja', 'Administrator'],
            ['Hidden', 'Administrator']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community user groups exist:',
        table: { th: ['Name', 'Notes'], td: [['X55', 'AKIT Member']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['User Group', 'Full Name', 'Email', 'Password'],
          td: [['X55', 'Alesha Muromec', 'alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following permissions exist:',
        table: {
          th: ['Project', 'Type', 'Name', 'Submit Cases'],
          td: [['Ninja', 'Community User', 'X55', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description:
          'The user enters the login details in the "Login" form in the "Login" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Email', 'Password'],
          td: [['alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following projects are listed in the "Project" dropdown in the "New Public Case" page:',
        table: {
          th: ['Ninja'],
          td: [
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29680'],
            ['@Case'],
            ['Feature: Case - Edit - Community User'],
            [],
            ['Scenario: Community user can create a new case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Community user can create a new case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following community users exist:',
        table: {
          th: ['Full Name', 'Email', 'Password'],
          td: [['Alesha Muromec', 'alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following permissions exist:',
        table: {
          th: ['Project', 'Type', 'Name', 'Submit Cases'],
          td: [['Inbox', 'Community User', 'All Community Users', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description:
          'The user enters the login details in the "Login" form in the "Login" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Email', 'Password'],
          td: [['alesha@nowhere.com', '123123']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the public case details in the "New Public Case" page:',
        table: {
          th: ['Title', 'Project', 'Area', 'Description'],
          td: [
            [
              'Community Case',
              'Inbox',
              'Not Spam',
              'Attempt to create first community case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            [
              '17',
              '(Open) Community Case',
              'Attempt to create first community case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Description',
            'Project',
            'Area',
            'Milestone',
            'Correspondent',
            'Assignee'
          ],
          td: [
            [
              '17',
              'Community Case',
              'Attempt to create first community case',
              'Inbox',
              'Not Spam',
              'Undecided',
              'alesha@nowhere.com',
              'Administrator'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29690'],
            ['@Case'],
            ['Feature: Case - Create - Public Case'],
            [],
            ['Scenario: Anybody can open a public case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Anybody can open a public case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The priority number "7" is marked as default',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Title', 'Project', 'Area', 'Description', 'Your Email'],
          td: [
            [
              'PC1',
              'FogBugz (5k Rewrite)',
              'Misc',
              'Public Case 1',
              'somebody@somewhere.com'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page:',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are listed in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', '(Open) PC1', 'Public Case 1']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Case Ticket" value is shown in the "View Public Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'Anybody can open a public case',
    steps: [
      {
        description: 'The user clicks the "New Case" button',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact'],
          td: [
            ['Ninja', 'Administrator'],
            ['Hidden', 'Administrator']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following permissions exist:',
        table: {
          th: ['Project', 'Name', 'Submit Cases'],
          td: [
            ['Ninja', 'Anonymous Users', 'true'],
            ['Hidden', 'All Normal Users', 'false']
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following projects are listed in the "Project" dropdown in the "New Public Case" page:',
        table: {
          th: ['Inbox'],
          td: [
            ['Ninja'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29039'],
            ['@Case'],
            ['Feature: Case - Create'],
            [],
            ['Scenario: User can create a new case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can create a new case',
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Title'], td: [['Cornucopia']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [
            ['17', 'Cornucopia', 'Active'],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29451'],
            ['@Case'],
            ['Feature: Case - Default Cases'],
            [],
            [],
            ['Scenario: System provides the default case 1']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 1',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "1" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '1',
              'Welcome to the Planner in FogBugz!',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'This interface provides a high level view of your work by letting you sort your various tasks into milestones.'
            ],
            [],
            [
              'The sample cases in this Planner will walk you through how to create projects and organize work with your own Planners and Filters.'
            ],
            [],
            [
              'You can get back to the Planner at any time by selecting  in the left sidebar and following the link to the Onboarding Planner.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 2']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 2',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "2" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '2',
              'Create your first project(s)',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'To create your first project, go to the Avatar Menu and click “Projects.” Once you have created a project, you can set up Areas to subdivide the work in each project. For example, a software project might have separate Areas for front-end code, back-end code, and documentation, or your Inbox project might have separate Areas for your Sales and Support teams.'
            ],
            [],
            [
              'For best practices on defining your Projects and Areas, you can read more here.'
            ],
            [],
            [
              'For a video tutorial on setting up Projects, Planners and Kanban boards, click here.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 3']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 3',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "3" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '3',
              'Create your own Planner',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'The Planner helps you easily organize agile sprints or any other milestones into a single board. A milestone is represented by a column in the Planner, and it represents a period of time designated for a certain amount of work. You can check out this video tutorial for more detail, or read on for a few tips to get started.'
            ],
            [],
            [
              'You can use a single Planner for one Project, or manage work across multiple Projects in the same board.'
            ],
            [],
            [],
            [],
            [
              'To create a new Planner, click on the menu in the top left corner:'
            ],
            [],
            [],
            [],
            [
              "Create a milestone called “Backlog” - this will be a placeholder for to-do items that haven't yet been sorted into your milestones. The backlog milestone allows you to order your cases relative to one another. You can quickly add cases to the backlog by clicking  and either typing a new case title or searching for an existing case by number or title."
            ],
            [],
            [
              "Click  to add additional sprints or other milestones to your board. You can drag cases from your backlog into your milestones in order to designate when you'd like the work to get done."
            ],
            [],
            [],
            [],
            ['For more detail on configuring your Planner, read here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 4'],
            [],
            [],
            [],
            [
              "Create a milestone called “Backlog” - this will be a placeholder for to-do items that haven't yet been sorted into your milestones. The backlog milestone allows you to order your cases relative to one another. You can quickly add cases to the backlog by clicking  and either typing a new case title or searching for an existing case by number or title."
            ],
            [],
            [
              "Click  to add additional sprints or other milestones to your board. You can drag cases from your backlog into your milestones in order to designate when you'd like the work to get done."
            ],
            [],
            [],
            [],
            ['For more detail on configuring your Planner, read here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 4']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 4',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "4" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '4',
              'Use Kanban to create a lightweight workflow',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'Kanban lets you zoom into a specific milestone to create a lightweight workflow.'
            ],
            [],
            [
              'To access the Kanban board, click the button in the top right corner of your milestone:'
            ],
            [],
            [],
            [],
            [
              'From there, you can easily create new columns to represent different stages of your process. Like the Planner, any change made in the Kanban is reflected back in the case and is easily searchable.'
            ],
            [],
            [
              'For a video tutorial on setting up Projects, Planners and Kanban boards, click here.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 5'],
            [],
            [],
            [],
            [
              'From there, you can easily create new columns to represent different stages of your process. Like the Planner, any change made in the Kanban is reflected back in the case and is easily searchable.'
            ],
            [],
            [
              'For a video tutorial on setting up Projects, Planners and Kanban boards, click here.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 5']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 5',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "5" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '5',
              'Find your data through search and filters',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'FogBugz offers powerful search to help you keep track of the smallest details in your projects. The auto-completing search function lets you get started without having any syntax memorized.'
            ],
            [],
            [
              'Simply start typing into the search bar, and possible related search terms will automatically appear in a dropdown:'
            ],
            [],
            [],
            [],
            [],
            [],
            [
              'To eliminate even more guesswork, click  on the right side of the search bar for a full menu of search terms and their syntax.'
            ],
            [],
            [
              'You can use this search to build out complex filters that help you manage all of the detail across your projects. You can save a search by clicking in the upper right corner of the filter page:'
            ],
            [],
            [],
            [],
            [],
            [],
            ['For more information on filters, read here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 6'],
            [],
            [],
            [],
            [],
            [],
            [
              'To eliminate even more guesswork, click  on the right side of the search bar for a full menu of search terms and their syntax.'
            ],
            [],
            [
              'You can use this search to build out complex filters that help you manage all of the detail across your projects. You can save a search by clicking in the upper right corner of the filter page:'
            ],
            [],
            [],
            [],
            [],
            [],
            ['For more information on filters, read here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 6'],
            [],
            [],
            [],
            [],
            [],
            ['For more information on filters, read here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 6']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 6',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "6" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '6',
              'This is a case (click me for more detail)',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'A case is the basic unit of work, whether you categorize that as a task, a bug, a feature or an email.'
            ],
            [],
            [
              'You can use cases to assign, prioritize, tag, or set due dates for your work items. Cases provide you with a log of every detail necessary to get your job done. You can review all the fields in a case here.'
            ],
            [],
            [
              'Cases will be organized into projects, and can be viewed in the Planner (Case 3), Filters (Case 5) or Kanban (Case 4)'
            ],
            [],
            ['For a video tutorial on getting started with cases, click here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 7']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 7',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "7" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '7',
              'Update the status of your cases',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'You can resolve and close this case to indicate that it’s done by clicking on the upper right hand corner:'
            ],
            [],
            [],
            [],
            [],
            [],
            [],
            [],
            [],
            [],
            []
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'click',
        table: {
          th: [],
          td: [
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 8']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 8',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "8" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '8',
              'Set up your help desk',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'FogBugz comes with built-in email integration to help you communicate with customers and route inquiries to the appropriate members of your team.'
            ],
            [],
            [
              'Your trial comes with a default help address (cases@<"instance name".fogbugz.com), but you can easily configure your own mailbox to route emails to your account.'
            ],
            [],
            [
              'The instructions in the link above will also help you set up your autoresponder and create custom text snippets for quick responses to common customer questions.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 9']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 9',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "9" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '9',
              'Integrate FogBugz with your favorite tools',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              "Out of the box, we've built integrations that let FogBugz intelligently update cases with information from GitHub, Slack, Twitter and other services you're probably already using. All of these integrations are also free and open source, and they're hosted on our fun, easy coding community Glitch, so that you can edit them and customize them to work perfectly for your team."
            ],
            [],
            ['Here are the details to get started with FogBugz integrations.'],
            []
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'if you need to connect FogBugz to a proprietary app, you can use the FogBugz API.',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 10',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "10" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '10',
              'Group cases by clicking the dropdown above',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Guidelines'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'The “Group By” option at the top of each milestone allows you to sort your cases:'
            ],
            [],
            [],
            [],
            [],
            [],
            [
              'You can also make changes directly on the case by clicking on the summary card. For example, to change the priority from 2 to 3, click on the orange dot and a dropdown will appear containing your different priority options:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 11'],
            [],
            [],
            [],
            [],
            [],
            [
              'You can also make changes directly on the case by clicking on the summary card. For example, to change the priority from 2 to 3, click on the orange dot and a dropdown will appear containing your different priority options:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 11'],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 11']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 11',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "11" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '11',
              'Add users to your trial',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              "Now that you've created your first project(s) (Case 2), you can invite other users to join your trial and begin assigning cases."
            ],
            [],
            [
              'To add users, go to the Avatar Menu in the bottom left corner of your screen and click “Users.” Note: You must be an Administrator to add users.'
            ],
            [],
            ['You can read more about FogBugz user types here.'],
            ['"""'],
            [],
            ['Scenario: System provides the default case 12']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 12',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "12" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '12',
              'Let us know if you have questions',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'We’re here if you have any questions. You can contact us emailing success@fogbugz.com.'
            ],
            [],
            [
              'Or, because this case has a correspondent listed, you can click  at the top of this case to email us directly from your trial. (See Case 8 for more on the email integration in FogBugz.)'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 13']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 13',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "13" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '13',
              'Additional resources for Developers',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              "You've seen how the Planner can help you block out your milestones (Case 3), so here are a few other resources to manage your work:"
            ],
            [],
            [
              '1. Version Control integration - link your code commits to cases using our Hg/Git hosting tool Kiln, or GitHub.'
            ],
            [],
            [
              '2. "My Cases" filter - focus exclusively on the tasks assigned to you. Hover over the  menu in the left sidebar to pull up this built-in filter.'
            ],
            [],
            [
              '3. Customizable workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.'
            ],
            [],
            [
              '4. Case hierarchies - Easily create subcases directly from the case page. Simply start typing into the Subcases field in the left sidebar of the case. These new cases will automatically be assigned case numbers when you click Save.'
            ],
            [],
            [],
            [],
            [
              '5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            [],
            [
              'Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 14'],
            [],
            [
              '1. Version Control integration - link your code commits to cases using our Hg/Git hosting tool Kiln, or GitHub.'
            ],
            [],
            [
              '2. "My Cases" filter - focus exclusively on the tasks assigned to you. Hover over the  menu in the left sidebar to pull up this built-in filter.'
            ],
            [],
            [
              '3. Customizable workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.'
            ],
            [],
            [
              '4. Case hierarchies - Easily create subcases directly from the case page. Simply start typing into the Subcases field in the left sidebar of the case. These new cases will automatically be assigned case numbers when you click Save.'
            ],
            [],
            [],
            [],
            [
              '5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            [],
            [
              'Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 14'],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 14']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 14',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "14" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '14',
              'Additional resources for Project Managers',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              "You've seen how the Planner interface (Case 3) can help you plan your roadmap, and the Kanban (Case 4) can help you organize the work in your milestones. Here are a few more things you can do in FogBugz:"
            ],
            [],
            [
              '1. Plan your release dates - Log time on your cases to see how your team is tracking towards release dates. Our Evidence Based Scheduling tool aggregates data on the accuracy of your estimates to give you a realistic picture of when you’ll be ready to ship.'
            ],
            [],
            [
              '2. Report on progress - Case 5 provides more detail on how to create filters. View this data in graphical form by clicking  at the top left of your filter view. You can export this data by clicking on More at the top right corner of your filter view:'
            ],
            [],
            [],
            [],
            [
              '3. Customize workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.'
            ],
            [],
            [
              '4. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            [],
            [
              'Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 15'],
            [],
            [
              '1. Plan your release dates - Log time on your cases to see how your team is tracking towards release dates. Our Evidence Based Scheduling tool aggregates data on the accuracy of your estimates to give you a realistic picture of when you’ll be ready to ship.'
            ],
            [],
            [
              '2. Report on progress - Case 5 provides more detail on how to create filters. View this data in graphical form by clicking  at the top left of your filter view. You can export this data by clicking on More at the top right corner of your filter view:'
            ],
            [],
            [],
            [],
            [
              '3. Customize workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.'
            ],
            [],
            [
              '4. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            [],
            [
              'Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 15'],
            [],
            [],
            [],
            [
              '3. Customize workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.'
            ],
            [],
            [
              '4. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            [],
            [
              'Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:'
            ],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 15'],
            [],
            [],
            ['"""'],
            [],
            ['Scenario: System provides the default case 15']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 15',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "15" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '15',
              'Additional resources for Support Teams',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Description" field in the "View Active Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [
              'Case 8 gives you the first few steps for setting up your help desk, but there are several other tools in FogBugz to help you manage your Support Team:'
            ],
            [],
            [
              "1. Notifications - Know when your customers are responding through in-app notifications. Hover over the  at the top of the left sidebar to see a full list of cases you're subscribed to that have been updated since you last viewed them. To notify someone on a case (like this one, for example), click edit and type their name in the Notify More Users field at the top of the case page."
            ],
            [],
            [
              "2. Case postponement - Sometimes a customer request needs to be revisited at a later point - maybe you want to set a reminder to follow up with them if they haven't responded, or you need to have a developer fix a bug before you can tell the customer it's resolved. Case postponements allow you to resolve a case so that it automatically reopens when the timing is right, either once a related case has been closed, or when you've indicated you need a reminder. This clears the clutter while helping you make sure you answer every customer question on time."
            ],
            [],
            [
              "3. Community Users - Offer your customers transparency by providing them with a login to review the status of issues they've raised. Community Users are free, since they won't have access to your internal conversations about their cases."
            ],
            [],
            [
              '4. Auto-sort capability - Automatically route cases to specific projects and clear spam from your inbox. For best practices on using Auto-sort, read here.'
            ],
            [],
            [
              '5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 16'],
            [],
            [
              "1. Notifications - Know when your customers are responding through in-app notifications. Hover over the  at the top of the left sidebar to see a full list of cases you're subscribed to that have been updated since you last viewed them. To notify someone on a case (like this one, for example), click edit and type their name in the Notify More Users field at the top of the case page."
            ],
            [],
            [
              "2. Case postponement - Sometimes a customer request needs to be revisited at a later point - maybe you want to set a reminder to follow up with them if they haven't responded, or you need to have a developer fix a bug before you can tell the customer it's resolved. Case postponements allow you to resolve a case so that it automatically reopens when the timing is right, either once a related case has been closed, or when you've indicated you need a reminder. This clears the clutter while helping you make sure you answer every customer question on time."
            ],
            [],
            [
              "3. Community Users - Offer your customers transparency by providing them with a login to review the status of issues they've raised. Community Users are free, since they won't have access to your internal conversations about their cases."
            ],
            [],
            [
              '4. Auto-sort capability - Automatically route cases to specific projects and clear spam from your inbox. For best practices on using Auto-sort, read here.'
            ],
            [],
            [
              '5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.'
            ],
            ['"""'],
            [],
            ['Scenario: System provides the default case 16']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'System provides the default case 16',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Priority',
            'Category',
            'Project',
            'Area'
          ],
          td: [
            [
              '16',
              'Intro Case for Administrator',
              'Active',
              '3 - Must Fix',
              'Bug',
              'Onboarding Project',
              'Resources'
            ],
            [],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29184'],
            ['@Case'],
            ['Feature: Case - Delete event'],
            [],
            ['Scenario: User can delete an existing event of a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can delete an existing event of a case',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['16', 'Superman identity', 'Nobody will ever know']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Delete Case Event" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type'],
          td: [
            ['Assigned To'],
            ['Removed By'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31642'],
            ['@Case'],
            ['Feature: Case - Edit - Active Status - Default Assignee'],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Default workflow" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              '<Category Name>',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Unassigned',
              'false'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Category'], td: [['<Category Name>']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Assigned To'],
          td: [
            ['Unassigned'],
            ['Examples:'],
            ['Category Name'],
            ['Bug'],
            ['Feature'],
            ['Schedule Item'],
            ['Inquiry'],
            [],
            ['Category Name'],
            ['Bug'],
            ['Feature'],
            ['Schedule Item'],
            ['Inquiry'],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Default workflow" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              '<Category Name>',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Unassigned',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Category'],
          td: [['17', 'Red rabbit', 'Active', '<Category Name>']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Assigned To'],
          td: [
            ['Unassigned'],
            ['Examples:'],
            ['Category Name'],
            ['Bug'],
            ['Feature'],
            ['Schedule Item'],
            ['Inquiry'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31631'],
            ['@Case'],
            ['Feature: Case - Edit - Active Status'],
            [],
            ['Scenario: User can use active statuses when creating cases'],
            ['Category Name'],
            ['Bug'],
            ['Feature'],
            ['Schedule Item'],
            ['Inquiry'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31631'],
            ['@Case'],
            ['Feature: Case - Edit - Active Status'],
            [],
            ['Scenario: User can use active statuses when creating cases']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can use active statuses when creating cases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following active statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Deleted'],
          td: [
            ['Wrong Item', 'Bug', 'true'],
            ['Correct Item', 'Bug', 'false']
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Status" dropdown in the "View Active Case" page in the following order:',
        table: {
          th: ['Active'],
          td: [
            ['Correct Item'],
            [],
            ['Scenario: User can use active statuses when editing active cases']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can use active statuses when editing active cases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following active statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Deleted'],
          td: [
            ['Wrong Item', 'Bug', 'true'],
            ['Correct Item', 'Bug', 'false']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Active']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Status" dropdown in the "Edit Active Case" page in the following order:',
        table: {
          th: ['Active'],
          td: [
            ['Correct Item'],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29721'],
            ['@Case'],
            ['Feature: Case - Edit - Add Subscribers'],
            [],
            [
              'Scenario Outline: Administrator can edit an active case to add subscriber'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the <Location> of the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user selects the following users from the "Add Subscriber" dropdown in the "Edit Active Case" page:',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Active Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [],
            [
              'Scenario Outline: Administrator can edit a resolved case to add subscriber'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [],
            [
              'Scenario Outline: Administrator can edit a resolved case to add subscriber'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the <Location> of the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user selects the following users from the "Add Subscriber" dropdown in the "Edit Resolved Case" page:',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [],
            [
              'Scenario Outline: Administrator cannot add a subscriber when editing a closed case'
            ],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            [],
            [
              'Scenario Outline: Administrator cannot add a subscriber when editing a closed case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button present at the <Location> of the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown in the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Save" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Closed Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Closed Case" page:',
        table: {
          th: ['Subscriber'],
          td: [
            [],
            ['Examples:'],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31637'],
            ['@Case'],
            ['Feature: Case - Edit - Attachments - Create'],
            [],
            ['Location'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31637'],
            ['@Case'],
            ['Feature: Case - Edit - Attachments - Create'],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'When editing a case user can attach a file',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "not-a-virus.txt" file exists',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status'],
          td: [['17', 'Red rabbit', 'Active']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Attach Files" link in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user uploads the "not-a-virus.txt" file in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Edited By', 'not-a-virus.txt'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31641'],
            ['@Case'],
            ['Feature: Case - Edit - Attachments - Remove'],
            [],
            ['Scenario: User can remove case attachments']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can remove case attachments',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "not-a-virus.txt" file exists',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status'],
          td: [['17', 'Red rabbit', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case events exist:',
        table: {
          th: ['Case', 'Type', 'Content'],
          td: [['17', 'Edited By', 'not-a-virus.txt']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" icon for the "Edited By" case event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Delete" icon for the "not-a-virus.txt" attachment in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button for the "Edited By" case event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Edited By', 'not-a-virus.txt (deleted)'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31636'],
            ['@Case'],
            ['Feature: Case - Edit - Attachments - Untrusted file types'],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'When editing a case and appending an untrusted file - an unsafe prefix is added to the file name',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "virus.exe" file exists',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status'],
          td: [['17', 'Red rabbit', 'Active']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Attach Files" link in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user uploads the "virus.exe" file in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Edited By', 'virus.exe.unsafe'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29125'],
            ['@Case'],
            ['Feature: Case - Edit comment'],
            [],
            ['Scenario: User can edit an existing comment for a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can edit an existing comment for a case',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['16', 'Superman identity', 'Nobody will ever know']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Content'], td: [['Yet another value']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Editing Event" form is not shown for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Opened By', 'Yet another value'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31643'],
            ['@Case'],
            [
              'Feature: Case - Edit - Disable Assignee Field when assignee is forced'
            ],
            []
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Default workflow" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              '<Category Name>',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Unassigned',
              'true'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Category'], td: [['<Category Name>']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: { th: ['Assigned To'], td: [['Unassigned']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: {
          th: ['Category Name'],
          td: [['Bug'], ['Feature'], ['Schedule Item'], ['Inquiry'], []]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Default workflow" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              '<Category Name>',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Unassigned',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Category'],
          td: [['17', 'Red rabbit', 'Active', '<Category Name>']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: { th: ['Assigned To'], td: [['Unassigned']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: {
          th: ['Category Name'],
          td: [
            ['Bug'],
            ['Feature'],
            ['Schedule Item'],
            ['Inquiry'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31632'],
            ['@Case'],
            ['Feature: Case - Edit - Resolved Status'],
            [],
            [
              'Scenario: User can use resolved statuses when editing resolved cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can use resolved statuses when editing resolved cases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following resolved statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Deleted'],
          td: [
            ['Wrong Item', 'Bug', 'true'],
            ['Correct Item', 'Bug', 'false']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Resolved']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Edit Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following values are available for the "Status" dropdown in the "Edit Resolved Case" page in the following order:',
        table: {
          th: ['Active'],
          td: [
            ['Correct Item'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29115'],
            ['@Case'],
            ['Feature: Case - Edit'],
            [],
            [
              '# This scenario covers only a few fields in the case edit page, since other fields will be covered by FSes for'
            ],
            [
              "# fields-specific components. For example, editing case's project and project area will be covered"
            ],
            ['# by reworking MANUSCRIPT-23410'],
            ['Scenario Outline: User can edit an existing case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Priority'],
          td: [['17', 'First Case', 'Must Fix']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Edit" button in the <Panel Position> panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case details in the "Edit Active Case" page:',
        table: { th: ['Title', 'Priority'], td: [['New Title', "Don't Fix"]] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Title', 'Priority'],
          td: [
            ['New Title', "Don't Fix"],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31794'],
            ['@Case'],
            ['Feature: Case - Email Events'],
            [],
            ['Scenario: Opening a case by sending email creates a case event'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31794'],
            ['@Case'],
            ['Feature: Case - Email Events'],
            [],
            ['Scenario: Opening a case by sending email creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Opening a case by sending email creates a case event',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Email" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Email" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "New Email" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [['nobody@nowhere.com', 'Live Matters', 'Fight back!']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Send" button in the "New Email" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'User', 'Date'],
          td: [
            ['Emailed By', 'Administrator', '"Current time within 5 minutes"']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Emailed By" case event in the "View Active Case" page has the following content:',
        table: {
          th: ['"""'],
          td: [
            ['From: FogBugz <{{instance-name}}.fogbugz.com>'],
            ['Date: {{current-date}}'],
            ['To: "nobody@nowhere.com" <nobody@nowhere.com>'],
            ['Subject: (Case 17) Live Matters'],
            [],
            ['Fight Back!'],
            ['"""'],
            [],
            ['Scenario: Replying in a case creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Replying in a case creates a case event',
    steps: [
      {
        description: 'Check the outcome',
        outcome: 'The following case events exist:',
        table: {
          th: ['Case', 'Type', 'User', 'Date'],
          td: [
            [
              '17',
              'Emailed By',
              'Administrator',
              '"Current time within 5 minutes"'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Emailed By" case event in the "View Active Case" page has the following content:',
        table: {
          th: ['"""'],
          td: [
            ['From: FogBugz <{{instance-name}}.fogbugz.com>'],
            ['Date: {{current-date}}'],
            ['To: "nobody@nowhere.com" <nobody@nowhere.com>'],
            ['Subject: (Case 17) Live Matters'],
            [],
            ['Fight Back!'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reply" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "View Active Case" page:',
        table: { th: ['Description'], td: [['I agree']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Send" button in the "New Email" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'User', 'Date'],
          td: [
            ['Replied By', 'Administrator', '"Current time within 5 minutes"']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Emailed By" case event in the "View Active Case" page has the following content:',
        table: {
          th: ['"""'],
          td: [
            ['Date: {{current-date}}'],
            ['From: "FogBugz" <{{instance-name}}.fogbugz.com>'],
            ['To: "nobody@nowhere.com" <nobody@nowhere.com>'],
            ['Subject: Re: (Case 20) Live Matters'],
            [],
            ['I agree'],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@{{instance-name}}.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""'],
            [],
            ['Scenario: Forwarding an email in a case creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Forwarding an email in a case creates a case event',
    steps: [
      {
        description: 'Check the outcome',
        outcome: 'The following case events exist:',
        table: {
          th: ['Case', 'Type', 'User', 'Date'],
          td: [
            [
              '17',
              'Emailed By',
              'Administrator',
              '"Current time within 5 minutes"'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Emailed By" case event in the "View Active Case" page has the following content:',
        table: {
          th: ['"""'],
          td: [
            ['From: FogBugz <{{instance-name}}.fogbugz.com>'],
            ['Date: {{current-date}}'],
            ['To: "nobody@nowhere.com" <nobody@nowhere.com>'],
            ['Subject: (Case 17) Live Matters'],
            [],
            ['Fight Back!'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Forward" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "View Active Case" page:',
        table: {
          th: ['Description', 'To'],
          td: [['I agree', 'gman@nowhere.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Send" button in the "New Email" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'User', 'Date'],
          td: [
            ['Forwarded By', 'Administrator', '"Current time within 5 minutes"']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Emailed By" case event in the "View Active Case" page has the following content:',
        table: {
          th: ['"""'],
          td: [
            ['Date: {{current-date}}'],
            ['From: "FogBugz" <cases@{{instance-name}}.fogbugz.com>'],
            ['To: "mrstollman@nowhere.com" <mrstollman@nowhere.com>'],
            ['Subject: Fw: (Case 17) Live Matters'],
            [],
            ['I agree'],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@{{instance-name}}.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""'],
            [],
            ['@PartiallyAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29452'],
            ['@Case'],
            ['Feature: Case - No Description'],
            [],
            ['Scenario: User can create a case without description']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can create a case without description',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: { th: ['Title'], td: [['Superman identity']] }
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: { th: ['Type', 'Content'], td: [['Opened By']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user cannot click the "Edit" button for the "Opened By" event in the "View Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'When creating a case user can be notified by email and notifications',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full name', 'Email', 'Password'],
          td: [
            ['lk', 'lk@jungle.com', 'fb123'],
            ['bk', 'bk@jungle.com', 'fb123'],
            ['u1', 'u1@jungle.com', 'fb123']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Notify More Users', 'Assigned To'],
          td: [['Capital', 'lk, bk, u1', 'Unassigned']]
        }
      },
      {
        description: 'The user clicks the "Open" button',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the login details in the "Login" form in the "Login" page:',
        table: { th: ['Email', 'Password'], td: [['lk@jungle.com', 'fb123']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Login" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user hovers over the "Notifications" icon in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following notifications are shown in the sidebar menu:',
        table: {
          th: ['Type', 'Title', 'Read'],
          td: [['Notify', '17: Capital', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the login details in the "Login" form in the "Login" page:',
        table: { th: ['Email', 'Password'], td: [['bk@jungle.com', 'fb123']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Login" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user hovers over the "Notifications" icon in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following notifications are shown in the sidebar menu:',
        table: {
          th: ['Type', 'Title', 'Read'],
          td: [['Notify', '17: Capital', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the login details in the "Login" form in the "Login" page:',
        table: { th: ['Email', 'Password'], td: [['u1@jungle.com', 'fb123']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Login" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user hovers over the "Notifications" icon in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following notifications are shown in the sidebar menu:',
        table: {
          th: ['Type', 'Title', 'Read'],
          td: [
            ['Notify', '17: Capital', 'false'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30065'],
            ['@Case'],
            ['Feature: Case - Project - Changed Workflow - Create case'],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [
            ['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old'],
            [],
            [
              'Scenario Outline: Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Primary Contact" or "No Change"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: {
          th: ['Assign To'],
          td: [
            ['-- Primary Contact --'],
            ['-- No Change --'],
            [],
            [
              'Scenario: Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Case Opener"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: {
          th: ['Assign To'],
          td: [
            ['-- Primary Contact --'],
            ['-- No Change --'],
            [],
            [
              'Scenario: Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Case Opener"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Inquiry',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Inquiry',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              '<Force Assign To>'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Title', 'Project', 'Area', 'Description'],
          td: [
            [
              'Anonymous Case',
              'FogBugz (5k Rewrite)',
              'Misc',
              'The Anonymous Case!'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', '(Open) Anonymous Case', 'The Anonymous Case!']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Description',
            'Project',
            'Area',
            'Milestone',
            'Category',
            'Assigned To',
            'Status'
          ],
          td: [
            [
              '17',
              'Anonymous Case',
              'The Anonymous Case!',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Inquiry',
              'Ticket Factory',
              'Active'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: {
          th: ['Assign To', 'Force Assign To'],
          td: [
            ['-- Primary Contact --', 'false'],
            ['-- Case Opener --', 'false'],
            ['-- No Change --', 'false'],
            ['-- Primary Contact --', 'true'],
            ['-- Case Opener --', 'true'],
            ['-- No Change --', 'true'],
            [],
            [
              'Scenario Outline: Changed project workflow: Create public case: Project workflow rule: Default case category for new emails ("Inquiry") and default active status: "Assign To" is set to a specific user'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Inquiry',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              '<Force Assign To>'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Title', 'Project', 'Area', 'Description'],
          td: [
            [
              'Anonymous Case',
              'FogBugz (5k Rewrite)',
              'Misc',
              'The Anonymous Case!'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', '(Open) Anonymous Case', 'The Anonymous Case!']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Description',
            'Project',
            'Area',
            'Milestone',
            'Category',
            'Assigned To',
            'Status'
          ],
          td: [
            [
              '17',
              'Anonymous Case',
              'The Anonymous Case!',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Inquiry',
              'Ticker Implementor',
              'Active'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: {
          th: ['Force Assign To'],
          td: [
            ['false'],
            ['true'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30066'],
            ['@Case'],
            [
              'Feature: Case - Project - Changed Workflow - Edit status of active case'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following active statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Active (Custom)', 'Customer Feature', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [
            ['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old'],
            [],
            [
              'Scenario: Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following resolved statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Resolved (Custom)', 'Customer Feature', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Resolved (Completed)'
            ],
            [],
            [
              'Scenario: Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee - Old',
              'Resolved (Completed)'
            ],
            [],
            [
              'Scenario: Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Resolver --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Resolver --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Closed (Completed)'
            ],
            [],
            [
              'Scenario: Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Resolver --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Closer"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Closer --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Closer (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Resolver --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Closer"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Closer --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Closer (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            [
              'Ticker Assignee - Old',
              'admin-old@ticket-assignee.com',
              'Normal'
            ],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: {
          th: ['Workflow Name'],
          td: [['5k Rewrite'], ['5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "5k Rewrite - Old" workflow has the following workflow rules:',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              'Ticker Assignee - Old',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite - Old']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee - Old',
              'Active'
            ],
            [],
            [
              'Scenario: Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Changed project workflow: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Avatar" icon at the bottom-left part in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Projects" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Projects" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "FogBugz (5k Rewrite)" project row in the "Projects" table in the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the project details in the "Edit Project" page:',
        table: { th: ['Workflow'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button in the "Edit Project" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Projects" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [
            ['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite'],
            [],
            [
              'Scenario Outline: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Primary Contact" or "No Change"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              'false'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: {
          th: ['Assign To'],
          td: [
            ['-- Primary Contact --'],
            ['-- No Change --'],
            [],
            [
              'Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Case Opener"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Create case: Project workflow rule: Default case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Assigned To" dropdown is enabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              'true'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: {
          th: ['Assign To'],
          td: [
            ['-- Primary Contact --'],
            ['-- No Change --'],
            [],
            [
              'Scenario: Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Case Opener"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Create case: Project workflow rule: Default case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the case details in the "New Case" page:',
        table: {
          th: ['Title', 'Project'],
          td: [['Test Workflow Case', 'FogBugz (5k Rewrite)']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following case details are shown in the "New Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "New Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Inquiry',
              'Creating or Editing the status of an Active Case',
              'Active',
              '<Assign To>',
              '<Force Assign To>'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Title', 'Project', 'Area', 'Description'],
          td: [
            [
              'Anonymous Case',
              'FogBugz (5k Rewrite)',
              'Misc',
              'The Anonymous Case!'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', '(Open) Anonymous Case', 'The Anonymous Case!']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Description',
            'Project',
            'Area',
            'Milestone',
            'Category',
            'Assigned To',
            'Status'
          ],
          td: [
            [
              '17',
              'Anonymous Case',
              'The Anonymous Case!',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Inquiry',
              'Ticket Factory',
              'Active'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: {
          th: ['Assign To', 'Force Assign To'],
          td: [
            ['-- Primary Contact --', 'false'],
            ['-- Case Opener --', 'false'],
            ['-- No Change --', 'false'],
            ['-- Primary Contact --', 'true'],
            ['-- Case Opener --', 'true'],
            ['-- No Change --', 'true'],
            [],
            [
              'Scenario Outline: Create public case: Project workflow rule: Default case category for new emails ("Inquiry") and default active status: "Assign To" is set to a specific user'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Inquiry',
              'Creating or Editing the status of an Active Case',
              'Active',
              'Ticker Implementor',
              '<Force Assign To>'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user logs out',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Public Case" page',
        table: null
      },
      {
        description:
          'The user enters the public case details in the "New Public Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Title', 'Project', 'Area', 'Description'],
          td: [
            [
              'Anonymous Case',
              'FogBugz (5k Rewrite)',
              'Misc',
              'The Anonymous Case!'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "New Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', '(Open) Anonymous Case', 'The Anonymous Case!']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is logged in as Administrator',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Description',
            'Project',
            'Area',
            'Milestone',
            'Category',
            'Assigned To',
            'Status'
          ],
          td: [
            [
              '17',
              'Anonymous Case',
              'The Anonymous Case!',
              'FogBugz (5k Rewrite)',
              'Misc',
              'All projects: Undecided',
              'Inquiry',
              'Ticker Implementor',
              'Active'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: {
          th: ['Force Assign To'],
          td: [
            ['false'],
            ['true'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29928'],
            ['@Case'],
            ['Feature: Case - Project - Workflow - Edit status of active case'],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following active statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Active (Custom)', 'Customer Feature', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Active'
            ],
            [],
            [
              'Scenario: Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of active case: Project workflow rule: Current case category and custom active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Creating or Editing the status of an Active Case',
              'Active (Custom)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Active (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following resolved statuses exist in the following display order:',
        table: {
          th: ['Status Name', 'Category', 'Default'],
          td: [['Resolved (Custom)', 'Customer Feature', 'false']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Resolved (Completed)'
            ],
            [],
            [
              'Scenario: Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Edit status of resolved case: Project workflow rule: Current case category and custom resolved status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Custom)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the top panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Status'], td: [['Resolved (Custom)']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Custom)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Resolved (Completed)'
            ],
            [],
            [
              'Scenario: Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Resolver --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              '-- Case Resolver --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reactivate resolved case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reactivating a Resolved Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the top panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Closed (Completed)'
            ],
            [],
            [
              'Scenario: Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Resolver --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to "Case Closer"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Closer --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Closer (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Resolver"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Resolver --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Resolver (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to "Case Closer"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              '-- Case Closer --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Case Closer (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Reopen closed case: Project workflow rule: Current case category and default active status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Reopening a Closed Case',
              'Active',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the top panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Active Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Active',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type'],
          td: [
            ['Ticker Assignee', 'admin@ticket-assignee.com', 'Normal'],
            ['Ticket Factory', 'admin@ticket-factory.com', 'Normal'],
            ['Ticker Implementor', 'admin@ticket-implementor.com', 'Normal']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following categories exist in the following display order:',
        table: {
          th: ['Category Name', 'Plural Name', 'Icon', 'Default'],
          td: [['Customer Feature', 'Customer Features', 'Feature', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following workflows exist:',
        table: { th: ['Workflow Name'], td: [['5k Rewrite']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following projects exist:',
        table: {
          th: ['Project Name', 'Primary Contact', 'Workflow'],
          td: [['FogBugz (5k Rewrite)', 'Ticket Factory', '5k Rewrite']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Project', 'Assigned To', 'Status'],
          td: [
            [
              '17',
              'Test Case',
              'FogBugz (5k Rewrite)',
              'Ticker Assignee',
              'Active'
            ],
            [],
            [
              'Scenario: Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Primary Contact"'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Primary Contact --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- No Change --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Case Opener --',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is set to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              'Ticker Implementor',
              'false'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is enabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "Primary Contact"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Primary Contact --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Primary Contact (Ticket Factory)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "No Change"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- No Change --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'No Change (Ticker Assignee)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to "Case Opener"',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              '-- Case Opener --',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Case Opener (Administrator)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Resolve case: Project workflow rule: Current case category and default resolved status: "Assign To" is forced to a specific user',
    steps: [
      {
        description:
          'The "5k Rewrite" workflow has the following workflow rules:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Category',
            'Action',
            'Status',
            'Assign To',
            'Force "Assign To"'
          ],
          td: [
            [
              'Customer Feature',
              'Resolving a Case',
              'Resolved (Completed)',
              'Ticker Implementor',
              'true'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the top panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Project', 'Category', 'Status', 'Assigned To'],
          td: [
            [
              'FogBugz (5k Rewrite)',
              'Customer Feature',
              'Resolved (Completed)',
              'Default Assignee (Ticker Implementor)'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Assigned To" dropdown is disabled in the "Edit Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['16', 'First Case', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the <Panel Position> panel in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reactivate" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Title', 'Status'],
          td: [
            ['First Case', 'Active'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30412'],
            ['@Case'],
            ['Feature: Case - Related case - Add and Remove - Edit comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30412'],
            ['@Case'],
            ['Feature: Case - Related case - Add and Remove - Edit comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following user options exist:',
        table: {
          th: ['Language'],
          td: [
            ['Spanish (Spain)'],
            [],
            [
              'Scenario Outline: User can remove all related cases ("See also" field) by editing an existing comment to remove all the related case comments (mentions): Many related cases: One comment'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            [
              '20',
              'Fourth case',
              'The Caso       #####   3   .\\nThe Bug        #####   2   .\\nThe Case       #####   1   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Content'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By'], ['Assigned To'], ['Opened By', '<Description>']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Opened by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Examples:'],
            ['Description'],
            ['Cleaned up!'],
            [],
            [
              'Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: One comment'
            ],
            ['Description'],
            ['Cleaned up!'],
            [],
            [
              'Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: One comment'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            [
              '20',
              'Fourth case',
              'The Caso       #####   3   .\\nThe Bug        #####   2   .\\nThe Case       #####   1   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Content'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By'], ['Assigned To'], ['Opened By', '<Description>']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['Case 17, 18, 19']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 17', '17'],
            ['18', '18'],
            ['19', '19']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Opened by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Caso       #####   19', '19'],
            ['Bug        #####   17', '17'],
            ['The Case       #####   18', '18'],
            ['Examples:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            [
              'Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: Two comments'
            ],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            [
              'Scenario Outline: User can add and remove related cases ("See also" field) by editing an existing comment with specific description: Many related cases: Two comments'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            [
              '20',
              'Fourth case',
              'The Caso       #####   3   .\\nThe Bug        #####   2   .\\nThe Case       #####   1   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case details in the "Edit Active Case" page:',
        table: {
          th: ['Description'],
          td: [
            [
              'The Caso       #####   3   .\\nThe Bug        #####   2   .\\nThe Case       #####   1   .\\nThe Caso       #####   6   .\\nThe Bug        #####   5   .\\nThe Case       #####   4   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button for the "Edited By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Editing Event" form is shown for the "Edited By" event in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the event details in the "Editing Event" form for the "Edited By" event in the "View Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Content'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Editing Event" form for the "Edited By" event in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Edited By'],
            ['Edited By', '<Description>'],
            ['Assigned To'],
            ['Opened By']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['Case 1, 2, 3, 7, 8, 9, 17, 18, 19']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 1', '1'],
            ['2', '2'],
            ['3', '3'],
            ['7', '17'],
            ['8', '18'],
            ['9', '19'],
            ['17', '17'],
            ['18', '18'],
            ['19', '19']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Caso       #####   9', '9'],
            ['Bug        #####   8', '8'],
            ['The Case       #####   7', '7'],
            ['Caso       #####   19', '19'],
            ['Bug        #####   17', '17'],
            ['The Case       #####   18', '18'],
            ['Examples:'],
            ['Description'],
            [
              'The Caso       #####   9   .\\nThe Bug        #####   8   .\\nThe Case       #####   7   .\\nThe Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30058'],
            ['@Case'],
            ['Feature: Case - Related case - Add - Create comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            ['Description'],
            [
              'The Caso       #####   9   .\\nThe Bug        #####   8   .\\nThe Case       #####   7   .\\nThe Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30058'],
            ['@Case'],
            ['Feature: Case - Related case - Add - Create comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following user options exist:',
        table: {
          th: ['Language'],
          td: [
            ['Spanish (Spain)'],
            [],
            [
              'Scenario Outline: User can add a related case ("See also" field) by creating a comment with specific description: One related case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Description'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By', '<Description>'], ['Assigned To'], ['Opened By']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['<See Also Link Text>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [['<See Also Link Text>', '<Destination Case ID>']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['<Description Link Text>', '<Destination Case ID>'],
            ['Examples:'],
            [
              'Description',
              'Destination Case ID',
              'Description Link Text',
              'See Also Link Text'
            ],
            ['Bug 17', '17', 'Bug 17', 'Case 17'],
            ['Case 17', '17', 'Case 17', 'Case 17'],
            ['Caso 17', '17', 'Caso 17', 'Case 17'],
            ['Bug #17', '17', 'Bug #17', 'Case 17'],
            ['Case #17', '17', 'Case #17', 'Case 17'],
            ['Caso #17', '17', 'Caso #17', 'Case 17'],
            [
              'The Bug        #####   17   .',
              '17',
              'Bug        #####   17',
              'Case 17'
            ],
            [
              'The Case       #####   17   .',
              '17',
              'Case       #####   17',
              'Case 17'
            ],
            [
              'The Caso       #####   17   .',
              '17',
              'Caso       #####   17',
              'Case 17'
            ],
            [],
            [
              'Scenario Outline: User can add a related case ("See also" field) by creating a comment with specific description: Many related cases'
            ],
            [
              'Description',
              'Destination Case ID',
              'Description Link Text',
              'See Also Link Text'
            ],
            ['Bug 17', '17', 'Bug 17', 'Case 17'],
            ['Case 17', '17', 'Case 17', 'Case 17'],
            ['Caso 17', '17', 'Caso 17', 'Case 17'],
            ['Bug #17', '17', 'Bug #17', 'Case 17'],
            ['Case #17', '17', 'Case #17', 'Case 17'],
            ['Caso #17', '17', 'Caso #17', 'Case 17'],
            [
              'The Bug        #####   17   .',
              '17',
              'Bug        #####   17',
              'Case 17'
            ],
            [
              'The Case       #####   17   .',
              '17',
              'Case       #####   17',
              'Case 17'
            ],
            [
              'The Caso       #####   17   .',
              '17',
              'Caso       #####   17',
              'Case 17'
            ],
            [],
            [
              'Scenario Outline: User can add a related case ("See also" field) by creating a comment with specific description: Many related cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            ['20', 'Fourth case', 'The fourth one!']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Description'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By', '<Description>'], ['Assigned To'], ['Opened By']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['Case 17, 18, 19']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 17', '17'],
            ['18', '18'],
            ['19', '19']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Caso       #####   19', '19'],
            ['Bug        #####   17', '17'],
            ['The Case       #####   18', '18'],
            ['Examples:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30059'],
            ['@Case'],
            ['Feature: Case - Related case - Remove - Delete comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30059'],
            ['@Case'],
            ['Feature: Case - Related case - Remove - Delete comment'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following user options exist:',
        table: {
          th: ['Language'],
          td: [
            ['Spanish (Spain)'],
            [],
            [
              'Scenario Outline: User can remove a related case ("See also" field) by deleting all the related case comments (mentions): One related case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', '<Description>']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Delete Case Event" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type'],
          td: [
            ['Edited By'],
            ['Assigned To'],
            ['Removed By'],
            ['Examples:'],
            ['Description'],
            ['Bug 17'],
            ['Case 17'],
            ['Caso 17'],
            ['Bug #17'],
            ['Case #17'],
            ['Caso #17'],
            ['The Bug        #####   17   .'],
            ['The Case       #####   17   .'],
            ['The Caso       #####   17   .'],
            [],
            [
              'Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): One related case'
            ],
            ['Description'],
            ['Bug 17'],
            ['Case 17'],
            ['Caso 17'],
            ['Bug #17'],
            ['Case #17'],
            ['Caso #17'],
            ['The Bug        #####   17   .'],
            ['The Case       #####   17   .'],
            ['The Caso       #####   17   .'],
            [],
            [
              'Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): One related case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', '<Description>']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case details in the "Edit Active Case" page:',
        table: { th: ['Description'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Delete Case Event" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "Edit Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [['<See Also Link Text>', '<Destination Case ID>']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By', '<Description>'], ['Assigned To'], ['Removed By']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['<See Also Link Text>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [['<See Also Link Text>', '<Destination Case ID>']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['<Description Link Text>', '<Destination Case ID>'],
            ['Examples:'],
            [
              'Description',
              'Destination Case ID',
              'Description Link Text',
              'See Also Link Text'
            ],
            ['Bug 17', '17', 'Bug 17', 'Case 17'],
            ['Case 17', '17', 'Case 17', 'Case 17'],
            ['Caso 17', '17', 'Caso 17', 'Case 17'],
            ['Bug #17', '17', 'Bug #17', 'Case 17'],
            ['Case #17', '17', 'Case #17', 'Case 17'],
            ['Caso #17', '17', 'Caso #17', 'Case 17'],
            [
              'The Bug        #####   17   .',
              '17',
              'Bug        #####   17',
              'Case 17'
            ],
            [
              'The Case       #####   17   .',
              '17',
              'Case       #####   17',
              'Case 17'
            ],
            [
              'The Caso       #####   17   .',
              '17',
              'Caso       #####   17',
              'Case 17'
            ],
            [],
            [
              'Scenario Outline: User can remove a related case ("See also" field) by deleting all the related case comments (mentions): Many related cases'
            ],
            [
              'Description',
              'Destination Case ID',
              'Description Link Text',
              'See Also Link Text'
            ],
            ['Bug 17', '17', 'Bug 17', 'Case 17'],
            ['Case 17', '17', 'Case 17', 'Case 17'],
            ['Caso 17', '17', 'Caso 17', 'Case 17'],
            ['Bug #17', '17', 'Bug #17', 'Case 17'],
            ['Case #17', '17', 'Case #17', 'Case 17'],
            ['Caso #17', '17', 'Caso #17', 'Case 17'],
            [
              'The Bug        #####   17   .',
              '17',
              'Bug        #####   17',
              'Case 17'
            ],
            [
              'The Case       #####   17   .',
              '17',
              'Case       #####   17',
              'Case 17'
            ],
            [
              'The Caso       #####   17   .',
              '17',
              'Caso       #####   17',
              'Case 17'
            ],
            [],
            [
              'Scenario Outline: User can remove a related case ("See also" field) by deleting all the related case comments (mentions): Many related cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            ['20', 'Fourth case', '<Description>']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Delete Case Event" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type'],
          td: [
            ['Edited By'],
            ['Assigned To'],
            ['Removed By'],
            ['Examples:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            [
              'Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): Many related cases'
            ],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            [
              'Scenario Outline: User cannot remove a related case ("See also" field) by deleting not all the related case comments (mentions): Many related cases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            ['20', 'Fourth case', '<Description>']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case details in the "Edit Active Case" page:',
        table: { th: ['Description'], td: [['<Description>']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Delete Case Event" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "Edit Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 17', '17'],
            ['18', '18'],
            ['19', '19']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [['Edited By', '<Description>'], ['Assigned To'], ['Opened By']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['Case 17, 18, 19']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 17', '17'],
            ['18', '18'],
            ['19', '19']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following description links are listed for the "Edited by" case event in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Caso       #####   19', '19'],
            ['Bug        #####   17', '17'],
            ['The Case       #####   18', '18'],
            ['Examples:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30060'],
            ['@Case'],
            ['Feature: Case - Related case - View all'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            ['Description'],
            [
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30060'],
            ['@Case'],
            ['Feature: Case - Related case - View all'],
            [],
            [
              '# NOTE: The original implementation uses the following regular expressions:'
            ],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug[zs](?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*ID(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*:(?:',
              '\\t',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>)*)(\\d+)\\b'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            [],
            [
              '# NOTE: Discussed with and confirmed by Gennadii Nikolaev to use only the following regular expressions:'
            ],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:'],
            [
              '# \\b(Bug(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(Case(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            [
              '# \\b(" + FB_CASE + "(?:',
              '\\t',
              '#',
              '&nbsp;',
              '\\r',
              '\\n',
              '<br[^>]*>',
              '\\xA0)*)(\\d+)\\b'
            ],
            ['#'],
            [
              "# `FB_CASE` represents the `Case` word in the user's language (user settings)."
            ],
            ['#'],
            [
              '# In addition, all of the recognized references must be represented as hyperlinks!'
            ],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following user options exist:',
        table: {
          th: ['Language'],
          td: [
            ['Spanish (Spain)'],
            [],
            [
              'Scenario Outline: User can view all related cases ("See also" field): No related cases: "See also" field is not shown'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [['17', 'First case', '<Description>']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "See also" field is not shown in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            ['Assigned To'],
            ['Opened By', '<Description>'],
            ['Examples:'],
            ['Description'],
            ['The first one!'],
            [],
            [
              'Scenario: User can view all related cases ("See also" field): Many related cases: Many comments'
            ],
            ['Description'],
            ['The first one!'],
            [],
            [
              'Scenario: User can view all related cases ("See also" field): Many related cases: Many comments'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can view all related cases ("See also" field): Many related cases: Many comments',
    steps: [
      {
        description: 'The following cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Description'],
          td: [
            ['17', 'First case', 'The first one!'],
            ['18', 'Second case', 'The second one!'],
            ['19', 'Third case', 'The third one!'],
            [
              '20',
              'Fourth case',
              'The Caso       #####   19   .\\nThe Bug        #####   17   .\\nThe Case       #####   18   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "20" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description:
          'The user enters the case details in the "Edit Active Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['Description'],
          td: [
            [
              'The Caso       #####   9   .\\nThe Bug        #####   7   .\\nThe Case       #####   8   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Edit" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case details in the "Edit Active Case" page:',
        table: {
          th: ['Description'],
          td: [
            [
              'The Caso       #####   3   .\\nThe Bug        #####   1   .\\nThe Case       #####   2   .'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Save" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content'],
          td: [
            [
              'Edited By',
              'The Caso       #####   3   .\\nThe Bug        #####   1   .\\nThe Case       #####   2   .'
            ],
            [
              'Edited By',
              'The Caso       #####   9   .\\nThe Bug        #####   7   .\\nThe Case       #####   8   .'
            ],
            ['Assigned To'],
            ['Opened By']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['See also'], td: [['Case 1, 2, 3, 7, 8, 9, 17, 18, 19']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case links are listed in the "See also" field in the "View Active Case" page in the following order:',
        table: {
          th: ['Link Text', 'Destination Case ID'],
          td: [
            ['Case 1', '1'],
            ['2', '2'],
            ['3', '3'],
            ['7', '7'],
            ['8', '8'],
            ['9', '9'],
            ['17', '17'],
            ['18', '18'],
            ['19', '19'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29123'],
            ['@Case'],
            ['Feature: Case - Reopen closed case'],
            [],
            ['Scenario Outline: User can reopen a closed case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['16', 'First Case', 'Closed']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the <Panel Position> panel in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reopen" button in the "Edit Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Title', 'Status'],
          td: [
            ['First Case', 'Active'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29120'],
            ['@Case'],
            ['Feature: Case - Resolve and close'],
            [],
            ['Scenario Outline: User can resolve and close a case'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29120'],
            ['@Case'],
            ['Feature: Case - Resolve and close'],
            [],
            ['Scenario Outline: User can resolve and close a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['16', 'First Case', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the <Panel Position> panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve & Close" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Iteration Planner" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Closed Case" page:',
        table: {
          th: ['Title', 'Status'],
          td: [
            ['First Case', 'Closed (Fixed)'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30000'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Current'],
            [],
            ['Scenario: User can see current estimation when resolving a case'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30000'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Current'],
            [],
            ['Scenario: User can see current estimation when resolving a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate: current'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30004'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Elapsed'],
            [],
            ['Scenario: User can see elapsed estimation when resolving a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate: elapsed'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30016'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Original'],
            [],
            ['Scenario: User can see original estimation when resolving a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original'],
          td: [['16', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate: original'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30365'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Remaining'],
            [],
            [
              'Scenario: User can see remaining estimation when resolving a case'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: remaining'],
          td: [['17', 'New Case to handle', 'Active', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate: remaining'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30027'],
            ['@Case'],
            ['Feature: Case - Resolve - Estimation - Toggle Work'],
            [],
            ['Scenario: User can start working when resolving a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['17', 'New Case to handle', 'Active', '1 hour']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Start Work" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['Scenario: User can stop working when resolving a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop working when resolving a case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: current',
            'Working On This Case'
          ],
          td: [
            ['17', 'New Case to handle', 'Active', '1 hour', 'Administrator']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Stop Work" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30008'],
            ['@Case'],
            ['Feature: Case - Resolve - With Subcases - Estimation - Current'],
            [],
            [
              'Scenario: User can see current estimation when resolving a case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation when resolving a case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current', 'Subcases'],
          td: [
            ['17', 'New Case to handle', 'Active', '1 hours', 'subc'],
            ['18', 'subc', 'Active', '1 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: { th: ['Estimate (incl. subcases): current'], td: [['2 hours']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "current: 2 hours" link in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30012'],
            ['@Case'],
            ['Feature: Case - Resolve - With Subcases - Estimation - Elapsed'],
            [],
            [
              'Scenario: User can see elapsed estimation when resolving a case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation when resolving a case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed', 'Subcases'],
          td: [
            ['17', 'New Case to handle', 'Active', '1 hours', 'subc'],
            ['18', 'subc', 'Active', '1 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): elapsed'],
          td: [
            ['2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30020'],
            ['@Case'],
            ['Feature: Case - Resolve - With Subcases - Estimation - Original'],
            [],
            [
              'Scenario: User can see original estimation when resolving a case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can see original estimation when resolving a case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original', 'Subcases'],
          td: [
            ['17', 'New Case to handle', 'Active', '1 hours', 'subc'],
            ['18', 'subc', 'Active', '1 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): original'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "original: 2 hours" link in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30369'],
            ['@Case'],
            [
              'Feature: Case - Resolve - With Subcases - Estimation - Remaining'
            ],
            [],
            [
              'Scenario: User can see remaining estimation when resolving a case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'User can see remaining estimation when resolving a case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: original',
            'Estimation: elapsed',
            'Estimate: remaining',
            'Subcases'
          ],
          td: [
            ['17', 'Subc', 'Active', '4 hours', '3 hours', '1 hour'],
            ['18', 'Parentc', 'Active', '4 hours', '3 hours', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Active Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): remaining'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "remaining: 2 hours" link in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "This Case" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Subcases" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Total" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [
            ['8 hours', '6 hours', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29119'],
            ['@Case'],
            ['Feature: Case - Resolve'],
            [],
            ['Scenario Outline: User can resolve a case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['16', 'First Case', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the <Panel Position> panel in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Title', 'Status'],
          td: [
            ['First Case', 'Resolved (Fixed)'],
            ['Examples:'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29715'],
            ['@Case'],
            ['Feature: Case - Resolved - Add Subscribers'],
            [],
            ['Scenario: Administrator can add subscriber to a resolved case'],
            ['Panel Position'],
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29715'],
            ['@Case'],
            ['Feature: Case - Resolved - Add Subscribers'],
            [],
            ['Scenario: Administrator can add subscriber to a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can add subscriber to a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29701'],
            ['@Case'],
            ['Feature: Case - Resolved - Enable Add Subscribers'],
            [],
            [
              'Scenario: Administrator can add subscribers to a resolved case when add subscribers setting is enabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can add subscribers to a resolved case when add subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "16" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Add Subscriber" dropdown in the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user selects the following users from the "Add Subscriber" dropdown in the "View Resolved Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Test UserA'], td: [] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Add Subscriber" dropdown is closed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator cannot add subscribers to a resolved case when add subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot add subscribers to a resolved case when add subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Add Subscribers'],
          td: [
            [
              'The case page will not show a section for adding subscriptions for other users'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Add Subscriber" dropdown is not shown on "View Resolved Case" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator can view subscriber of an resolved case when show subscribers setting is enabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            [
              'Scenario: Administrator cannot view subscriber of an resolved case when show subscribers setting is disabled in the site configuration'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name:
      'Administrator cannot view subscriber of an resolved case when show subscribers setting is disabled in the site configuration',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Show Subscribers'],
          td: [
            [
              'The case page will not show users who have subscribed to the current case'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Subscribers'],
          td: [
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30001'],
            ['@Case'],
            ['Feature: Case - Resolved - Estimation - Current'],
            [],
            ['Scenario: User can see current estimation of a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation of a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['16', 'New Case to handle', 'Resolved', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate: current'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30005'],
            ['@Case'],
            ['Feature: Case - Resolved - Estimation - Elapsed'],
            [],
            ['Scenario: User can see elapsed estimation of a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed'],
          td: [['16', 'New Case to handle', 'Resolved', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate: elapsed'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30017'],
            ['@Case'],
            ['Feature: Case - Resolved - Estimation - Original'],
            [],
            ['Scenario: User can see original estimation of a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original'],
          td: [['16', 'New Case to handle', 'Resolved', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate: original'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30366'],
            ['@Case'],
            ['Feature: Case - Resolved - Estimation - Remaining'],
            [],
            ['Scenario: User can see remaining estimation of a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: remaining'],
          td: [['17', 'New Case to handle', 'Resolved', '123123 hours']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate: remaining'],
          td: [
            ['123123 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30025'],
            ['@Case'],
            ['Feature: Case - Resolved - Estimation - Toggle Work'],
            [],
            ['Scenario: User can start working on a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working on a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['17', 'New Case to handle', 'Resolved', '1 hour']]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Start Work" button in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['Scenario: User can stop working on a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop working on a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: current',
            'Working On This Case'
          ],
          td: [
            ['17', 'New Case to handle', 'Resolved', '1 hour', 'Administrator']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Stop Work" button in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30638'],
            ['@Case'],
            ['Feature: Case - Resolved - Send Email - Forward'],
            [],
            ['Scenario Outline: User can forward an email in a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Forward" button in the <Location> panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Edit Resolved Case" page:',
        table: { th: ['Subject'], td: [['Re: (Case 17) 12345']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Body" field in the "Edit Resolved Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@instance-name.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "Edit Resolved Case" page:',
        table: {
          th: ['To', 'Body'],
          td: [['testB@devfactory.com', 'Testing sending email']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Re: (Case 17) 12345" email message in the "testB@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30636'],
            ['@Case'],
            ['Feature: Case - Resolved - Send Email - Reply'],
            [],
            ['Scenario Outline: User can reply to an email in a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "Edit Resolved Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reply" button in the <Location> panel in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Edit Resolved Case" page:',
        table: {
          th: ['To', 'Subject'],
          td: [['testA@devfactory.com', 'Re: (Case 17) 12345']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Body" field in the "Edit Resolved Case" page is:',
        table: {
          th: ['"""'],
          td: [
            [],
            [],
            ['--'],
            ['FogBugz'],
            ['cases@instance-name.fogbugz.com'],
            [
              '---------------------------------------------------------------------------'
            ],
            ['Powered by FogBugz from FogBugz. https://www.fogbugz.com'],
            ['"""']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "Edit Resolved Case" page:',
        table: { th: ['Body'], td: [['Testing sending email']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Re: (Case 17) 12345" email message in the "testA@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30634'],
            ['@Case'],
            ['Feature: Case - Resolved - Send Email'],
            [],
            ['Scenario Outline: User can send an email from a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status'],
          td: [['17', '12345', 'Resolved']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Mail" button in the <Location> panel in the "View Resolved Case" page',
        table: null
      },
      {
        description:
          'The user enters the following details in the "View Resolved Case" page:',
        outcome: 'Action is executed',
        table: {
          th: ['To', 'Subject', 'Description'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Send" button in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['ID', 'Status', 'Title', 'Correspondent'],
          td: [['17', 'Resolved', '12345', 'testA@devfactory.com']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Resolved Case" page in the following order:',
        table: { th: ['Type'], td: [['Emailed By']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following details are shown in the "Emailed By" event in the "View Resolved Case" page:',
        table: {
          th: ['To', 'Subject', 'Body'],
          td: [
            ['testA@devfactory.com', 'Test Send Email', 'Testing sending email']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address',
        table: {
          th: ['Location'],
          td: [
            ['top'],
            ['bottom'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29849'],
            ['@Case'],
            ['Feature: Case - Resolved - View Subscribers'],
            [],
            ['Scenario: Administrator can view subscriber of a resolved case']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Administrator can view subscriber of a resolved case',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following users exist:',
        table: {
          th: ['Full Name', 'Email', 'Account Type', 'Status'],
          td: [['Test UserA', 'testusera@manuscript.com', 'Normal', 'Active']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Subscriber'],
          td: [['16', 'New Case to handle', 'Resolved', 'Test UserA']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following site configuration details exist:',
        table: {
          th: ['Community Users Control'],
          td: [['Anybody can create their community user']]
        }
      },
      {
        description:
          'The user searches for the "16" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "View Resolved Case" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following users are listed in the "Subscribers" section in the "View Resolved Case" page:',
        table: {
          th: ['Test UserA'],
          td: [
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30009'],
            ['@Case'],
            ['Feature: Case - Resolved - With Subcases - Estimation - Current'],
            [],
            [
              'Scenario: User can see current estimation of a resolved case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see current estimation of a resolved case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current', 'Subcases'],
          td: [
            ['17', 'Subc', 'Resolved', '1 hours'],
            ['18', 'Parentc', 'Resolved', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: { th: ['Estimate (incl. subcases): current'], td: [['2 hours']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "current: 2 hours" link in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30013'],
            ['@Case'],
            ['Feature: Case - Resolved - With Subcases - Estimation - Elapsed'],
            [],
            [
              'Scenario: User can see elapsed estimation of a resolved case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see elapsed estimation of a resolved case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: elapsed', 'Subcases'],
          td: [
            ['17', 'Subc', 'Resolved', '1 hours'],
            ['18', 'Parentc', 'Resolved', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): elapsed'],
          td: [
            ['2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30021'],
            ['@Case'],
            [
              'Feature: Case - Resolved - With Subcases - Estimation - Original'
            ],
            [],
            [
              'Scenario: User can see original estimation of a resolved case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see original estimation of a resolved case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: original', 'Subcases'],
          td: [
            ['17', 'Subc', 'Resolved', '1 hours'],
            ['18', 'Parentc', 'Resolved', '1 hours', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): original'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "original: 2 hours" link in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown in the "Estimation Details" dialog:',
        table: {
          th: ['This case', 'Subcases', 'Total'],
          td: [
            ['1 hour', '1 hour', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30370'],
            ['@Case'],
            [
              'Feature: Case - Resolved - With Subcases - Estimation - Remaining'
            ],
            [],
            [
              'Scenario: User can see remaining estimation of a resolved case with subcases'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see remaining estimation of a resolved case with subcases',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: original',
            'Estimation: elapsed',
            'Estimate: remaining',
            'Subcases'
          ],
          td: [
            ['17', 'Subc', 'Active', '4 hours', '3 hours', '1 hour'],
            ['18', 'Parentc', 'Active', '4 hours', '3 hours', '1 hour', 'subc']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Resolved Case" page:',
        table: {
          th: ['Estimate (incl. subcases): remaining'],
          td: [['2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "remaining: 2 hours" link in the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Estimation Details" dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "This Case" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Subcases" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [['4 hours', '3 hours', '1 hour']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following estimation details are shown for the "Total" row in the "Estimation Details" dialog:',
        table: {
          th: ['Estimate (current)', 'Time Elapsed', 'Time Remaining'],
          td: [
            ['8 hours', '6 hours', '2 hours'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31630'],
            ['@Case'],
            [
              'Feature: Case - Schedule - Automatic stop work when not during working hours'
            ],
            [],
            ['Scenario: Enable automatic stop work based on working hours']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Enable automatic stop work based on working hours',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            ['17', 'New Case to handle', 'Active', 'Administrator', '2 hours']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description:
          'The user clicks the "My Working Schedule" menu item in the sidebar menu',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: [
            'Workday starts at',
            'and ends at',
            'Automatically start and stop work'
          ],
          td: [['"Current time"', '"Current time" + 30 minutes', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: '1 hour has passed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            [
              '17',
              'New Case to handle',
              'Active',
              'Administrator',
              '2.50 hours'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31634'],
            ['@Case'],
            ['Feature: Case - Schedule - Counting time during lunch time'],
            [],
            ['Scenario: Enable automatic start work based on lunch hour']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Enable automatic start work based on lunch hour',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Start Work',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            [
              '17',
              'New Case to handle',
              'Active',
              'false',
              'Administrator',
              '2 hours'
            ]
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description:
          'The user clicks the "My Working Schedule" menu item in the sidebar menu',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: [
            'Lunch starts at',
            'and lasts for',
            'Automatically start and stop work'
          ],
          td: [['"Current time"', '30 m', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: '1 hour has passed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            [
              '17',
              'New Case to handle',
              'Active',
              'Administrator',
              '2.5 hours'
            ],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31628'],
            ['@Case'],
            ['Feature: Case - Schedule - Counting time during working hours'],
            [],
            [
              'Scenario: Enable automatic start work based on personal working hours'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Enable automatic start work based on personal working hours',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            ['17', 'New Case to handle', 'Active', 'Administrator', '2 hours']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description:
          'The user clicks the "My Working Schedule" menu item in the sidebar menu',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: [
            'Workday starts at',
            'and ends at',
            'Automatically start and stop work'
          ],
          td: [
            ['"Current time" + 30 minutes', '"Current time" + 2 hours', 'true']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: '1 hour has passed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            [
              '17',
              'New Case to handle',
              'Active',
              'Administrator',
              '2.5 hours'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31635'],
            ['@Case'],
            ['Feature: Case - Schedule - Counting time not during lunch time'],
            [],
            [
              'Scenario: Enable automatic stop work based on personal lunch hour'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Enable automatic stop work based on personal lunch hour',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            ['17', 'New Case to handle', 'Active', 'Administrator', '2 hours']
          ]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description:
          'The user clicks the "My Working Schedule" menu item in the sidebar menu',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: [
            'Lunch starts at',
            'and lasts for',
            'Automatically start and stop work'
          ],
          td: [['"Current time"', '30 m', 'true']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: '1 hour has passed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working on This Case',
            'Estimate: elapsed'
          ],
          td: [
            [
              '17',
              'New Case to handle',
              'Active',
              'Administrator',
              '2.50 hours'
            ],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31629'],
            ['@Case'],
            [
              'Feature: Case - Schedule - Counting time not during working hours'
            ],
            [],
            ['Scenario: User can start work when not during working hours']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start work when not during working hours',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "My Working Schedule" menu item in the "Configuration" section',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: ['Workday starts at', 'and ends at'],
          td: [['"Current time" + 30 minutes', '"Current time" + 60 minutes']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['Case', 'Title'], td: [['17', 'Hammurabi']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Start Work" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Outside working hours" confirmation dialog is opened',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Yes" button in the "Outside working hours" confirmation dialog',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['Scenario: User can stop work when not during working hours']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop work when not during working hours',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "My Working Schedule" menu item in the "Configuration" section',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the following details in the "My Working Schedule" page:',
        table: {
          th: ['Workday starts at', 'and ends at'],
          td: [['"Current time" + 30 minutes', '"Current time" + 60 minutes']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "OK" button in the "My Working Schedule" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Working On This Case'],
          td: [['17', 'Hammurabi', 'Administrator']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Stop Work" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31640'],
            ['@Case'],
            ['Feature: Schedule - Start Working on a Case'],
            [],
            [
              'Scenario: User can start working on a case from time tracking menu'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working on a case from time tracking menu',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [
            ['17', 'BugR', 'Active', '2 hours'],
            ['18', 'BugRR', 'Active', '2 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "This Case: 18 BugRR" menu item in the "Change Working To" section in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31639'],
            ['@Case'],
            ['Feature: Schedule - Start Working on a Favorite Case'],
            [],
            [
              'Scenario: User can start working on a favorite case from time tracking menu'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can start working on a favorite case from time tracking menu',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [['17', 'BugR', 'Active', '2 hours']]
        }
      },
      {
        description: 'Check the outcome',
        outcome: 'The following favorite cases exist:',
        table: { th: ['Case', 'User'], td: [['17', 'Administrator']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "17 BugR" menu item in the "Starred" group in the "Change Working To" section in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            ['Administrator'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31644'],
            ['@Case'],
            ['Feature: Schedule - Stop working on a case'],
            [],
            [
              'Scenario: User can stop working on a case from time tracking menu'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can stop working on a case from time tracking menu',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Working On This Case',
            'Estimate: current'
          ],
          td: [['17', 'BugR', 'Active', 'Administrator', '2 hours']]
        }
      },
      {
        description:
          'The user hovers over the "Case 17" menu item in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Nothing" menu item in the "Change Working To" section in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31638'],
            ['@Case'],
            ['Feature: Schedule - Switch to work on another case'],
            [],
            ['Scenario: User can switch to work on another case from case page']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can switch to work on another case from case page',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['Case', 'Title', 'Status', 'Estimate: current'],
          td: [
            ['17', 'BugR', 'Active', '2 hours'],
            ['18', 'BugR2', 'Active', '2 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "18" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Start Work" button in the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['Working On This Case'], td: [['Administrator']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            [
              'Scenario: User can switch working on a case from time tracking menu'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can switch working on a case from time tracking menu',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: [
            'Case',
            'Title',
            'Status',
            'Estimate: current',
            'Working On This Case'
          ],
          td: [
            ['17', 'BugR', 'Active', '2 hours', 'Administrator'],
            ['18', 'BugRR', 'Active', '2 hours']
          ]
        }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "This Case: 18 BugRR" menu item in the "Change Working To" section in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['Working On This Case'], td: [['Administrator']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: ['Working On This Case'],
          td: [
            [],
            [],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29689'],
            ['@Case'],
            ['Feature: Case - Status - Cannot Check by ID'],
            [],
            [
              'Scenario: Public users cannot check the status of a case using the case ID'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Public users cannot check the status of a case using the case ID',
    steps: [
      {
        description: 'The following public cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Project', 'Area', 'Description'],
          td: [['17', 'Bears wont fly', 'Inbox', 'Not Spam', 'They can swing']]
        }
      },
      {
        description: 'The user clicks the "Case Status" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Case Status" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case status details in the "Case Status" page:',
        table: { th: ['Ticket'], td: [['17']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Login" page',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'Normal users can check the status of a case using the case ID',
    steps: [
      {
        description: 'The following public cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Project', 'Area', 'Description'],
          td: [['17', 'Bears wont fly', 'Inbox', 'Not Spam', 'They can swing']]
        }
      },
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: {
          th: [
            'ID',
            'Title',
            'Status',
            'Project',
            'Area',
            'Description',
            'Inquiry',
            'Assigned To'
          ],
          td: [
            [
              '17',
              'Bears wont fly',
              'Active',
              'Inbox',
              'Not Spam',
              'They can swing',
              'true',
              'Admin'
            ],
            [],
            [],
            [],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-29688'],
            ['@Case'],
            ['Feature: Case - Status - Check by Ticket'],
            [],
            [
              'Scenario: Anybody can check the status of a case using the case ticket'
            ]
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Anybody can check the status of a case using the case ticket',
    steps: [
      {
        description: 'The following public cases exist:',
        outcome: 'Action is executed',
        table: {
          th: ['ID', 'Title', 'Project', 'Area', 'Description'],
          td: [['17', 'Bears wont fly', 'Inbox', 'Not Spam', 'They can swing']]
        }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user saves the "Case Ticket" of the "Bears wont fly" public case as "Bear Case Ticket"',
        table: null
      },
      {
        description: 'The user clicks the "Case Status" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "Case Status" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user enters the case status details in the "Case Status" page:',
        table: { th: ['Ticket'], td: [['Bear Case Ticket']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "OK" button',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Public Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following public case details are shown in the "View Public Case" page:',
        table: {
          th: ['ID', 'Title'],
          td: [
            ['17', '(Open) Bears wont fly'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-31793'],
            ['@Case'],
            ['Feature: Case - Status Events'],
            [],
            ['Background:']
          ]
        }
      },
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: {
          th: ['ID', 'Title', 'Status', 'Category'],
          td: [
            ['17', 'A', 'Active', 'Bug'],
            ['18', 'R', 'Resolved', 'Bug'],
            ['19', 'C', 'Closed', 'Bug'],
            ['20', 'FeatureR', 'Resolved', 'Feature'],
            ['21', 'FeatureA', 'Active', 'Feature'],
            ['22', 'FeatureC', 'Closed', 'Feature'],
            ['23', 'InquiryR', 'Resolved', 'Inquiry'],
            ['24', 'InquiryA', 'Active', 'Inquiry'],
            ['25', 'InquiryC', 'Closed', 'Inquiry'],
            ['26', 'ScheduleItemR', 'Resolved', 'Schedule Item'],
            ['27', 'ScheduleItemA', 'Active', 'Schedule Item'],
            ['28', 'ScheduleItemC', 'Closed', 'Schedule Item'],
            [],
            ['Scenario: Opening a case creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Opening a case creates a case event',
    steps: [
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "New Case" button in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "New Case" page',
        table: null
      },
      {
        description: 'The user clicks the "Open" button in the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content', 'User', 'Date'],
          td: [
            ['Opened By', 'Administrator', '"Current time within 5 minutes"'],
            [],
            ['Scenario Outline: Resolving a case creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "<Case ID>" search string by using the search box',
        table: null
      },
      {
        description:
          'The user clicks the "Resolve" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Resolve" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Resolved Case" page in the following order:',
        table: {
          th: ['Type', 'Content', 'User', 'Date'],
          td: [
            [
              'Resolved (<Resolution Name>) By',
              "Status changed from 'Active' to 'Resolved (<Resolution Name>)'",
              'Administrator',
              '"Current time within 5 minutes"'
            ],
            ['Examples:'],
            ['Case ID', 'Resolution Name'],
            ['17', 'Fixed'],
            ['21', 'Implemented'],
            ['24', 'Responded'],
            ['27', 'Completed'],
            [],
            ['Scenario: Closing a bug creates a case event'],
            ['Case ID', 'Resolution Name'],
            ['17', 'Fixed'],
            ['21', 'Implemented'],
            ['24', 'Responded'],
            ['27', 'Completed'],
            [],
            ['Scenario: Closing a bug creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'Closing a bug creates a case event',
    steps: [
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description:
          'The user clicks the "Close" button in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Close" button in the "Edit Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "18" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Closed Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Closed Case" page in the following order:',
        table: {
          th: ['Type', 'Content', 'User', 'Date'],
          td: [
            ['Closed By', 'Administrator', '"Current time within 5 minutes"'],
            [],
            ['Scenario Outline: Reopening a bug creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "<Case ID>" search string by using the search box',
        table: null
      },
      {
        description:
          'The user clicks the "Reopen" button in the "View Closed Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reopen" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content', 'User', 'Date'],
          td: [
            [
              'Reopened By',
              "Status changed from 'Resolved (<Resolution Name>)' to 'Active'",
              'Administrator',
              '"Current time within 5 minutes"'
            ],
            ['Examples:'],
            ['Case ID', 'Resolution Name'],
            ['19', 'Fixed'],
            ['22', 'Implemented'],
            ['25', 'Responded'],
            ['28', 'Completed'],
            [],
            ['Scenario Outline: Reactivating a bug creates a case event'],
            ['Case ID', 'Resolution Name'],
            ['19', 'Fixed'],
            ['22', 'Implemented'],
            ['25', 'Responded'],
            ['28', 'Completed'],
            [],
            ['Scenario Outline: Reactivating a bug creates a case event']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    steps: [
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "<Case ID>" search string by using the search box',
        table: null
      },
      {
        description:
          'The user clicks the "Reactivate" button in the "View Resolved Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user clicks the "Reactivate" button in the "Edit Resolved Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case events are listed in the "View Active Case" page in the following order:',
        table: {
          th: ['Type', 'Content', 'User', 'Date'],
          td: [
            [
              'Reactivated by',
              "Status changed from 'Resolved (<Resolution Name>)' to 'Active'",
              'Administrator',
              '"Current time within 5 minutes"'
            ],
            ['Examples:'],
            ['Case ID', 'Resolution Name'],
            ['18', 'Fixed'],
            ['20', 'Implemented'],
            ['23', 'Responded'],
            ['26', 'Completed'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30023'],
            ['@Case'],
            ['Feature: Time Tracking - Current Case'],
            [],
            ['Scenario: User can see a case they work on in the sidebar'],
            ['Case ID', 'Resolution Name'],
            ['18', 'Fixed'],
            ['20', 'Implemented'],
            ['23', 'Responded'],
            ['26', 'Completed'],
            [],
            ['@NotAutomated'],
            ['@JIRA-Key-MANUSCRIPT-30023'],
            ['@Case'],
            ['Feature: Time Tracking - Current Case'],
            [],
            ['Scenario: User can see a case they work on in the sidebar']
          ]
        }
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see a case they work on in the sidebar',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['ID', 'Title'], td: [['17', '12345']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Start Work" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Case 17" menu item is shown in the sidebar',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Time Tracking" menu item is not shown in the sidebar',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'User can see a case they work on in the sidebar menu',
    steps: [
      {
        description: 'The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['ID', 'Title'], td: [['17', '12345']] }
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user searches for the "17" search string by using the search box',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description:
          'The user clicks the "Start Work" button in the "View Active Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The user hovers over the "Time Tracking" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The "Active Case: 17 12345" link is shown in the "Working On" section in the sidebar menu',
        table: null
      }
    ],
    preconditions: []
  },
  {
    name: 'User can view an existing case',
    steps: [
      {
        description: 'The user is logged in as Normal User',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The following cases exist:',
        table: { th: ['ID', 'Title'], td: [['17', 'First Case']] }
      },
      {
        description:
          'The user searches for the "17" search string by using the search box',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user is redirected to the "View Active Case" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The following case details are shown in the "View Active Case" page:',
        table: { th: ['ID', 'Title'], td: [['17', 'First Case']] }
      }
    ],
    preconditions: []
  }
];

export default scenarios;