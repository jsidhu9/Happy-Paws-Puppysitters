import React from 'react'
import { NavLink } from "react-router-dom";

function NavBar({ setIsAuthenticated, setUser, user }) {

  const logout = () => {
    fetch('/logout',{
        method:'DELETE'
    })
    .then(()=>{
        setIsAuthenticated(false)
        setUser(null)
    })
  }
  return ( 
    <div>
        <NavLink
        to="/"
        exact
        className="ui-center-floated-button"
        activeStyle={{
          background: "#E6E6E8",
        }}
      >
        Home
      </NavLink> 

      <NavLink
        to="/calendar"
        exact
        className="ui-center-floated-button"
        activeStyle={{
          background: "#E6E6E8",
        }}
      >
        Calendar
      </NavLink>
      
      <NavLink
        to="/appointmentdetails"
        exact
        className="ui-center-floated-button"
        activeStyle={{
          background: "#E6E6E8",
        }}
      >
        Appointment Detail
      </NavLink>

      <NavLink
        to="/pets"
        exact
        className="ui-center-floated-button"
        activeStyle={{
          background: "#E6E6E8",
        }}
      >
        Pets
      </NavLink>

      {user&&user.admin?<NavLink
        to="/profiles"
        exact
        className="ui-center-floated-button"
        activeStyle={{
          background: "#E6E6E8",
        }}
      >
        All User Profiles
      </NavLink>:null}

      <button className="ui-center-floated-button" onClick={()=>logout()}>Logout</button>

    </div>
  )
}

export default NavBar