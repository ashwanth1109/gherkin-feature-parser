import React, { useState } from 'react';
import Caret from '../icons/Caret';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import TableBody from '@material-ui/core/TableBody';
import PassFail from './PassFail';
import TextareaAutosize from '@material-ui/core/TextareaAutosize';
import { withStyles } from '@material-ui/core/styles';
import TableCell from '@material-ui/core/TableCell';
import Button from '@material-ui/core/Button';

const StyledTableCell = withStyles(theme => ({
  head: {
    backgroundColor: theme.palette.common.black,
    color: theme.palette.common.white,
    fontFamily: "'Quicksand', sans-serif",
    padding: '8px'
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

const progressState = {
  NOT_STARTED: 'Not Started',
  IN_PROGRESS: 'In Progress',
  FAILING: 'Failing',
  PASSING: 'Passing'
};

const Scenario = ({ scenario }) => {
  const [show, setShow] = useState(false);
  const [progress, setProgress] = useState(progressState.NOT_STARTED);

  const renderDescTable = step => (
    <table>
      {step.table.th.map((header, id) => (
        <tr key={id}>
          <th className="border-1px">{header}</th>
          {!!step.table.td.length && step.table.td[0][id] && (
            <td className="border-1px">{step.table.td[0][id]}</td>
          )}
        </tr>
      ))}
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

  const renderButtons = () => {
    if (show) {
      return (
        <>
          <Button
            variant="contained"
            onClick={() => setProgress(progressState.IN_PROGRESS)}
          >
            Start
          </Button>
          <span className="spacer-16" />
          <Button
            variant="contained"
            onClick={() => setProgress(progressState.PASSING)}
          >
            Pass
          </Button>
          <span className="spacer-16" />
          <Button
            variant="contained"
            onClick={() => setProgress(progressState.FAILING)}
          >
            Fail
          </Button>
        </>
      );
    }
    return null;
  };

  let h2Class = '';
  switch (progress) {
    case progressState.IN_PROGRESS:
      h2Class = 'progress';
      break;
    case progressState.PASSING:
      h2Class = 'pass';
      break;
    case progressState.FAILING:
      h2Class = 'fail';
      break;
    default:
      break;
  }

  return (
    <>
      <h2
        id="scenario-user-can-create-a-new-case"
        style={{ cursor: 'pointer' }}
        onClick={() => setShow(!show)}
        className={`${h2Class} row`}
      >
        <div className="center">
          <Caret show={show} />
        </div>
        Scenario: {scenario.name}
      </h2>

      {renderButtons()}
      {renderSteps()}
    </>
  );
};

export default Scenario;
