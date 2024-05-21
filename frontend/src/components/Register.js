import React, { useState } from 'react';
import {
  MDBBtn,
  MDBContainer,
  MDBCard,
  MDBCardBody,
  MDBCol,
  MDBRow,
  MDBInput,
}
from 'mdb-react-ui-kit';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

function Register() {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [passwordConfirmation, setPasswordConfirmation] = useState('');
  const navigate = useNavigate();

  const handleRegister = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/api/register', {
        name,
        email,
        password,
        password_confirmation: passwordConfirmation,
      });
      console.log(response.data); // Añade esto para depuración
      navigate('/login');
    } catch (error) {
      console.error('There was an error registering!', error.response.data); // Añade esto para depuración
    }
  };
    
  const redirectLogin = async (e) => {
    navigate('/login');
  };

  return (
    <MDBContainer fluid className='p-4 background-radial-gradient overflow-hidden miRegister'>

      <MDBRow>

        <MDBCol md='6' className='text-center text-md-start d-flex flex-column justify-content-center'>

          <h1 className="my-5 display-3 fw-bold ls-tight px-3" style={{color: 'hsl(218, 81%, 95%)'}}>
            Registro<br />
            <span style={{color: 'hsl(218, 81%, 75%)'}}>nuevo usuario</span>
          </h1>

          <p className='px-3'  style={{color: 'hsl(218, 81%, 85%)', fontSize: '24px'}}>
            ¡Bienvenido por favor registrate!
          </p>

        </MDBCol>

        <MDBCol md='6' className='position-relative'>

          <div id="radius-shape-1" className="position-absolute rounded-circle shadow-5-strong"></div>
          <div id="radius-shape-2" className="position-absolute shadow-5-strong"></div>

          <MDBCard className='my-5 bg-glass'>
            <MDBCardBody className='p-5'>


              <MDBInput wrapperClass='mb-4' label='Nombre' 
              type='text'
              value={name} 
              onChange={(e) => setName(e.target.value)} />

              <MDBInput wrapperClass='mb-4' label='Email' 
              type='email'
              value={email}
              onChange={(e) => setEmail(e.target.value)}/>

              <MDBInput wrapperClass='mb-4' label='Contraseña' 
              type='password'
              value={password}
              onChange={(e) => setPassword(e.target.value)}/>

              <MDBInput wrapperClass='mb-4' label='Confirmar Contraseña' 
              type='password'
              value={passwordConfirmation}
              onChange={(e) => setPasswordConfirmation(e.target.value)} />

              <MDBBtn className='w-100 mb-4' size='md' type="button" onClick={handleRegister}>Registrarse</MDBBtn>

              <div className="text-center">

                <p>Si ya tienes cuenta:</p>

              </div>
              <MDBBtn className='w-100 mb-4' size='md'  type="button" onClick={redirectLogin}>Inicia Sesión</MDBBtn>


            </MDBCardBody>
          </MDBCard>

        </MDBCol>

      </MDBRow>

    </MDBContainer>
  );
}

export default Register;
