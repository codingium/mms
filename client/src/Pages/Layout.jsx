import { useState } from 'react';
import './Layout.css';
import { Link, Outlet } from 'react-router-dom';

function Layout() {
  const [count, setCount] = useState(0);

  return (
    <>
      <nav>
        <Link to="/test-child">Test Child</Link>
      </nav> 

      <Outlet/>

      <div>/Layout footer/</div>
    </>
  );
}

export default Layout;
