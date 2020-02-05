import React from 'react';
import data from '../data';

const Tabs = ({ tabState, tabs }) => {
  const [tab, setTab] = tabState;
  return (
    <div className="tabs-container">
      {tabs.map((item, id) => (
        <div
          className={`tab center ${tab === id ? 'selected' : ''}`}
          onClick={() => setTab(id)}
        >
          {item}
        </div>
      ))}
    </div>
  );
};

export default Tabs;
