import React from 'react';
import { Route, Navigate } from 'react-router-dom';

function DashboardRoute({ element: Element, ...rest }) {
    const isAuthenticated = !!localStorage.getItem('token');

    return (
        <Route
            {...rest}
            element={
                isAuthenticated ? (
                    <Element />
                ) : (
                    <Navigate to="/login" state={{ from: rest.location }} />
                )
            }
        />
    );
}

export default DashboardRoute;
