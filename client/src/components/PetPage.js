import React, { useState, useEffect } from 'react'
import NavBar from "./NavBar"
import PetDetail from "./PetDetail"

function PetPage({ setIsAuthenticated, setUser, user }) {

  const [pets, setPets] = useState([])

  useEffect(() => {
    fetch("/pets")
      .then((r) => r.json())
      .then(setPets);
  }, []);

    const petObj = pets.map((pet) => 
      <PetDetail 
        key={pet.id}
        pet={pet}
      />
    )
  return (
    <div>
        <NavBar setUser={setUser} setIsAuthenticated={setIsAuthenticated} user={user}/>
        <h2>Meet all the furbabies we take care of:</h2>
        <br></br>
        <div className="ui center aligned grid container">
          {petObj}
        </div>
    </div>
  )
}

export default PetPage