<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your head content here -->
</head>
<body>
    <main id="main" class="main">
        <div class="container">
            <form action="<?= base_url('home/aksi_editP')?>" method="post">
                <div class="pagetitle">
                    <h1></h1>
                     <div class="row">

                </div><!-- End Page Title -->

                <section class="section">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title"></h5>

                                    <!-- General Form Elements -->
                                  
                                  
                                   
                                    <div class="mb-3 mt-3">
    <label for="jumlah" class="form-label">Nama</label>
    <input type="text" class="form-control" id="username" name="nama" value="<?= isset($sa) ? $sa->namas : '' ?>">
</div>
<div class="mb-3 mt-3">
    <label for="jumlah" class="form-label">Harga</label>
    <input type="text" class="form-control" id="username" name="alamat" value="<?= isset($sa) ? $sa->harga : '' ?>">
</div>
<div class="mb-3 mt-3">
    <label for="jumlah" class="form-label">Stok</label>
    <input type="text" class="form-control" id="username" name="TLP" value="<?= isset($sa) ? $sa->stok : '' ?>">
</div>
<input type="hidden" name="id" value="<?= isset($sa) ? $sa->id_produk : '' ?>">
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
