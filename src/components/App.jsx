import React, { useState } from 'react';

import Scenarios from './Scenarios';
import AdminLogin from './steps/AdminLogin';
import data from '../data/index';
import Tabs from './Tabs';

export default () => {
  const [tab, setTab] = useState(0);

  const tabs = ['home', ...Object.keys(data)];

  const renderPage = () => {
    if (tab) {
      return <Scenarios data={data[tabs[tab]]} />;
    }
    return (
      <>
        <a href="https://drive.google.com/file/d/1GBUl32QavDSfHmjNfpc2syrMbQIM1eIQ/view?usp=sharing">
          How to use this app?
        </a>
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
