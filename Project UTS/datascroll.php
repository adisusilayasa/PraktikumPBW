<?php
if (isset($_POST['getData'])) {
    include 'koneksi.php';

    $start = $conn->real_escape_string($_POST['start']);
    $limit = $conn->real_escape_string($_POST['limit']);
    $sql = $conn->query("SELECT id_kategori, id_produk, nama_produk,harga_produk,foto_produk, $start, $limit");
    if ($sql->num_rows > 0) {
        $response = "";
        while ($data = $sql->fetch_array()) {
            $response .= ""
            <div class="col-lg-9">
            <h3 class="my-4">Produk Terbaru</h3>
            <div class="row">
                <?php $ambilproduk = $koneksi->query("SELECT * FROM produk ORDER BY id_produk DESC ");
                while ($perproduk = $ambilproduk->fetch_assoc()) {
                ?>
                    <div class="col-lg-3 col-xs-12 col-sm-6 mb-3">
                        <div class="card">
                            <img class="card-img-top" src="foto_produk/<?= $perproduk['foto_produk'] ?>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><a href="detail.php?&id=<?= $perproduk['id_produk'] ?>"><?= $perproduk['nama_produk'] ?></a></h5>
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
                <?php } ?>
            </div>
        </div>
        "";
        }
    } else {
        exit('reachedMax');
    }
}
?>