'use strict';
// Utility functions to transform feature files into a consumable object,
// so that this is preprocessed and can be loaded directly

// You can generate the consumable object by running `npm run transform`
// Output: The consumable object will be written into /data/index.js

const Step = require('./classes/Step');
const Scenario = require('./classes/Scenario');

const fs = require('fs');
const path = require('path');

const featureFolder = './src/transformer/feature-files/';

// store the consumable object here
let scenarios = [];
const checks = {
  GIVEN: 'GIVEN',
  THEN: 'THEN'
};

const getStep = (desc, outcome) => new Step(desc, outcome);

const extractTable = (line, lineArr, lineId, tableArr) => {
  if (line.substr(-1) === ':' && !line.match(/^Examples/)) {
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

  try {
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
                scenarios[currentScenario].name &&
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
          } else if (line.match(/^Scenario Outline/)) {
            currentScenario = scenarios.length;
            scenarios.push(new Scenario(line.split('Scenario Outline: ')[1]));
            let currentLineId = lineId + 1;
            while (!lineArr[currentLineId].trim().match(/^Examples/)) {
              currentLineId += 1;
            }
            const exampleArr = [];
            while (
              !lineArr[currentLineId].trim().match(/^(Scenario|@|Feature)/)
            ) {
              exampleArr.push(lineArr[currentLineId]);
              currentLineId += 1;
            }
            const scenario = scenarios[currentScenario];
            for (const example of exampleArr) {
              if (!example.match(/Examples/)) {
                const fields = example.split('|').slice(1);
                fields.pop();
                scenario.addExample(fields);
              }
            }
            currentCheck = checks.GIVEN;
          } else if (line.match(/^Scenario/)) {
            currentScenario = scenarios.length;
            scenarios.push(new Scenario(line.split('Scenario: ')[1]));
            currentCheck = checks.GIVEN;
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
          if (currentScenario !== null) {
            extractTable(
              line,
              lineArr,
              lineId,
              scenarios[currentScenario].steps
            );
          }
        }
      }
    });
  } catch (e) {
    console.log('Transform Error:', e);
  }
};

// helper function to constructPath from current root
const constructPath = (prePath, pathTo) => path.join(prePath, pathTo);

let longFileString = '';
let outputPath = '';

const readFile = filePath => {
  const data = fs.readFileSync(filePath);
  longFileString = `${longFileString} \n ${data.toString()}`;
};

const readDir = dir => {
  const files = fs.readdirSync(dir);
  files.forEach(file => {
    if (file.match(/.feature/)) {
      readFile(constructPath(dir, file));
    } else {
      console.log('redundant if check');
    }
  });
  transformFeature(longFileString);
  const scenariosAsJSONString = JSON.stringify(scenarios);
  fs.writeFileSync(
    `./src/data/${outputPath}`,
    `const scenarios = ${scenariosAsJSONString}; export default scenarios;`
  );
  scenarios = [];
  longFileString = '';
  // fs.readdir(dir, (err, files) => {
  //   if (err) console.log('Err', err);
  //   files.forEach(file => {
  //     if (file.match(/.feature/)) {
  //       readFile(constructPath(dir, file));
  //     } else {
  //       // it is a directory
  //       // readDir(constructPath(dir, file));
  //     }
  //   });
  //   transformFeature(longFileString);
  //   const stringifiedString = JSON.stringify(scenarios);
  //   fs.writeFileSync(
  //     `./src/data/${outputPath}`,
  //     `const scenarios = ${stringifiedString}; export default scenarios;`
  //   );
  // });
};

// TODO: Identify why 'project-group', 'status', 'user', 'wiki-template', 'workflow' is not running
const features = [
  'case'
  // 'category',
  // 'configuration',
  // 'custom-field',
  // 'email',
  // 'gui',
  // 'holiday',
  // 'notification',
  // 'planner',
  // 'priority',
  // 'project',
  // 'project-group',
  // 'schedule',
  // 'search',
  // 'security',
  // 'snippet',
  // 'status',
  // 'subscription',
  // 'user',
  // 'user-group',
  // 'vacation',
  // 'wiki',
  // 'wiki-article',
  // 'wiki-template',
  // 'workflow'
];

// const generateIndexString = (feature, featureParam, data) => {
//   data = { ...data, feature: featureParam };
//   return `import ${featureParam} from './${feature}';`;
// };
//
// const generateOnlyIndexFile = () => {
//   let indexString = '';
//   const data = {};
//   for (const feature of features) {
//     let featureParam = feature;
//     if (feature === 'case') {
//       featureParam = 'caseScenarios';
//     } else if (feature.match(/-/)) {
//       const partArr = feature.split('-');
//       featureParam =
//         partArr[0] + partArr[1][0].toUpperCase() + partArr[1].slice(1);
//     }
//     indexString = `${indexString} ${generateIndexString(
//       feature,
//       featureParam,
//       data
//     )}`;
//   }
//   fs.writeFileSync(`./src/data/index.js`, `${indexString}`);
// };

// Toggle the function calls as per your need
for (const feature of features) {
  const filePath = constructPath(featureFolder, feature);
  outputPath = `${feature}.js`;

  readDir(filePath);
}
