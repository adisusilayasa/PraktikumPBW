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
    <div class="container">
        <div class="card mx-auto d-block" style="width: 520px; height: 350px;">
            <div class="card mx-auto d-block border-0" style="width: 500px; height: 330px;">
                <br>
                <h3 class="text-center ">Login</h3>
                <br>
                <form name="login" action="" method="POST">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input class="form-control" type="text" name="username" id="username" placeholder="Username atau email" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input class="form-control" type="password" name="password" id="password" placeholder="Password" />
                    </div>
                    <input type="submit" class="btn btn-success btn-block" onclick="validasi()" name="login" value="Masuk" />

                </form>
            </div>
        </div>
    </div>

    <script>
        function validasi() {
            if (document.forms["login"]["username"].value != "") {
                if (document.forms["login"]["password"].value != "") {
                    alert("Semua data terisi dengan benar");
                    document.getElementById("login").submit();
                    return true;

                } else {
                    alert("Password tidak boleh kosong");
                    return false;
                }
            } else {
                alert("Username masih kosong");
                return false;
            }
        }
    </script>
</body>

</html>