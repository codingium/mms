import { useState } from 'react';
import './Layout.css';

function Layout() {
  const [count, setCount] = useState(0);

  return (
    <div className="App">
      <h1>Hello World!</h1>
    </div>
  );
}

export default Layout;
