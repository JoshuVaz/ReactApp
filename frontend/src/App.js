import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login';
import Register from './components/Register';
import Dashboard from './components/Dashboard';
import '../node_modules/mdb-react-ui-kit/dist/css/mdb.min.css' // Importa los estilos de MDBReact
import '@fortawesome/fontawesome-free/css/all.min.css'; // Importa los iconos de FontAwesome
import '../src/App.css'; // Importa tus estilos personalizados
import '../src/index.css';
import '../src/styles/login.css'
//import 'bootstrap/dist/css/bootstrap.min.css'

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/dashboard" element={<Dashboard />} />
      </Routes>
    </Router>
  );
}

export default App;
