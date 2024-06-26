import React, { useState, useEffect } from 'react';
import { Navbar, Nav, Container, Dropdown } from 'react-bootstrap';
import { MDBBtn, MDBContainer, MDBRow, MDBCol, MDBCard, MDBCardBody } from 'mdb-react-ui-kit';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';

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
    }, [navigate]);

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

    const redirectDashboard = async (e) => {
        navigate('/dashboard');
    };

    const redirectUsers = async (e) => {
        navigate('/users');
    };

    return (
        <MDBContainer fluid className="p-0 dashboard-container">
            <Navbar className="navbar-custom" expand="lg">
                <Container>
                    <Navbar.Brand>Menu</Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="me-auto">
                            <Nav.Link onClick={redirectDashboard}>Inicio</Nav.Link>
                            <Nav.Link onClick={redirectUsers}>Usuarios</Nav.Link>
                            {/* <Dropdown>
                                <Dropdown.Toggle variant="secondary" id="dropdown-basic">
                                    Menu
                                </Dropdown.Toggle>
                                <Dropdown.Menu>
                                    <Dropdown.Item href="#action/1">Action 1</Dropdown.Item>
                                    <Dropdown.Item href="#action/2">Action 2</Dropdown.Item>
                                    <Dropdown.Item href="#action/3">Action 3</Dropdown.Item>
                                </Dropdown.Menu>
                            </Dropdown> */}
                        </Nav>
                        <Nav>
                            <Nav.Link onClick={handleLogout}>Cerrar Sesión</Nav.Link>
                        </Nav>
                    </Navbar.Collapse>
                </Container>
            </Navbar>
            <Container className="dashboard-body">
                {user && <h1 className="dashboard-welcome">Bievenido, {user.name}!</h1>}
                <MDBRow>
                    <MDBCol md="4">
                        <MDBCard className="card-custom">
                            <MDBCardBody>
                                <h5>Card 1</h5>
                                <p>Content for card 1.</p>
                            </MDBCardBody>
                        </MDBCard>
                    </MDBCol>
                    <MDBCol md="4">
                        <MDBCard className="card-custom">
                            <MDBCardBody>
                                <h5>Card 2</h5>
                                <p>Content for card 2.</p>
                            </MDBCardBody>
                        </MDBCard>
                    </MDBCol>
                    <MDBCol md="4">
                        <MDBCard className="card-custom">
                            <MDBCardBody>
                                <h5>Card 3</h5>
                                <p>Content for card 3.</p>
                            </MDBCardBody>
                        </MDBCard>
                    </MDBCol>
                </MDBRow>
            </Container>
        </MDBContainer>
    );
}

export default Dashboard;
