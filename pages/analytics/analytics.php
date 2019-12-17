<!DOCTYPE html>
<html lang="en">

<head>
  <?php include '../../common/head.php'; ?>
  <?php include '../../common/filepond.php'; ?>

</head>

<body>
  <?php include '../../common/loader.php'; ?>
  <div class="page-wrapper chiller-theme toggled">
    <?php include '../../common/side-nav.php'; ?>
    <main class="page-content">
      <?php include '../../common/header.php'; ?>
      <div class="container">
        <form id="contact_and_basic_info_form" class="needs-validation" method="get" action="./contact_and_basic_info.php" autocomplete="off">
          <h3><strong>Cancer Patients </strong></h3>
          <div id="my_dataviz"></div>
          <h3><strong>Diabetes Patients</strong></h3>
          <div id="my_dataviz1"></div>
        </form>

      </div>

    </main>
  </div>
  <?php include '../../common/footer.php'; ?>
  <script src="./analytics.js"></script>
</body>

</html>