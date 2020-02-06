import React, { Fragment } from 'react';
import stepDefinitions from './stepDefinitions';

const AdminLogin = () => {
  const renderDescTable = step => (
    <table>
      <tr>
        {step.table.th.map((header, id) => (
          <th className="border-1px" key={id}>
            {header}
          </th>
        ))}
      </tr>
      {step.table.td.map((data, id) => (
        <tr key={id}>
          {data.map((val, id2) => (
            <td className="border-1px" key={`${id}-${id2}`}>
              {val}
            </td>
          ))}
        </tr>
      ))}
    </table>
  );

  const renderTable = (arr, header) => (
    <>
      <h3>{header}</h3>
      <table>
        <thead>
          <tr>
            <th>No.</th>
            <th>Description</th>
            <th>Expected Outcome</th>
          </tr>
        </thead>
        <tbody>
          {arr.map((cond, id) => (
            <tr key={id}>
              <td>{id + 1}</td>
              <td>
                {cond.description ? (
                  <>
                    {cond.link ? (
                      <a href={cond.link}>{cond.description}</a>
                    ) : (
                      <div>{cond.description}</div>
                    )}
                  </>
                ) : (
                  <div>Check the outcome</div>
                )}
                {cond.table && <>{renderDescTable(cond)}</>}
              </td>
              <td>
                {cond.outcome ? (
                  <div>{cond.outcome}</div>
                ) : (
                  <div>Action is executed</div>
                )}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );

  return (
    <>
      {stepDefinitions.map(stepDefinition => (
        <Fragment key={stepDefinition.id}>
          <h2 id={stepDefinition.id}>{stepDefinition.name}</h2>
          {!!stepDefinition.preconditions.length && <h3>Preconditions</h3>}
          {stepDefinition.preconditions.map((cond, id) => {
            if (cond.link) {
              return (
                <a href={cond.link} key={id}>
                  {id + 1}. {cond.description}
                </a>
              );
            }
            return (
              <div key={id}>
                {id + 1}. {cond.description}
              </div>
            );
          })}
          {renderTable(stepDefinition.steps, 'Steps')}
        </Fragment>
      ))}
    </>
  );
};

export default AdminLogin;
