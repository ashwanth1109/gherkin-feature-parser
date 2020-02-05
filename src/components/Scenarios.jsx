import React from 'react';
import Scenario from './Scenario';

export default function Scenarios({ data }) {
  return (
    <div>
      {data.map((scenario, id) => {
        return <Scenario key={`${id}-${scenario.name}`} scenario={scenario} />;
      })}
    </div>
  );
}
