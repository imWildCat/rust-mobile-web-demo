import React, { useState } from "react";

import {add} from '../../../shared_lib_web/pkg/index'

export function ContentViewSimple() {
  const [valueA, setValueA] = useState(0);
  const [valueB, setValueB] = useState(0);

  // handle input change and parse as integer
  function handleChangeA(e: React.ChangeEvent<HTMLInputElement>) {
    setValueA(parseInt(e.target.value) || 0);
  }

  function handleChangeB(e: React.ChangeEvent<HTMLInputElement>) {
    setValueB(parseInt(e.target.value) || 0);
  }

  return (
    <div className="content-view-simple">
      <div className="input-row">
        <label htmlFor="value-a">a:</label>
        <input
          id="value-a"
          type="number"
          value={valueA}
          onChange={handleChangeA}
        />
      </div>
      <div className="input-row">
        <label htmlFor="value-b">b:</label>
        <input
          id="value-b"
          type="number"
          value={valueB}
          onChange={handleChangeB}
        />
      </div>
      <div className="result">
        <p>a + b = {add(valueA, valueB)}</p>
      </div>
    </div>
  );
}

