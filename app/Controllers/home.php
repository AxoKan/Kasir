<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Lelang;

class Home extends BaseController
{

	public function Login()
	{
        $model= new M_lelang();
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);

    echo view('Login', $data);
	}
	public function aksi_login() {
        $user_id = session()->get('id_user');
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        $recaptchaResponse = $this->request->getPost('g-recaptcha-response');
        $backupCaptcha = $this->request->getPost('backup_captcha');
    
        // Check if the server is online
       
        $model = new M_lelang();
            $where = array(
                'user' => $username,
                'password' => $password
            );
        
            $cek = $model->getWhere('user', $where);
        if ($cek > 0) {
                    session()->set('user', $cek->username);
                    session()->set('real', $cek->nama);
                    session()->set('id_user', $cek->id_user);
                    session()->set('Level', $cek->Level);
                    $model->logActivity($user_id, 'Login', 'User Has Log in.');
                    return redirect()->to('home/dashboard');
                } else {
                    return redirect()->to('login');
                }
    }
	
	public function setting()
           {
            $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
            $user_id = session()->get('id_user');
            if (in_array($userLevel, $allowedLevels)) {
               $model = new M_lelang();

               $logoData = $model->tampil('logo'); // Fetch all logos
               $filteredLogo = array_filter($logoData, function($item) {
                   return $item->id_logo == 1; // Adjust this condition as needed
               });
               $data['satu'] = reset($filteredLogo);
               $where = array('id_logo' => $id);
               $data['sa'] = $model->getwhere('logo', $where);
               $where=array('id_user'=>session()->get('id_user'));
        $data['user']=$model->getWhere('user', $where);

        $model->logActivity($user_id, 'View', 'User view Setting.');
               echo view('header', $data);
               echo view('menu', $data);
               echo view('setting', $data);
               echo view('footer');
            } else {
                return redirect()->to('home/notfound');
            }
           }
           public function aksi_setting()
           {
               $model = new M_lelang();
               $user_id = session()->get('id_user');
               $a = $this->request->getPost('nama');
               $icon = $this->request->getFile('image2');
               $dash = $this->request->getFile('image');

           
               // Debugging: Log received data
               log_message('debug', 'Website Name: ' . $a);
               log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
               log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
           
               $data = ['nama_logo' => $a];
               $uploadPath = ROOTPATH . 'public/assets/img/custom/';
           
               if ($icon && $icon->isValid() && !$icon->hasMoved()) {
                   if (!file_exists($uploadPath . $icon->getName())) {
                       $icon->move($uploadPath, $icon->getName());
                   }
                   $data['icon'] = $icon->getName();
               }
           
               if ($dash && $dash->isValid() && !$dash->hasMoved()) {
                   if (!file_exists($uploadPath . $dash->getName())) {
                       $dash->move($uploadPath, $dash->getName());
                   }
                   $data['logos'] = $dash->getName();
               }
           
           
               $where = ['id_logo' => 1];
               $model->logActivity($user_id, 'Updated', 'User Has Updated The Logo');
               $model->edit('logo', $data, $where);
           
               return redirect()->to('home/setting/1');
           }
           public function dashboard()
           {
               $userLevel = session()->get('Level');
               $allowedLevels = ['admin', 'petugas'];
               $user_id = session()->get('id_user');
           
               if (in_array($userLevel, $allowedLevels)) {
                   $model = new M_lelang();
           
                   // Fetch single logo data based on a condition
                   $logoData = $model->tampil('logo'); 
                   $filteredLogo = array_filter($logoData, function($item) {
                       return $item->id_logo == 1; // Adjust this condition as needed
                   });
                   $data['satu'] = reset($filteredLogo);
           
                   // Fetch specific data with conditions
                   $whereLogo = ['id_logo' => 1];
                   $data['sa'] = $model->getWhere('logo', $whereLogo);
           
                   $whereUser = ['id_user' => $user_id];
                   $data['user'] = $model->getWhere('user', $whereUser);
           
                   // Use countData to get the count of records in specific tables
                   $data['pejualan'] = $model->countData('penjualan');
                   $data['produk'] = $model->countData('produk');
           
                   // Log the user's activity
                   $model->logActivity($user_id, 'View', 'User view Dashboard.');
           
                   // Load views
                   echo view('header', $data);
                   echo view('menu', $data);
                   echo view('dashboard', $data);
                   echo view('footer');
               } else {
                   return redirect()->to('home/notfound');
               }
           }
	public function logout() {
        $user_id = session()->get('id_user');

            // Log the logout activity
            $model = new M_lelang();        
            $model->logActivity($user_id, 'Logout', 'User Has Logout.');
        session()->destroy();
        return redirect()->to('http://localhost:8080/home');
    }
	public function activity_log()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $model= new M_lelang();
        $user_id = session()->get('id_user');
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
    
        $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
        $logs = $model->getActivityLogs();
        $data['s'] = $model->tampil('user', 'id_user');
        $data['logs'] = $logs;
        $model->logActivity($user_id, 'View', 'User view Activity Log.');
        echo view('header');
        echo view('menu', $data);
        return view('activity_log', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
public function order()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];
    
        if (in_array($userLevel, $allowedLevels)) {
         $model= new M_lelang();
         $user_id = session()->get('id_user');
         $logoData = $model->tampil('logo'); // Fetch all logos
         $filteredLogo = array_filter($logoData, function($item) {
             return $item->id_logo == 1; // Adjust this condition as needed
         });
         $data['satu'] = reset($filteredLogo);
         $where=array('id_user'=>session()->get('id_user'));
         $data['user']=$model->getWhere('user', $where);
    $where=array('id_user'=>session()->get('id_user'));
    $data['sa'] = $model->join('detail',
        'produk',
        'detail.produk = produk.id_produk');
    
        $data['s'] = $model->tampil('produk', 'id_produk');
        $data['t'] = $model->tampil('pelanggan', 'id_pelanggan');
        $model->logActivity($user_id, 'View', 'User view Order.');

            echo view('header', $data);
            echo view('menu',$data);
              echo view('order');
            echo view('footer');
    
} else {
    return redirect()->to('home/notfound');
}
    }
    public function aksi_order()
    {
        // Retrieve user level and user ID from the session
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin', 'petugas'];
        $user_id = session()->get('id_user');
    
        // Proceed only if the user has the right level
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Main model for the operation
            $userModel = new \App\Models\UserModel(); // Model for user data
    
            // Get form data from POST request
            $b = $this->request->getPost('nama');  // Recipient's name
            $c = $this->request->getPost('jenis1'); // Product type
            $d = $this->request->getPost('totalM'); // Product quantity
            $e = $this->request->getPost('totalHarga'); // Total price
            $tgl = date('Y-m-d');
            $pengirim = $user_id; // Sender's ID from session
    
            // Check if the 'penerima' exists in the user table
            $existingUser = $userModel->getUserByName($b); // Query for the recipient by name
            $id_existing = $existingUser ? $existingUser['id_pelanggan'] : null;
    
            // If 'pelanggan' does not exist, add a new entry for 'nama' and recheck
            if (!$id_existing) {
                // Prepare and insert data for new pelanggan
                $newPelanggan = ['nama' => $b];
                $model->tambah('pelanggan', $newPelanggan);
    
                // Recheck to retrieve the new pelanggan ID
                $existingUser = $userModel->getUserByName($b);
                $id_existing = $existingUser ? $existingUser['id_pelanggan'] : null;
    
                // If still no ID, handle as an error (could not add or retrieve pelanggan ID)
                if (!$id_existing) {
                    return redirect()->to('home/order')->with('error', 'Unable to add new pelanggan');
                }
            }
    
            // Prepare data for 'surat_keluar' with the existing or new pelanggan ID
            $suratKeluar = [
                'tgl' => $tgl,
                'pelanggan' => $id_existing, // Use the retrieved or existing user ID
                'total_harga' => $e,
            ];
    
            // Insert into `penjualan` table (surat_keluar)
            $model->tambah('penjualan', $suratKeluar);
    
            // Get the latest `penjualan` ID for surat_masuk
            $latestPenjualan = $model->getLatestPenjualanId(); // Define `getLatestPenjualanId` in M_lelang
    
            // Prepare and insert data for 'surat_masuk'
            $suratMasuk = [
                'penjualan' => $latestPenjualan,
                'produk' => $c,
                'jumlahProduk' => $d,
                'subtotal' => $e,
            ];
            $model->tambah('detail', $suratMasuk);
    
            // Log the user's activity
            $model->logActivity($user_id, 'Add', 'User memesan produk.');
    
            // Redirect to the desired page after processing
            return redirect()->to('home/order');
        } else {
            // If user level is not allowed, redirect to a "not found" page
            return redirect()->to('notfound');
        }
    }
    public function history()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];
    
        if (in_array($userLevel, $allowedLevels)) {
         $model= new M_lelang();
         $user_id = session()->get('id_user');
         $logoData = $model->tampil('logo'); // Fetch all logos
         $filteredLogo = array_filter($logoData, function($item) {
             return $item->id_logo == 1; // Adjust this condition as needed
         });
         $data['satu'] = reset($filteredLogo);
         $where=array('id_user'=>session()->get('id_user'));
         $data['user']=$model->getWhere('user', $where);
    $where=array('id_user'=>session()->get('id_user'));
    $data['sa'] = $model->joinFourTable(
        'detail',                            // First table
        'penjualan',                         // Second table
        'produk',
        'pelanggan',                          // Third table
        'detail.penjualan = penjualan.id_penjualan', // First join condition (detail to penjualan)
        'detail.produk = produk.id_produk',
        'penjualan.pelanggan = pelanggan.id_pelanggan'    // Second join condition (detail to produk)
    );
    
    
        $data['s'] = $model->join('penjualan',
        'pelanggan',
        'penjualan.pelanggan = pelanggan.id_pelanggan');
    
   
        $model->logActivity($user_id, 'View', 'User view History.');

            echo view('header', $data);
            echo view('menu',$data);
              echo view('history',$data);
            echo view('footer');
    
} else {
    return redirect()->to('home/notfound');
}
    }
    public function admin()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('user', 'id_user');
    $model->logActivity($user_id, 'View', 'User view Admin Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('admin',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function t_user()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];
    $user_id = session()->get('id_user');
    if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
    $data['user']=$model->getWhere('user', $where);
    $model->logActivity($user_id, 'View', 'User view Add User.');
        echo view('header', $data);
        echo view('menu', $data);
        echo view('t_user');
        echo view('footer');
    } else {
        return redirect()->to('home/notfound');
    }
}
public function aksi_t_user()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin'];
        $user_id = session()->get('id_user');
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Assuming you instantiate the model like this
           

            $b = $this->request->getPost('nama');
            $c = $this->request->getPost('username');
            $d = $this->request->getPost('level1');
            
            // Set password based on level
            if ($d == 'admin') {
                $password = md5("admin");
            } elseif ($d == 'petugas') {
                $password = md5("petugas");
            } else {
                $password = md5("default137"); // Default password if level is not recognized
            }
    
            $isi = array(
           

                'user' => $c,
                'Level' => $d,
                'password' => $password,
                'real' => $b,
            );
    
            // Print the data for debugging purposes
            // print_r($isi);
    
            // Perform the insert operation
         
            $model->tambah('user', $isi);
            $model->logActivity($user_id, 'Add', 'User add user.');
            // Redirect to the desired page
            return redirect()->to('home/t_user');
        } else {
            return redirect()->to('notfound');
        }
    }
    public function petugas()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('user', 'id_user');
    $model->logActivity($user_id, 'View', 'User view PEtugas Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('petugas',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function customer()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('pelanggan', 'id_pelanggan');
    $model->logActivity($user_id, 'View', 'User view Customer Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('customer',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function Edit($id)
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin', 'petugas'];

    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang();
        $user_id = session()->get('id_user');
        
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        
        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('user', $where);

        $where=array('id_pelanggan'=>$id);
        // Ensure this returns a single result
        $data['sa'] = $model->getwhere('pelanggan', $where); 
        

        $model->logActivity($user_id, 'View', 'User view EditCustomer Menu.');

        echo view('header', $data);
        echo view('menu', $data);
        echo view('Edit', $data);
        echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}

    public function aksi_edit()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin','petugas'];
        $user_id = session()->get('id_user');
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Assuming you instantiate the model like this
           

            $b = $this->request->getPost('nama');
            $c = $this->request->getPost('alamat');
            $d = $this->request->getPost('TLP');
            $id= $this->request->getPost('id');
            $where = array('id_pelanggan' => $id);
            // Set password based on level
          
    
            $isi = array(
           

                'nama' => $b,
                'alamat' => $c,
                'TLP' => $d,
            );
    
            // Print the data for debugging purposes
            // print_r($isi);
    
            // Perform the insert operation
         
            $model->edit('pelanggan', $isi, $where);
            $model->logActivity($user_id, 'Updated', 'User edited customer.');
            // Redirect to the desired page
            return redirect()->to('home/customer');
        } else {
            return redirect()->to('notfound');
        }
    }
    public function produk()
    {
        $userLevel = session()->get('Level');
            $allowedLevels = ['admin','petugas'];
        
            if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
    
    $data['s'] = $model->tampil('produk', 'id_produk');
    $model->logActivity($user_id, 'View', 'User view produk Menu.');
     echo view('header', $data);
    echo view('menu',$data);
    echo view('produk',$data);
    echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
    }
    public function EditP($id)
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin', 'petugas'];

    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang();
        $user_id = session()->get('id_user');
        
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        
        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('user', $where);

        // Ensure this returns a single result
        $where=array('id_produk'=>$id);
        // Ensure this returns a single result
        $data['sa'] = $model->getwhere('produk', $where); 

        $model->logActivity($user_id, 'View', 'User view EditProduk Menu.');

        echo view('header', $data);
        echo view('menu', $data);
        echo view('EditP', $data);
        echo view('footer');
    } else {
        return redirect()->to('notfound');
    }
}

    public function aksi_editP()
    {
        $userLevel = session()->get('Level');
        $allowedLevels = ['admin','petugas'];
        $user_id = session()->get('id_user');
        if (in_array($userLevel, $allowedLevels)) {
            $model = new M_lelang(); // Assuming you instantiate the model like this
           

            $b = $this->request->getPost('nama');
            $c = $this->request->getPost('alamat');
            $d = $this->request->getPost('TLP');
            $id= $this->request->getPost('id');
            $where = array('id_produk' => $id);
            // Set password based on level
          
    
            $isi = array(
           

                'namas' => $b,
                'harga' => $c,
                'stok' => $d,
            );
    
            // Print the data for debugging purposes
            // print_r($isi);
    
            // Perform the insert operation
         
            $model->edit('produk', $isi, $where);
            $model->logActivity($user_id, 'Updated', 'User edited produk.');
            // Redirect to the desired page
            return redirect()->to('home/produk');
        } else {
            return redirect()->to('notfound');
        }
    }
    public function tambahP()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin','petugas'];
    $user_id = session()->get('id_user');
    if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
    $user_id = session()->get('id_user');
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where=array('id_user'=>session()->get('id_user'));
    $data['user']=$model->getWhere('user', $where);
    $model->logActivity($user_id, 'View', 'User view Add product.');
        echo view('header', $data);
        echo view('menu', $data);
        echo view('tambahP');
        echo view('footer');
    } else {
        return redirect()->to('home/notfound');
    }
}
public function aksi_t_p()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin','petugas'];
    $user_id = session()->get('id_user');
    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang(); // Assuming you instantiate the model like this
       

        $b = $this->request->getPost('nama');
        $c = $this->request->getPost('alamat');
        $d = $this->request->getPost('TLP');

        // Set password based on level
      

        $isi = array(
       

            'namas' => $b,
            'harga' => $c,
            'stok' => $d,
        );

        // Print the data for debugging purposes
        // print_r($isi);

        // Perform the insert operation
     
        $model->tambah('produk', $isi);
        $model->logActivity($user_id, 'Add', 'User Add produk.');
        // Redirect to the desired page
        return redirect()->to('home/produk');
    } else {
        return redirect()->to('notfound');
    }
}
}