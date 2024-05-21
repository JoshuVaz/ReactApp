import React, { useState } from 'react';
import {
    MDBBtn,
    MDBContainer,
    MDBRow,
    MDBCol,
    MDBCard,
    MDBCardBody,
    MDBInput,
  }
  from 'mdb-react-ui-kit';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';


function Login() {

    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [loginError, setLoginError] = useState('')
    const navigate = useNavigate();

    const handleLogin = async (e) => {
        e.preventDefault();
        setLoginError('');
        try {
            const response = await axios.post('http://localhost:8000/api/login', {
                email,
                password,
            });
            localStorage.setItem('token', response.data.access_token);
            navigate('/dashboard');
        } catch (error) {
            console.error('There was an error logging in!', error.response.data);
            setLoginError(error.response.data.message);
            return
        }
    };

    const redirectRegister = async (e) => {
        navigate('/register');
    };

    return (
      <MDBContainer fluid className='miLogin'>
  
        <MDBRow className='d-flex justify-content-center align-items-center h-100'>
          <MDBCol col='12'>
  
            <MDBCard className='bg-dark text-white my-5 mx-auto' style={{borderRadius: '1rem', maxWidth: '400px'}}>
              <MDBCardBody className='p-5 d-flex flex-column align-items-center mx-auto w-100'>
  
                <h2 className="fw-bold mb-2 text-uppercase">Login</h2>
                <p className="text-white-50 mb-5">Porfavor ingresa tu correo y contraseña</p>
  
                <MDBInput wrapperClass='mb-4 mx-5 w-100' labelClass='text-white' label='Correo' size="lg"
                type="email"
                value={email}
                placeholder="Ingresa tu correo aqui!"
                onChange={(ev) => setEmail(ev.target.value)}/>

                <MDBInput wrapperClass='mb-4 mx-5 w-100' labelClass='text-white' label='Contraseña' size="lg"
                type='password'
                value={password}
                placeholder="Ingresa tu contraseña aqui!"
                onChange={(ev) => setPassword(ev.target.value)}/>
                <label className="errorLabel"style={{color: "red"}}>{loginError}</label>
  
                <MDBBtn outline className='mx-2 px-5' color='white' size='lg'
                type="button" onClick={handleLogin} value={'Log in'}>
                  Iniciar Sesión
                </MDBBtn>
  
                <div>
                  <p className="mb-0" style={{textAlign: "center"}}>No tienes cuenta?</p>
                  <MDBBtn outline className='mx-2 px-5' color='white' size='lg'
                type="button" onClick={redirectRegister} value={'Log in'}>
                  Registrate
                </MDBBtn>
  
                </div>
              </MDBCardBody>
            </MDBCard>
  
          </MDBCol>
        </MDBRow>
  
      </MDBContainer>
    );
  }

export default Login;
