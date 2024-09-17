<?php

namespace App\Controllers;

class servicesController extends BaseController
{
    public function index(): string
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type, Authorization");

		$data = $this->servicesGetAll();
        return json_encode($data);
    }
    public function bookingReservations(): string
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type, Authorization");

        $user = $this->request->getPost('user');
        $email = $this->request->getPost('email');
        $dateIn = $this->request->getPost('dateIn');
        $dateOut = $this->request->getPost('dateOut');

        $data = [
                'user' => $user,
                'email' => $email,
                'date-in' => $dateIn,
                'date-out' => $dateOut,
                'type' => 1,
                'status' => 'Y'
        ];

		$data['service'] = $this->servicesInsert($data);

        if($data['service'] === true){
            return 200;
        }else{
            return 401;
        }        
    }
    public function modifyingReservations($id): string
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type, Authorization");

        $user = $this->request->getGet('user');
        $email = $this->request->getGet('email');
        $dateIn = $this->request->getGet('dateIn');
        $dateOut = $this->request->getGet('dateOut');

        $data = [
                'id' => $id,
                'user' => $user,
                'email' => $email,
                'date-in' => $dateIn,
                'date-out' => $dateOut,
                'type' => 2,
                'status' => 'Y'
        ];

		$data['service'] = $this->servicesModicate($data);

        if($data['service'] === true){
            return 200;
        }else{
            return 401;
        }        
    }
    public function cancellingReservations($id): string
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type, Authorization");

        $user = $this->request->getGet('user');
        $email = $this->request->getGet('email');
        $dateIn = $this->request->getGet('dateIn');
        $dateOut = $this->request->getGet('dateOut');

        $data = [
                'id' => $id,
                'user' => $user,
                'email' => $email,
                'date-in' => $dateIn,
                'date-out' => $dateOut,
                'type' => 3,
                'status' => 'N'
        ];

		$data['service'] = $this->servicesCancel($data);

        if($data['service'] === true){
            return 200;
        }else{
            return 401;
        }        
    }
    public function viewingReservations($id): string
    {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type, Authorization");

		$data['service'] = $this->servicesView($id);
        return view('view-reservation',  ['data' => $data]);
        return $data['service'];    
    }
}
