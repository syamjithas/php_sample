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
                                                <label for="staticEmail" class="col-sm-2 col-form-label">Age</label>
                                                <div class="col-sm-4">
                                                        <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                                                </div>
                                                <label for="staticEmail" class="col-sm-2 col-form-label">Height</label>
                                                <div class="col-sm-4">
                                                        <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                                                </div>
                                        </div>
                                        <div class="form-group row">
                                                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                                                <div class="col-sm-4">
                                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                                </div>
                                                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                                                <div class="col-sm-4">
                                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                                </div>
                                        </div>
                                        <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                                        </div>
                                </form>

                        </div>

                </main>
        </div>
        <?php include '../../common/footer.php'; ?>
</body>

</html>