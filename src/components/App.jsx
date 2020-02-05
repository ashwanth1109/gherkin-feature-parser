import React from 'react';
import Scenarios from './Scenarios';
import Feature from '../classes/Feature';
import Scenario from '../classes/Scenario';
import Step from '../classes/Step';

const test = `
@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29714
@Case
Feature: Case - Active - Add Subscribers

  Scenario: Administrator can add subscriber to case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Subscriber |
      | 16   | New Case to handle | Active |            |
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "View Active Case" page
    When The user selects the following users from the "Add Subscriber" dropdown in the "View Active Case" page:
      | Test UserA |
    Then The "Add Subscriber" dropdown is closed
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
      | Test UserA |
`;

const create = `
Feature: Case - Create

  Scenario: User can create a new case
    Given The user is logged in as Normal User
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title      |
      | Cornucopia |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title      | Status |
      | 17 | Cornucopia | Active |
`;

const scenarios = [];

const checks = {
  GIVEN: 'GIVEN',
  THEN: 'THEN'
};

const transformData = () => {
  let currentScenario = null;
  let currentCheck = checks.GIVEN;
  create.split('\n').map((line, lineId) => {
    if (line) {
      line = line.trim();
      if (line.includes('exists') && currentCheck !== checks.THEN) {
        scenarios[currentScenario].preconditions.push(line);
      } else if (line.substring(0, 3) === 'And') {
        if (currentCheck === checks.GIVEN) {
          const step = new Step(line.split('And ')[1], 'Action is executed');
          scenarios[currentScenario].steps.push(step);
        }
      } else if (line.substring(0, 8) === 'Scenario') {
        currentScenario = scenarios.length;
        scenarios.push(new Scenario(line.split('Scenario: ')[1]));
      }
    }
  });

  console.log(scenarios);
};

transformData();

export default () => {
  return (
    <div>
      {/*<Scenarios*/}
      {/*  data={scenarios}*/}
      {/*/>*/}
      <h2 id="scenario-user-can-create-a-new-case">
        Scenario: User can create a new case with (CASE_ID, CASE_TITLE,
        CASE_STATUS)
      </h2>
      <hr />
      <h3>Steps</h3>
      <table>
        <tr>
          <th>No.</th>
          <th>Description</th>
          <th>Expected Outcome</th>
        </tr>
        <tr>
          <td>1</td>
          <td>
            The user is logged in as Normal User
            <table>
              <tr>
                <th>Environment URL</th>
                <th>User Name</th>
                <th>Login</th>
                <th>Password</th>
              </tr>
              <tr>
                <td>https://customertwo.fogzbugzdev.be/</td>
                <td>Normal User</td>
                <td>normal@customertwo.com</td>
                <td>test1234</td>
              </tr>
            </table>
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>2</td>
          <td>The user clicks the "New Case" button in the sidebar</td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>3</td>
          <td>The user is redirected to the "New Case" page</td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>4</td>
          <td>
            The user enters the case details in the "New Case" page:
            <table>
              <tr>
                <th>Title</th>
              </tr>
              <tr>
                <td>CASE_TITLE</td>
              </tr>
            </table>
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>5</td>
          <td>The user clicks the "Open" button in the "New Case" page</td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>6</td>
          <td>Check the Outcome</td>
          <td>The user is redirected to the "View Active Case" page</td>
        </tr>
        <tr>
          <td>7</td>
          <td>Check the Outcome</td>
          <td>
            The following case details are shown in the "View Active Case" page:
            <table>
              <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Status</th>
              </tr>
              <tr>
                <td>17</td>
                <td>CASE_TITLE</td>
                <td>CASE_STATUS</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <h2>Scenario: Administrator can add subscriber to case</h2>
      <hr />
      <h3>Preconditions:</h3>
      <ol>
        <li>
          <a href="#scenario-user-can-create-a-new-case">
            User can create a new case with (16, New Case to handle, Status)
          </a>
        </li>
      </ol>
      <hr />
      <h3>Steps</h3>
      <table>
        <tr>
          <th>No.</th>
          <th>Description</th>
          <th>Expected Outcome</th>
        </tr>
        <tr>
          <td>1</td>
          <td>
            The user is logged in as Administrator
            <table>
              <tr>
                <th>Environment URL</th>
                <th>User Name</th>
                <th>Login</th>
                <th>Password</th>
              </tr>
              <tr>
                <td>https://customertwo.fogzbugzdev.be/</td>
                <td>Administrator</td>
                <td>admin@customertwo.com</td>
                <td>test1234</td>
              </tr>
            </table>
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>2</td>
          <td>
            The user searches for the "16" search string by using the search box
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>3</td>
          <td>The "View Active Case" page is shown</td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>4</td>
          <td>
            The user clicks the "Add Subscriber" dropdown in the "View Active
            Case" page
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>5</td>
          <td>
            The user selects the following users from the "Add Subscriber"
            dropdown in the "View Active Case" page:
            <table>
              <th>Test UserA</th>
            </table>
          </td>
          <td>Action is executed</td>
        </tr>
        <tr>
          <td>6</td>
          <td>Check Outcome</td>
          <td>The "Add Subscriber" dropdown is closed</td>
        </tr>
        <tr>
          <td>7</td>
          <td>Check Outcome</td>
          <td>
            The following users are listed in the "Subscribers" section in the
            "View Active Case" page:
            <table>
              <th>Test UserA</th>
            </table>
          </td>
        </tr>
      </table>
    </div>
  );
};
