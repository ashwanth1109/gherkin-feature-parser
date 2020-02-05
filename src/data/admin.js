const scenarios = [
  {
    name:
      'User can create a root user by calling the "createRootUser" function of the "create-root-user" module',
    steps: [
      {
        description:
          'The "config.json" file contains the following configuration:',
        outcome: 'Action is executed',
        table: {
          th: [
            'Access Key ID',
            'Secret Access Key',
            'User Pool ID',
            'User Pool Client ID',
            'Environment',
            'Region'
          ],
          td: [
            [
              'AKIAWSUYLYTN6OIOXCYB',
              'jCoMiAWRK/1+Rxb7KYLiBSZxa1hdk1wGScJerVL2',
              'eu-west-2_7wVPLMpuS',
              '11vct18kiln1frqeo8jolvn6oj',
              'stagingtwo',
              'eu-west-2'
            ]
          ]
        }
      },
      {
        description:
          'The "customer-data.json" file contains the following customer data:',
        outcome: 'Action is executed',
        table: {
          th: ['Customer', 'Full Name', 'Email', 'Password'],
          td: [
            [
              'customer1',
              'Admin for Customer1',
              'admin@customerone.com',
              'test1234'
            ]
          ]
        }
      },
      {
        description:
          'The "createRootUser" function of the "create-root-user" module is called with the configuration and the customer data',
        outcome: 'Action is executed',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The call of the "createRootUser" function of the "create-root-user" module is successful',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user navigates to the "Index" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Log In" menu item in the sidebar menu',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The "Login" page is shown',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome: 'The user enters the credentials in the "Login" page:',
        table: { th: ['Email', 'Password'], td: [['<Email>', '<Password>']] }
      },
      {
        description: 'Check the outcome',
        outcome: 'The user clicks the "Log In" button in the "Login" page',
        table: null
      },
      {
        description: 'Check the outcome',
        outcome:
          'The full name of the user is shown as "Admin for Customer1" in the sidebar',
        table: null
      }
    ],
    preconditions: []
  }
];

export default scenarios;
