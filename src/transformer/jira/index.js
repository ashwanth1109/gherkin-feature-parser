const dotenv = require('dotenv');
const request = require('request');
dotenv.config();

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
        table: { th: ['Test UserA'], td: [[]] }
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
    ],
    examples: []
  }
];

// ============================================================================================
// =======================================================================================================
// ---------------------------------------------------------------------------
function scenario2Jira(scenario) {
  return {
    summary: `E2E 5k: ${scenario.name}`,
    description: `h2. Business Goal
    | ${scenario.name} |
    
    h2. Pre-conditions
    ${h2Preconditions()}
    
    h2. Scenario
    ${h2Scenario(scenario.preconditions, scenario.steps)}
    
    h2. Examples Table
    N/A
    
    h2. Attribute Rationale
    N/A
    `
  };

  function subStepTable(table) {
    if (!table) {
      return '';
    }
    let result = '';
    let { th, td } = table;
    // console.error(th);
    // console.error(td);
    if (td.length === 0 || (td.length === 1 && td[0].length === 0)) {
      return `\n*${th}*`;
    }
    // this crap doesn't look good for multiple tds https://jira.devfactory.com/browse/MANUSCRIPT-34444
    for (let i = 0; i < th.length; i++) {
      let tds = '';
      for (let j = 0; j < td.length; j++) {
        if (td[j][i] === undefined) {
          continue;
        }
        if (j !== td.length - 1) {
          tds += ', ';
        }
        tds += td[j][i];
      }
      result += `\n*${th[i]}*: ${tds}`;
    }
    return result;
  }

  function step2string(step) {
    if (step.description === 'Check the outcome') {
      return `| ${step.description} | ${step.outcome} ${subStepTable(
        step.table
      )} |`;
    } else {
      return `| ${step.description} ${subStepTable(step.table)} | ${
        step.outcome
      } |`;
    }
  }

  function h2Scenario(preConditions, steps) {
    let step = 1;
    function add(result, item) {
      result += `|| ${step++} ${step2string(item)}\n`;
      return result;
    }
    let result = preConditions.reduce(add, '');
    result = steps.reduce(add, result);
    return `||Seq#||User Interaction sequence||Expected outcome||
        ${result}`;
  }

  function h2Preconditions() {
    return `||Pre-condition Item||Pre-condition information||Reference links||
        ||E2E.QB Version|1|N/A|
        ||Environment| N/A | https://docs.google.com/spreadsheets/d/1XYIXlb7WfY5PDis9agQiv-7jeCubulrQgzN5i035Xeg/edit#gid=0 |
        ||User credentials| N/A | https://docs.google.com/spreadsheets/d/1XYIXlb7WfY5PDis9agQiv-7jeCubulrQgzN5i035Xeg/edit#gid=0 |
        ||System settings| N/A | N/A |
        ||Application configuration| N/A | N/A |
        ||Data prerequisites| on the login page click "Reset state" before starting the test, it'll reset the db state | N/A |`;
  }
}

const [user, password] = [process.env.JIRA_USERNAME, process.env.PASSWORD];

for (const scenario of scenarios) {
  // console.log(scenario2Jira(scenario).description);
  // console.log('-------------------------------------');

  const reqBody = {
    fields: {
      project: {
        id: '20400'
      },
      summary: scenario.name,
      issuetype: {
        id: '15800'
      },
      labels: ['5kFogBugz'],
      description: scenario2Jira(scenario).description,
      customfield_23304: {
        value: 'Health'
      },
      status: {
        id: '10004'
      }
    }
  };

  const options = {
    method: 'POST',
    url: 'https://jira.devfactory.com/rest/api/2/issue',
    auth: {
      user,
      password,
      sendImmediately: true
    },
    body: reqBody,
    json: true
  };

  request(options, function(err, res, body) {
    // If an error occurred return the error.
    if (err) {
      console.log('Error:', err);
      return err;
    }

    // No error occurred return the full response
    console.log('Request:', res.statusCode);
    return res;
  });
}
