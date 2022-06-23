import React, { useState, useEffect } from "react"
import { Route, Routes } from "react-router-dom"
import LandingPage from "./components/LandingPage"
import SignupPage from "./components/SignupPage"
import LoginPage from "./components/LoginPage"
import SitterCalendar from "./components/SitterCalendar.js"
import AppointmentDetail from "./components/AppointmentDetail"
import ProfilePage from "./components/ProfilePage"
import PetPage from "./components/PetPage"

function App() {

  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState(null);
  
  useEffect(() => {
    fetch('/authorize')
    .then((res) => {
      if (res.ok) {
        res.json()
        .then((user) => {
          setIsAuthenticated(true);
          setUser(user);
        });
      }
      else {
        console.log("We received errors...")
      }
    });
  },[]);

  function onLogin(newUser) {
    setUser([...user, newUser])
  }
  
  if (!isAuthenticated) return <LoginPage error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;
  if (!user) return <LoginPage setUser={setUser} setIsAuthenticated={setIsAuthenticated} />

  return (
    
    <div className="background">
      <h1 className="font-face-gm">Happy Paws Puppysitters</h1>

      <Routes>
      <Route exact path="/" element={<LandingPage 
            setUser={setUser} 
            setIsAuthenticated={setIsAuthenticated}
            user={user}
          />} />

        <Route exact path="/calendar" element={<SitterCalendar 
             setUser={setUser} 
             setIsAuthenticated={setIsAuthenticated}
             user={user}
             />} />  
      


      <Route exact path="/appointmentdetails" element={<AppointmentDetail 
            setUser={setUser} 
            setIsAuthenticated={setIsAuthenticated}
            user={user}
          />} />

        <Route path="/signup" element={<SignupPage 
            onLogin={onLogin}
          />} />

        <Route path="/login" element={<LoginPage 
            setUser={setUser} 
            setIsAuthenticated={setIsAuthenticated} 
          />} />


        <Route path="/pets" element={<PetPage 
            setUser={setUser} 
            setIsAuthenticated={setIsAuthenticated}
            user={user}
          />} />


        {user&&user.admin?<Route path="/profiles" element={<ProfilePage
            setUser={setUser} 
            setIsAuthenticated={setIsAuthenticated}
            user={user}
            />} />:null}

      </Routes>
      <div className='footer'>
        <div>Happy Paws Puppysitters</div>   
        <div>Created By: Jaskirat Sidhu </div>
      </div> 
      
      
    </div>
  );
}

export default App;