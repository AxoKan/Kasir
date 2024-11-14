<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Boxes</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .image-box {
            border: 1px solid #ddd;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }
        .image-box img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
        .data-count {
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>


<div class="container mt-5">
 
    <div class="row">
        <div class="col-md-6">

        <div class="image-box">
    <img src="<?= base_url('assets/img/custom/Screenshot 2024-11-13 101636.png') ?>" alt="Image 1">
    <p>Total penjualan: <?= $pejualan ?></p>
</div>
</div>
<div class="col-md-6">
<div class="image-box">
    <img src="<?= base_url('assets/img/custom/black-box-310220_1280.png') ?>" alt="Image 1">
    <p>Total Product: <?= $produk ?></p>
    </div>
        </div>
    </div>
</div>
       




<!-- Include Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
