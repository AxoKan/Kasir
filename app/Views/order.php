<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your head content here -->
</head>
<body>
    <main id="main" class="main">
        <div class="container">
            <form action="<?= base_url('home/aksi_order')?>" method="post">
                <div class="pagetitle">
                    <h1>Order</h1>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-pills flex-column flex-md-row mb-3">
                                <li class="nav-item">
                                    <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-message-alt-add"></i> ORDER</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?=base_url('home/history')?>"><i class="bx bx-spreadsheet me-1"></i>History</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <section class="section">
                        <div class="row">
                            <div class="col-lg-10">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Order</h5>

                                        <div class="mb-3 mt-3">
                                        <label for="jumlah" class="form-label">Pelanggan</label>
                                        <input type="text" class="form-control" id="username" name="nama">
                                    </div>

                                        <!-- Product Section for Makanan -->
                                        <div id="product-section-makanan">
                                            <!-- Product Forms for Makanan will be dynamically added here -->
                                        </div>
                                        <div class="row align-items-center mb-3">
                <div class="col-md-6 col-lg-6">
                    <label for="jenis1" class="form-label">Produk</label>
                    <select name="jenis1[]" class="form-control" onchange="updateTotalHarga()">
                        <option value="">Pilih</option>
                        <?php foreach($s as $key): ?>
                            <?php if($key->stok > 0): ?>
                                <option value="<?=$key->id_produk?>"><?=$key->namas ?></option>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="col-md-5 col-lg-5">
                    <label for="totalM" class="form-label">Total</label>
                    <input type="number" class="form-control total-field" name="totalM[]" style="width: 100%;" min="1" onchange="updateTotalHarga()">
                </div>
                                        <div class="mb-3 mt-3">
                                            <label for="totalHarga" class="form-label">Total Harga</label>
                                            <input type="text" class="form-control" id="totalHarga" name="totalHarga" readonly>
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
        </div>
    </main><!-- End #main -->

    <style>
    .product {
        margin-bottom: 20px; /* Adjust margin bottom as needed */
    }

    .product .form-group {
        margin-bottom: 0; /* Remove default margin */
    }

    .product .form-group:last-child {
        margin-bottom: 15px; /* Add margin to the last form group */
    }

    .product select, .product textarea, .product input {
        width: 100%; /* Make form elements full-width */
    }

    .delete-btn {
        margin-top: 35px; /* Adjust the vertical position as needed */
    }
    </style>

    <script>
    const menuPrices = {
        <?php foreach($s as $key): ?>
            '<?= $key->id_produk ?>': <?= $key->harga?>,
        <?php endforeach; ?>
    };

    function updateTotalHarga() {
    let totalHarga = 0;

    // Calculate total for all selected products
    document.querySelectorAll('select[name="jenis1[]"]').forEach((select, index) => {
        const selectedValue = select.value;
        const totalInput = document.querySelectorAll('input[name="totalM[]"]')[index];
        
        // Get price from menuPrices and parse the quantity from the total input
        const harga = menuPrices[selectedValue] || 0;
        const jumlah = parseFloat(totalInput.value) || 0;

        // Add the product of harga and jumlah to the total
        totalHarga += harga * jumlah;
    });

    // Update the total price in the Total Harga field
    document.getElementById('totalHarga').value = totalHarga.toFixed(2);
}

    </script>
</body>
</html>
