<!-- Header -->
   <header>
      <!-- Header desktop -->
      <div class="container-menu-desktop">
         <!-- Topbar -->
         <div class="top-bar">
            <div class="content-topbar flex-sb-m h-full container">
               <div class="left-top-bar">
                  <?php echo $site->alamat ?>
               </div>

               <div class="right-top-bar flex-w h-full">
                  <a href="<?php echo base_url() ?>" class="flex-c-m trans-04 p-lr-25">
                     <i class="fa fa-envelope"></i>&nbsp;
                     <?php echo $site->email ?>
                  </a>

                  <a href="#" class="flex-c-m trans-04 p-lr-25">
                     <i class="fa fa-phone"></i>&nbsp;
                     <?php echo $site->telepon ?>
                  </a>
                  <a href="<?php echo $site->facebook ?>" class="flex-c-m p-lr-10 trans-04">
                     <i class="fa fa-facebook"></i>
                  </a>

                  <a href="<?php echo $site->instagram ?>" class="flex-c-m p-lr-10 trans-04">
                     <i class="fa fa-instagram"></i>
                  </a>

            </div>
         </div>
