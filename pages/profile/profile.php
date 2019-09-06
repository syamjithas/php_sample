<!DOCTYPE html>
<html lang="en">

<head>
        <?php include '../../common/head.php'; ?>
</head>

<body>
        <div class="page-wrapper chiller-theme toggled">
                <?php include '../../common/side-nav.php'; ?>
                <main class="page-content">
                        <?php include '../../common/header.php'; ?>
                        <div class="container">
                        <form>
                                <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                                        <div class="col-sm-10">
                                                <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                                        </div>
                                </div>
                                <div class="form-group row">
                                        <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                                        <div class="col-sm-10">
                                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                        </div>
                                </div>
                        </form>
                        </div>
                        
                </main>
        </div>
        <?php include '../../common/footer.php'; ?>
</body>

</html>