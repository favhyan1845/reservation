<?php

namespace App\Controllers;

class servicesController extends BaseController
{
    public function index(): string
    {
		$data = $this->servicesGetAll();
        return view('index',  ['data' => $data]);
    }
    public function bookingReservations(): string
    {
        $user = $this->request->getGet('user');
        $email = $this->request->getGet('email');
        $dateIn = $this->request->getGet('dateIn');
        $dateOut = $this->request->getGet('dateOut');

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
}