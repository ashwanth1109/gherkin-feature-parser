import React from 'react';
import Scenarios from './Scenarios';
import AdminLogin from './steps/AdminLogin';
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

const getStep = (desc, outcome) => new Step(desc, outcome);

const extractTable = (line, lineArr, lineId, tableArr) => {
  // console.log(line);
  if (line.substr(-1) === ':') {
    let checkLineId = lineId + 1;
    while (
      lineArr[checkLineId] &&
      !lineArr[checkLineId].match(/(And|Given|When|Then)/)
    ) {
      tableArr[tableArr.length - 1].addTableElement(lineArr[checkLineId]);
      checkLineId += 1;
    }
  }
};

const transformFeature = content => {
  let currentScenario = null;
  let currentStep = null;
  let currentCheck = checks.GIVEN;
  const lineArr = content.split('\n');

  lineArr.map((line, lineId) => {
    if (line) {
      line = line.trim();
      if (line.match(/exist/) && currentCheck !== checks.THEN) {
        const desc = line.split(/^(Given |Then |And |When )/)[2];
        scenarios[currentScenario].preconditions.push(
          getStep(desc, 'Action is executed')
        );
        extractTable(
          line,
          lineArr,
          lineId,
          scenarios[currentScenario].preconditions
        );
      } else {
        if (line.match(/^And/)) {
          let step;
          if (currentCheck === checks.GIVEN) {
            step = new Step(line.split('And ')[1], 'Action is executed');
          } else if (currentCheck === checks.THEN) {
            step = new Step('Check the outcome', line.split('And ')[1]);
          }
          currentStep = scenarios[currentScenario].steps.length;
          scenarios[currentScenario].steps.push(step);
        } else if (line.match(/^Given/)) {
          let step;
          step = new Step(line.split('Given ')[1], 'Action is executed');
          if (line.includes('is logged in as')) {
            // for Scenario: User can create a new case (LOGIN AS ADMIN)
            if (
              scenarios[currentScenario].name.includes(
                'User can create a new case'
              )
            ) {
              step = new Step(
                ' The user is logged in as Administrator',
                'Action is executed'
              );
            }
          }
          currentStep = scenarios[currentScenario].steps.length;
          scenarios[currentScenario].steps.push(step);
        } else if (line.match(/^Scenario/)) {
          currentScenario = scenarios.length;
          scenarios.push(new Scenario(line.split('Scenario: ')[1]));
        } else if (line.match(/^When/)) {
          const step = new Step(line.split('When ')[1], 'Action is executed');
          currentStep = scenarios[currentScenario].steps.length;
          scenarios[currentScenario].steps.push(step);
        } else if (line.match(/^Then/)) {
          const step = new Step('Check the outcome', line.split('Then ')[1]);
          currentStep = scenarios[currentScenario].steps.length;
          currentCheck = checks.THEN;
          scenarios[currentScenario].steps.push(step);
        }
        console.log(line, currentScenario);
        if (currentScenario !== null) {
          extractTable(line, lineArr, lineId, scenarios[currentScenario].steps);
        }
      }
    }
  });
};

const transformData = () => {
  transformFeature(create);
  transformFeature(test);
};

transformData();

export default () => {
  return (
    <div>
      <h2>Step Definitions</h2>
      <AdminLogin />
      <Scenarios data={scenarios} />
    </div>
  );
};
