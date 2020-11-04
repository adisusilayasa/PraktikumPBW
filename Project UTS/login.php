<?php
session_start();
include 'koneksi.php';
?>
    <?php include 'navbar.php'?>
        <!-- ========================= SECTION  ========================= -->
        <!-- judul -->
        <div class="jumbotron color-grey-light mt-70">
		      <div class="d-flex align-items-center h-100">
		        <div class="container text-center py-5">
		          <h3 class="mb-0">Login</h3>
		        </div>
		      </div>
		    </div>
        <!-- end judul -->

        <div class="container">

	      <!--Grid row-->
	      <div class="row d-flex justify-content-center">

	        <!--Grid column-->
	        <div class="col-md-6">

	          <!--Section: Content-->
	          

	            <form action="" method="post">

	              <div class="md-form md-outline">
                      <label  for="username_user">Username</label>
	                <input type="text" name="username" class="form-control">
	              </div>
	              <div class="md-form md-outline">
                      <label data-error="wrong" data-success="right" for="defaultForm-pass1">Password</label>
	                <input type="password" name="password" class="form-control">
                  </div>
                  <div class="d-flex justify-content-between align-items-center mb-2 mt-1">

                    <div class="form-check pl-4 mb-3">
                    <input type="checkbox" class="form-check-input filled-in">
                    <label class="form-check-label small text-uppercase card-link-secondary" for="new">Remember me</label>
                    </div>

                    <p><a href="">Forgot password?</a></p>

                    </div>
                  <div class="text-center pb-2 mt-3">
                    <button type="submit" class="btn btn-primary mb-4 waves-effect waves-light" name="login">Login</button>
                    <p>Not a member? <a href="register.php">Register</a></p>
                  </div>
	            </form>
	          
	          <!--Section: Content-->

	        </div>
	        <!--Grid column-->

	      </div>
	      <!--Grid row-->


	    </div>

        <!-- ========================= SECTION  END// ========================= -->
        <!-- footer -->
        <?php include 'footer.php'; ?>
        <!-- end footer -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <?php
    //jika ada tombol simpan(tombol simpan ditekan)
    if(isset($_POST['login'])){
        //lakukan query ngecek akun di tabel user di db
        $ambil = $koneksi->query("SELECT * FROM user WHERE username_user='$_POST[username]' AND password_user='$_POST[password]'");
        //ngitung akun yg terambil
        $akunyangcocok = $ambil->num_rows;
        //jika satu akun yang cocok maka boleh login
        if($akunyangcocok==1){
            //anda sudah login
            $akun= $ambil->fetch_assoc();
            //simpan di session user
            $_SESSION['user'] = $akun;
            echo "<script>alert('Login Berhasil');</script>";
            if(isset($_SESSION['keranjang']) OR !empty($_SESSION['keranjang'])){
            echo "<script>location='checkout.php'</script>";
          }
          else{
            echo "<script>location='index.php'</script>";
          }
        }
        else{
            //anda gagal login
            echo "<script>alert('Anda Gagal Login');</script>";
            echo "<script>location='login.php'</script>";
        }
    }
    ?>
        </body>

</html>
