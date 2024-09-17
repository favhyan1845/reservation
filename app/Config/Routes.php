<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Home::index');
$routes->get('/', 'servicesController::index');
$routes->get('/booking/', 'servicesController::bookingReservations');

$routes->get('/modify-reservation/(:num)', 'servicesController::modifyingReservations/$1');
$routes->get('/cancel-reservation/(:num)', 'servicesController::cancellingReservations/$1');
$routes->get('/view-reservation/(:num)', 'servicesController::viewingReservations/$1');
