import React from 'react';

const AdminLogin = () => (
  <>
    <h3 id="user-is-logged-in-as-admin">User is logged in as Administrator</h3>
    <table>
      <tr>
        <th>No.</th>
        <th>Description</th>
        <th>Expected Outcome</th>
      </tr>
      <tr>
        <td>1</td>
        <td>
          <a href="https://docs.google.com/spreadsheets/d/1XYIXlb7WfY5PDis9agQiv-7jeCubulrQgzN5i035Xeg/edit#gid=0">
            Go to link for credentials
          </a>
        </td>
        <td>Action is executed</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Visit the environment URL given in the link above</td>
        <td>Action is executed</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Enter administrator credentials as in link above</td>
        <td>Action is executed</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Click the login button</td>
        <td>Action is executed</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Check the outcome</td>
        <td>App is logged in succesfully</td>
      </tr>
    </table>
  </>
);

export default AdminLogin;
