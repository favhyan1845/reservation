<?php namespace App\Models;
    use CodeIgniter\Model;
    class ServicesModel extends Model{


    protected $table = 'services'; // Nombre de la tabla en la base de datos
    protected $primaryKey       = 'id';
    protected $allowedFields =['id', 'user','email','date-in','date-out','type','status']; 
    public function getAllServices(){
        $db = \Config\Database::connect();
        $builder = $db->table($this->table);
        return $builder->get()->getResultArray();
    }
    public function updateService($data){
        $db = \Config\Database::connect();
        $builder = $db->table($this->table);
        $builder->where('id', $data['id']);
        $service = $builder->update($data);
        return $service;
    }
        public function insertService($data){
            $db = \Config\Database::connect();
            $builder = $db->table($this->table);
            $service = $builder->insert($data); 
            return $service;
        }
        public function cancelService($data){
            $db = \Config\Database::connect();
            $builder = $db->table($this->table);
            $builder->where('id', $data['id']);
            $service = $builder->update($data);  
            return $service;
        }
        public function viewService($data){
            $db = \Config\Database::connect();
            $builder = $db->table($this->table);
            $builder->where('id', $data);
            return $builder->get()->getResultArray()[0];
        }

}