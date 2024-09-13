<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Home::index');
$routes->get('/', 'servicesController::index');
$routes->get('/booking-reservation', 'servicesController::bookingReservations');
$routes->get('/modify-reservation/(:num)', 'servicesController::modifyingReservations/$1');