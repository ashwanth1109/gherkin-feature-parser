import React, { useState } from 'react';
import Caret from '../icons/Caret';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import TableBody from '@material-ui/core/TableBody';
import PassFail from './PassFail';
import TextareaAutosize from '@material-ui/core/TextareaAutosize';
import { withStyles } from '@material-ui/core/styles';
import TableCell from '@material-ui/core/TableCell';

const StyledTableCell = withStyles(theme => ({
  head: {
    backgroundColor: theme.palette.common.black,
    color: theme.palette.common.white,
    fontFamily: "'Quicksand', sans-serif",
    padding: '16px 8px'
  },
  body: {
    fontSize: 14,
    fontFamily: "'Quicksand', sans-serif",
    padding: '8px'
  }
}))(TableCell);

const StyledTableRow = withStyles(theme => ({
  root: {
    '&:nth-of-type(odd)': {
      backgroundColor: theme.palette.background.default
    }
  }
}))(TableRow);

const Scenario = ({ scenario }) => {
  const [show, setShow] = useState(false);

  const renderDescTable = step => (
    <table>
      <thead>
        <tr>
          {step.table.th.map((header, id) => (
            <th key={id} className="border-1px">
              {header}
            </th>
          ))}
        </tr>
      </thead>
      <tbody>
        {step.table.td.map((data, id1) => (
          <tr key={id1}>
            {data.map((item, id2) => (
              <td key={`${id1}-${id2}`} className="border-1px">
                {item}
              </td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );

  const renderTable = steps => {
    return (
      <table>
        <TableHead>
          <TableRow>
            <StyledTableCell>No.</StyledTableCell>
            <StyledTableCell>Description</StyledTableCell>
            <StyledTableCell>Expected Outcome</StyledTableCell>
            <StyledTableCell>Status</StyledTableCell>
            <StyledTableCell>Comments</StyledTableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {steps.map((step, id) => (
            <StyledTableRow key={id + 1}>
              <StyledTableCell scope="row">{id + 1}</StyledTableCell>
              <StyledTableCell>
                {step.description.includes('is logged in as') ? (
                  <a href="#user-is-logged-in-as-admin">{step.description}</a>
                ) : (
                  step.description
                )}
                {step.table &&
                  step.description !== 'Check the outcome' &&
                  renderDescTable(step)}
              </StyledTableCell>
              <StyledTableCell>
                {step.outcome}
                {step.table &&
                  step.description === 'Check the outcome' &&
                  renderDescTable(step)}
              </StyledTableCell>
              <StyledTableCell>
                <PassFail />
              </StyledTableCell>
              <StyledTableCell>
                <TextareaAutosize
                  aria-label="Comments"
                  placeholder="Enter your comments here"
                  style={{
                    resize: 'horizontal',
                    border: 0,
                    backgroundColor: '#fff',
                    padding: '8px',
                    minWidth: '600px',
                    fontSize: '1rem'
                  }}
                  rowsMin={1}
                />
              </StyledTableCell>
            </StyledTableRow>
          ))}
        </TableBody>
      </table>
    );
  };

  const renderSteps = () => {
    if (show) {
      return (
        <>
          {!!scenario.preconditions.length && (
            <>
              <h3>Preconditions:</h3>
              {renderTable(scenario.preconditions)}
            </>
          )}
          <h3>Steps:</h3>
          {renderTable(scenario.steps)}
        </>
      );
    }
    return null;
  };

  return (
    <>
      <h2
        id="scenario-user-can-create-a-new-case"
        style={{ cursor: 'pointer' }}
        onClick={() => setShow(!show)}
      >
        <Caret show={show} />
        Scenario: {scenario.name}
      </h2>
      {renderSteps()}
    </>
  );
};

export default Scenario;
