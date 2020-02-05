import React, { Fragment } from 'react';
import { withStyles, makeStyles } from '@material-ui/core/styles';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

const StyledTableCell = withStyles(theme => ({
  head: {
    backgroundColor: theme.palette.common.black,
    color: theme.palette.common.white
  },
  body: {
    fontSize: 14
  }
}))(TableCell);

const StyledTableRow = withStyles(theme => ({
  root: {
    '&:nth-of-type(odd)': {
      backgroundColor: theme.palette.background.default
    }
  }
}))(TableRow);

function createData(name, calories, fat, carbs, protein) {
  return { name, calories, fat, carbs, protein };
}

const rows = [
  createData('Frozen yoghurt', 159, 6.0, 24, 4.0),
  createData('Ice cream sandwich', 237, 9.0, 37, 4.3),
  createData('Eclair', 262, 16.0, 24, 6.0),
  createData('Cupcake', 305, 3.7, 67, 4.3),
  createData('Gingerbread', 356, 16.0, 49, 3.9)
];

export default function Scenarios({ data }) {
  return (
    <div>
      {data.map((scenario, id) => {
        return (
          <Fragment key={`${id}-${scenario.name}`}>
            <h2 id="scenario-user-can-create-a-new-case">
              Scenario: User can create a new case with (CASE_ID, CASE_TITLE,
              CASE_STATUS)
            </h2>
            <TableContainer component={Paper}>
              <table>
                <TableHead>
                  <TableRow>
                    <StyledTableCell>No.</StyledTableCell>
                    <StyledTableCell>Description</StyledTableCell>
                    <StyledTableCell>Expected Outcome</StyledTableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {scenario.steps.map((step, id) => (
                    <StyledTableRow key={id + 1}>
                      <StyledTableCell scope="row">{id + 1}</StyledTableCell>
                      <StyledTableCell>{step.description}</StyledTableCell>
                      <StyledTableCell>{step.outcome}</StyledTableCell>
                    </StyledTableRow>
                  ))}
                </TableBody>
              </table>
            </TableContainer>
          </Fragment>
        );
      })}
    </div>
  );
}
