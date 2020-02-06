import React, { Fragment } from 'react';

import Scenario from './Scenario';

const replaceExampleInSteps = (scenario, id) => {
  scenario.examples[0].map((searchStr, id2) => {
    scenario.steps.map((step, id3) => {
      const newObj = {
        description: step.description,
        outcome: step.outcome,
        table: step.table
      };
      if (step.description.includes(`<${searchStr}>`)) {
        newObj['description'] = step.description.replace(
          `<${searchStr}>`,
          scenario.examples[id + 1][id2]
        );
      }
      scenario.steps.splice(id3, 1, newObj);
    });
  });
  return scenario;
};

export default function Scenarios({ data }) {
  return (
    <div>
      {data &&
        data.map((scenario, id) => {
          if (scenario.examples.length) {
            return (
              <Fragment key={`${id}-${scenario.name}`}>
                {scenario.examples.slice(1).map((example, id2) => {
                  const forkedScenario = JSON.parse(JSON.stringify(scenario));
                  const modifiedScenario = replaceExampleInSteps(
                    forkedScenario,
                    id2
                  );
                  console.log(modifiedScenario);
                  return (
                    <Scenario
                      key={`${id}-${id2}-${scenario.name}`}
                      scenario={forkedScenario}
                    />
                  );
                })}
              </Fragment>
            );
          }
          return (
            <Scenario key={`${id}-${scenario.name}`} scenario={scenario} />
          );
        })}
    </div>
  );
}
