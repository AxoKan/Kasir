<main id="main" class="main">
  <div class="container">
    <div class="pagetitle">
      <h1></h1>
      <nav>
         <div class="row">
                <div class="col-md-12">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link" href="<?=base_url('home/order')?>"
                        ><i class="bx bx-message-alt-add"></i> Order</a>
                      
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"
                        ><i class="bx bx-history me-1"></i> HISTORY</a
                      >
                      
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="search-container">
                    
                  <label for="search">Search:</label>
                  <input type="text" id="search" placeholder="Enter keywords..."> 
                  <a class="nav-link" href="<?=base_url('home/KS')?>">
                
                </div>

              </div>
             
              <!-- Table with stripped rows -->
              <table class="table datatable" id="mitraTable">
                <thead>
                  <tr style="font-weight: bold; color: black; font-size: larger;">
                    <td align="center" scope="col">No</td>
                    <td align="center" scope="col">Tanggal Order</td>
                    <td align="center" scope="col">pelanggan</td>
                    <td align="center" scope="col">produk</td>
                    <td align="center" scope="col">Jumlah</td>
                    <td align="center" scope="col">TotalHarga</td>

                  </tr> 
                </thead>
                <tbody>
                  
                <?php
                
                  $no = 1;
                  foreach ($sa as $key)  {
                ?>
                  <tr>
                    <td align="center" scope="col"><?= $no++ ?></td>

                    <td align="center" scope="col"><?= $key->tgl ?></td>
                    <td align="center" scope="col"><?= $key->nama ?></td>
                    <td align="center" scope="col"><?= $key->namas ?></td>
                    <td align="center" scope="col"><?= $key->jumlahProduk?></td>
                    <td align="center" scope="col"><?= $key->total_harga?></td>

                    
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

    <!-- Modal -->
<div class="modal fade" id="suratModal" tabindex="-1" aria-labelledby="suratModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="suratModalLabel">Surat</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- Memo format container -->
        <div class="memo-container">
          <div class="memo-header">
              <!-- Logo -->
              <div class="app-brand demo text-center">
                     <?php if (!empty($satu->logos)): ?>
    <div class="text-center">
        <img src="<?= base_url('assets/img/custom/' . $satu->logos) ?>" alt="Login Icon"
             class="img-fluid mb-3 logo-login" style="max-width: 150px;">
    </div>
<?php endif; ?>

                     </div>
                     <!-- /Logo -->
            <hr>
          </div>

          <div class="memo-title">
            <h2 style="text-align: center;">Surat</h2>
          </div>

          <div class="memo-body">
            <p><strong>Yth :</strong> <?= $key->penerima ?></p>
            <p><strong>Dari :</strong><?= $key->real ?></p>
            <br>
            <!-- Display the memo content here -->
            <p id="modalSuratContent"></p>
          </div>

          <div class="memo-footer">
            <p><?= $key->tgl ?></p>
            <p><?= $key->real ?></p>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</main><!-- End #main -->
<style>
  /* Modal styling for the memo format */
  .memo-container {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    color: #000;
  }
  .memo-header {
    text-align: center;
    font-weight: bold;
    text-transform: uppercase;
    margin-bottom: 15px;
  }
  .memo-header p {
    margin: 0;
  }
  .memo-header .title {
    margin-top: 5px;
    font-size: 16px;
  }
  .memo-title {
    text-align: center;
    font-size: 20px;
    margin-top: 20px;
    font-weight: bold;
  }
  .memo-body {
    margin-top: 20px;
    padding-left: 10px;
  }
  .memo-body p {
    margin: 0;
  }
  .memo-footer {
    margin-top: 30px;
    text-align: right;
  }
  .memo-footer p {
    margin: 0;
  }
  /* Button styling for consistency */
  .btn-primary {
    background-color: #007bff;
    border-color: #007bff;
  }
  .btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
  }
</style>

<script>
  // Search functionality
  document.getElementById('search').addEventListener('input', function() {
    const searchValue = this.value.toLowerCase();
    const rows = document.querySelectorAll('#mitraTable tbody tr');
    rows.forEach(row => {
      const rowData = row.textContent.toLowerCase();
      row.style.display = rowData.includes(searchValue) ? '' : 'none';
    });
  });

  // Modal functionality
  document.querySelectorAll('.view-surat').forEach(button => {
    button.addEventListener('click', function() {
      const suratContent = this.getAttribute('data-surat');
      document.getElementById('modalSuratContent').textContent = suratContent;
      const modal = new bootstrap.Modal(document.getElementById('suratModal'));
      modal.show();
    });
  });
</script>

<!-- Include Bootstrap JavaScript (required for modal functionality) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
