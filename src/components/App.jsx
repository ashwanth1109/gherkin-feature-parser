import React, { useState } from 'react';

import Scenarios from './Scenarios';
import AdminLogin from './steps/AdminLogin';
import data from '../data/index';
import Tabs from './Tabs';

const scenarios = data.case;

export default () => {
  const [tab, setTab] = useState(0);

  const tabs = ['home', ...Object.keys(data)];

  const renderPage = () => {
    if (tab) {
      return <Scenarios data={data[tabs[tab]]} />;
    }
    return (
      <>
        <a href="#">How to use this app?</a>
        <h2>Step Definitions</h2>
        <AdminLogin />
      </>
    );
  };

  return (
    <div>
      <Tabs tabState={[tab, setTab]} tabs={tabs} />
      {renderPage()}
    </div>
  );
};
