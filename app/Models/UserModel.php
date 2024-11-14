<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'pelanggan'; // Table name
    protected $primaryKey = 'id_pelanggan'; // Primary key field
    protected $allowedFields = ['id_pelanggan', 'nama', 'alamat', 'TLP']; // Fields we are allowed to insert/update
    
    // If you don't want to specify all the columns, you can use this:
    // protected $returnType = 'array'; // This is optional, by default return type is 'array'

    // Function to find a user by the 'real' name (recipient's name)
    public function getUserByName($name)
    {
        return $this->where('nama', $name)->first(); // Returns the first match or null if no match
    }
}
