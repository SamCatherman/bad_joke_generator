import React, { useState, useEffect } from 'react';
import './App.css';
import { Button } from 'semantic-ui-react'

function App() {
  const [hasError, setErrors] = useState(false);
  const [dadJoke, setDadJoke] = useState({});
  
  async function fetchData() {
    const res = await fetch('http://localhost:3001/jokes/generate', { method: 'POST' })
    res.json()
       .then(res => setDadJoke(res))
       .catch(err => setErrors(err))
  }

  useEffect(() => {
    fetchData();
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <Button content="Click Here to generate a new Dad Joke" onClick={fetchData}/>
        <p>{dadJoke.markov_translation}</p>
      </header>
    </div>
  );
}

export default App;
