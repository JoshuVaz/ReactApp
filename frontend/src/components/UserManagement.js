import React, { useState, useEffect } from 'react';
import { Navbar, Nav, Container, Dropdown, Table, Form } from 'react-bootstrap';
import { MDBBtn, MDBContainer, MDBRow, MDBCol, MDBCard, MDBCardBody } from 'mdb-react-ui-kit';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';


function UserManagement() {
    const [users, setUsers] = useState([]);
    const navigate = useNavigate();

    useEffect(() => {
        const fetchUsers = async () => {
            const token = localStorage.getItem('token');
            try {
                const response = await axios.get('http://localhost:8000/api/users', {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });
                setUsers(response.data);
            } catch (error) {
                console.error('Error fetching users:', error);
            }
        };

        fetchUsers();
    }, []);

    const updateUserRole = async (userId, newRole) => {
        const token = localStorage.getItem('token');
        try {
            await axios.patch(`http://localhost:8000/api/users/${userId}/role`, { role: newRole }, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            setUsers(users.map(user => user.id === userId ? { ...user, role: newRole } : user));
        } catch (error) {
            console.error('Error updating user role:', error);
        }
    };
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
        <div>
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
            <h2>User Management</h2>
            <Table striped bordered hover>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {users.map(user => (
                        <tr key={user.id}>
                            <td>{user.id}</td>
                            <td>{user.name}</td>
                            <td>{user.email}</td>
                            <td>{user.role}</td>
                            <td>
                                <Form.Select
                                    value={user.role}
                                    onChange={(e) => updateUserRole(user.id, e.target.value)}
                                >
                                    <option value="user">User</option>
                                    <option value="admin">Admin</option>
                                </Form.Select>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </Table>
        </div>
    );
}

export default UserManagement;
