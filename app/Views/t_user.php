<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your head content here -->
</head>
<body>
    <main id="main" class="main">
        <div class="container">
            <form action="<?= base_url('home/aksi_t_user')?>" method="post">
                <div class="pagetitle">
                    <h1></h1>
                     <div class="row">
                     <nav>
                     <div class="row">
                <div class="col-md-12">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                  <li class="nav-item">
                      <a class="nav-link" href="<?=base_url('home/admin')?>"
                        ><i class="bx bx-user"></i>admin</a
                      >
                    </li> 
                    <li class="nav-item">
                      <a class="nav-link" href="<?=base_url('home/petugas')?>"
                        ><i class="bx bx-user"></i>petugas</a
                      >

                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"
                        ><i class="bx bx-user"></i>tambah</a
                      >
      </nav>
                </div><!-- End Page Title -->

                <section class="section">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"></h5>

                                    <!-- General Form Elements -->
                                  
                                  
                                   
                                    <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">nama</label>
                                        <input type="text" class="form-control" id="username" name="nama">
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">username</label>
                                        <input type="text" class="form-control" id="username" name="username">
                                    </div>
                                    
                                    <div class="mb-3 mt-3">
                                        <label for="status" class="form-label">Jabatan</label>
                                        <select class="form-select" id="level" name="level1" required>
                                            <option value="">Pilih</option>
                                         
                                            <option value="petugas">petugas</option>
                                            <option value="admin">admin</option>
                                        </select>
                                    </div>
                                    <div class="row mb-3">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </form>
        </div>
    </main>
</body>
</html>
