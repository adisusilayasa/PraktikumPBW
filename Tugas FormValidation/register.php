<!DOCTYPE html>
<html lang="en">

<head>
    <title>Belajar Form Validation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <div class="navbar-wrapper">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a href="#" class="navbar-brand">
                    <h4>Home</h4>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ml-auto px-2">
                        <form class="form-inline" action="#" method="get">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search..." name="keyword">
                            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
                        </form>
                        <a href="register.php" class="nav-item nav-link px-2">Sign up</a>
                        <li class="nav-item pl-2 mb-2 mb-md-0">
                            <a href="login.php" type="button" class="btn btn-outline-info btn-md btn-rounded  waves-effect px-2">Login</a>
                        </li>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</head>

<body>
    <br>
    <div class="card mx-auto d-block" style="width: 520px; height: 480px;">
        <div class="card mx-auto d-block border-0 create-post-wrapper" style="width: 500px; height: 460px;">
            <br>
            <h3 class="text-center ">Register</h3>
            <form action="" name="register" method="POST">

                <div class="form-group">
                    <label for="name">Nama Lengkap</label>
                    <input class="form-control post-input" type="text" name="name" placeholder="Nama kamu" />
                </div>

                <div class="form-group">
                    <label for="username">Username</label>
                    <input class="form-control post-input" type="text" name="username" placeholder="Username" />
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input class="form-control post-input" type="email" name="email" placeholder="Alamat Email" />
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input class="form-control post-input" type="password" name="password" placeholder="Password" />
                </div>

                <input type="button" class="btn post-btn btn-success btn-block" onclick="validasi()" name="register" value="Daftar" />

            </form>
        </div>
    </div>
    <script>
        /*
		let postBtn = document.querySelector('.post-btn'); //untuk input btn
		let wrapper = document.querySelector('.create-post-wrapper'); //untuk wrap div
		let inputs = [...wrapper.querySelectorAll('.post-input')]; //untuk semua input field

		function validate() {
			let isIncomplete = inputs.some(input => !input.value);
			postBtn.disabled = isIncomplete;
			postBtn.style.cursor = isIncomplete ? 'not-allowed' : 'pointer';
		}

		wrapper.addEventListener('input', validate);
		validate();
		*/

        function validasi() {
            if (document.forms["register"]["name"].value != "") {
                if (document.forms["register"]["username"].value != "") {
                    if (document.forms["register"]["password"].value != "") {
                        alert("Semua data terisi dengan benar");
                        document.getElementById("register").submit();
                        return true;

                    } else {
                        alert("Password tidak boleh kosong");
                        return false;
                    }
                } else {
                    alert("Username masih kosong");
                    return false;
                }

            } else {
                alert("Nama masih kosong");
                return false;
            }
        }
    </script>
</body>

</html>