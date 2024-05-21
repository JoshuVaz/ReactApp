import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

function Dashboard() {
  const [user, setUser] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchUser = async () => {
      try {
        const token = localStorage.getItem('token');
        const response = await axios.get('http://localhost:8000/api/user', {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });
        setUser(response.data);
      } catch (error) {
        console.error('There was an error fetching the user!', error);
        navigate('/login');
      }
    };

    fetchUser();
  }, []);

  const handleLogout = async () => {
    const token = localStorage.getItem('token');
    
    try {
      await axios.post('http://localhost:8000/api/logout', {}, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      localStorage.removeItem('token');
      navigate('/login');
      
    } catch (error) {
      console.error('Error logging out!', error.response.data);
    }

  };

  return (
    <div>
      <h2>Dashboard</h2>
      {user && (
        <div>
          <p>Welcome, {user.name}!</p>
          <button onClick={handleLogout}>Logout</button>
        </div>
      )}
    </div>
  );
}



export default Dashboard;


/*
Comando para backend: 
php artisan migrate
php artisan serve 

Comandos frontend:
npm install
npm start
*/