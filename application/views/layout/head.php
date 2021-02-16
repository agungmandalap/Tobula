<?php 
// Loading Konfigurasi Website
$site   = $this->konfigurasi_model->listing();
?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title><?php echo $title ?></title>
      <!-- ICON -->
      <link rel="icon" type="image/png" href="<?php echo base_url('assets/upload/image/'.$site->icon) ?>" />
      <!-- SEO Google -->
      <meta name="keywords" content="<?php echo $site->keywords?>">
      <meta name="description" content="<?php echo $title ?>, <?php echo $site->deskripsi ?>">

      <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">   
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/slick/slick.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/css/util.css">
   <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/home/css/main.css">
<!--===============================================================================================-->

   <style type="text/css" media="screen">
      ul.pagination {
     padding: 0 10px;
     border-radius: ;
   }
   .pagination a, .pagination b {
      border: 1px solid #ddd;
      margin: 0 4px;
      padding: 10px 20px;
      text-decoration: none;
      float: left;
   }
   .pagination a {
      background-color: gray;
      color: white;
   }
   .pagination b {
      background-color: black;
      color: white;
   }
   .pagination a:hover {
      background-color: black;
   }

/*    .center {
      text-align: center;
   } */

   </style>
   </head>
   <body>