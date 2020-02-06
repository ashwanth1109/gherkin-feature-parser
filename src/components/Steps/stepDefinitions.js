const stepDefinitions = [
  {
    id: 'user-is-logged-in-as-admin',
    name: 'User is logged in as Administrator',
    preconditions: [
      {
        description: 'Access Details',
        link:
          'https://docs.google.com/spreadsheets/d/1XYIXlb7WfY5PDis9agQiv-7jeCubulrQgzN5i035Xeg/edit#gid=0'
      }
    ],
    steps: [
      {
        description:
          'Visit the environment URL given in the link from precondition'
      },
      {
        description:
          'Enter administrator credentials as in link from precondition'
      },
      { description: 'Click the login button' },
      { outcome: 'App is logged in successfully' }
    ]
  },
  {
    id: 'following-case-details-exist',
    name:
      'The following case details exist: ensure that the case is created with specified details',
    preconditions: [],
    steps: [
      {
        description: ' The user is logged in as Administrator',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'The user clicks the "New Case" button in the sidebar',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'The user is redirected to the "New Case" page',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'The user enters the case details in the "New Case" page:',
        outcome: 'Action is executed',
        table: { th: ['Title'], td: [['<title>']] }
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
          td: [['<id>', '<title>', '<status>']]
        }
      }
    ]
  }
];

export default stepDefinitions;
