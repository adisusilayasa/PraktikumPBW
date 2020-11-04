<?php
session_start();
include 'koneksi.php';
// var_dump($_SESSION['user'])
$semuakategori = [];
$ambilkategori = $koneksi->query("SELECT * FROM kategori");
while ($pecahkategori = $ambilkategori->fetch_assoc()) {
    $semuakategori[] = $pecahkategori;
}
?>
<?php include 'navbar.php' ?>
<!-- ========================= SECTION  ========================= -->
<!-- judul -->
<!-- end judul -->
<div class="container mt-3">
    <div class="row">
        <!-- sidebar -->
        <div class="col-lg-3">
            <h3 class="my-4">Kategori</h3>
            <div class="list-group">
                <?php foreach ($semuakategori as $key => $tiapkategori) :
                ?>
                    <a href="kategoriproduk.php?id=<?= $tiapkategori['id_kategori'] ?>" class="list-group-item"><?= $tiapkategori['nama_kategori'] ?></a>
                <?php endforeach ?>
            </div>
        </div>
        <!-- Main content -->
        <div class="col-lg-9">
            <h3 class="my-4">Produk Terbaru</h3>
            <div class="row">
                <!-- sidebar -->

                <!-- Main content -->
                <?php
                $batas = 5;
                $halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
                $halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;

                $next = $halaman + 1;
                $previous = $halaman - 1;

                $data = mysqli_query($koneksi, "select * from produk");
                $jumlah_data = mysqli_num_rows($data);
                $total_halaman = ceil($jumlah_data / $batas);

                $data_produk = mysqli_query($koneksi, "SELECT * FROM produk ORDER BY id_produk DESC  limit $halaman_awal, $batas");
                $nomor = $halaman_awal + 1;
                while ($perproduk = mysqli_fetch_array($data_produk)) {
                ?>
                    <div class="col-lg-3 col-xs-12 col-sm-6 mb-3" style="width: 300px;">
                        <div class="card">
                            <img class="card-img-top" style="overflow: hidden ;max-height: 200px; min-height: 150px;object-fit: cover;" src="foto_produk/<?= $perproduk['foto_produk'] ?>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title" style="overflow:hidden; height: 48px;"><a href="detail.php?&id=<?= $perproduk['id_produk'] ?>"> <?= $perproduk['nama_produk']  ?></a></h5>
                                <h6 class="card-title">Rp. <?= number_format($perproduk['harga_produk']) ?></h6>
                                <?php if ($perproduk['stok_produk'] !== '0') : ?>
                                    <a href="beli.php?id=<?= $perproduk['id_produk'] ?>"><button class="btn btn-primary">Beli</button></a>
                                    <a href="detail.php?&id=<?= $perproduk['id_produk'] ?>" class="btn btn-secondary">Detail</a>
                                <?php else : ?>
                                    <p class="text-danger">Stok Produk Kosong</p>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
                </tbody>
                </table>

            </div>
        </div>
    </div>
    <div class="container">
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" <?php if ($halaman > 1) {
                                            echo "href='?halaman=$previous'";
                                        } ?>>Previous</a>
            </li>
            <?php
            for ($x = 1; $x <= $total_halaman; $x++) {
            ?>
                <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
            <?php
            }
            ?>
            <li class="page-item">
                <a class="page-link" <?php if ($halaman < $total_halaman) {
                                            echo "href='?halaman=$next'";
                                        } ?>>Next</a>
            </li>
        </ul>
    </div>
</div>
<!-- ========================= SECTION  END// ========================= -->
<!-- footer -->
<?php include 'footer.php'; ?>
<!-- end footer -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script src="assets/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        // executes when HTML-Document is loaded and DOM is ready
        console.log("document is ready");


        $(".card").hover(
            function() {
                $(this).addClass('shadow-lg').css('cursor', 'pointer');
            },
            function() {
                $(this).removeClass('shadow-lg');
            }
        );

        // document ready  
    });
</script>
</body>

</html>