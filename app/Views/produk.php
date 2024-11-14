<main id="main" class="main">
  <div class="container">
    <div class="pagetitle">
      <h1></h1>
     
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row justify-content-center">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">

              <div class="d-flex justify-content-between align-items-center mb-3">

                <!-- Add a search input on the right side -->
                <div class="search-container">
                  <label for="search">Search:</label>
                  <input type="text" id="search" placeholder="Enter keywords...">
                  <a class="nav-link" href="<?=base_url('home/tambahP')?>">
                  <button class="btn btn-success">Tambah+</button></a>
                </div>
              </div>
             
              <!-- Table with stripped rows -->
              <table class="table datatable" id="mitraTable">
                <thead>
                <tr style="font-weight: bold; color: black; font-size: larger;">
    <td align="center" scope="col">No</td>
    <td align="center" scope="col">Nama</td>
    <td align="center" scope="col">Harga</td>
    <td align="center" scope="col">stok</td>
    <td align="center" scope="col">aksi</td>

 
    </tr> 
                </thead>
                <tbody>
                <?php
$no = 1;
foreach ($s as $key) {
   
?>
    <tr>
          <td align="center" scope="col"><?= $no++ ?></td>
        <td align="center" scope="col"><?= $key->namas?></td>
        <td align="center" scope="col"><?= $key->harga?></td>
        <td align="center" scope="col"><?= $key->stok?></td>
        <td align="center">

                        <h6>
                            <a href="<?= base_url('home/EditP/'.$key->id_produk)?>">
                                <i class="btn btn-warning">Edit</i>
                            </a>
            </td>

      </tr>
<?php
    }

?>
                </tbody>
              </table>
               </div>
          </div>

        </div>
      </div>
    </section>

  </div>
</main><!-- End #main -->

<script>
  // Add JavaScript for search functionality
  document.getElementById('search').addEventListener('input', function() {
    const searchValue = this.value.toLowerCase();
    const rows = document.querySelectorAll('#mitraTable tbody tr');

    rows.forEach(row => {
      const rowData = row.textContent.toLowerCase();
      row.style.display = rowData.includes(searchValue) ? '' : 'none';
    });
  });
</script>
