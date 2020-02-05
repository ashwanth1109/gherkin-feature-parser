import React from 'react';
import { withStyles } from '@material-ui/core/styles';
import { green, red } from '@material-ui/core/colors';
import FormGroup from '@material-ui/core/FormGroup';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import Switch from '@material-ui/core/Switch';

const PurpleSwitch = withStyles({
  switchBase: {
    color: red[300],
    '&$checked': {
      color: green[500]
    },
    '&$checked + $track': {
      backgroundColor: green[500]
    }
  },
  checked: {},
  track: {}
})(Switch);

export default function PassFail() {
  const [checked, setChecked] = React.useState(false);

  return (
    <div className="row a-center">
      <span>Fail</span>
      <FormGroup className="m-left-24">
        <FormControlLabel
          control={
            <PurpleSwitch
              checked={checked}
              onChange={() => setChecked(!checked)}
              value="checkedA"
            />
          }
        />
      </FormGroup>
      <span>Pass</span>
    </div>
  );
}
