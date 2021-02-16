<?php 
// Ambil data menu dari konfigurasi
$nav_produk          = $this->konfigurasi_model->nav_produk();
$nav_produk_mobile   = $this->konfigurasi_model->nav_produk();
?>
<div class="wrap-menu-desktop" style="background-color: #222">
            <nav class="limiter-menu-desktop container">
               
               <!-- Logo desktop -->      
               <a href="<?php echo base_url() ?>" class="logo">
                  <img src="<?php echo base_url('assets/upload/image/'.$site->logo) ?>" alt="<?php echo $site->namaweb ?> | <?php echo $site->tagline ?>">
               </a>

               <!-- Menu desktop -->
               <div class="menu-desktop"> 
                  <ul class="main-menu">
                     <li class="active-menu">
                        <a href="<?php echo base_url() ?>"><font color="white">Home</a></font>
                     </li>

                     <li class="menu-large">
                        <!-- <a href="<?php echo base_url('produk') ?>">Kategori</a> -->
                        <a href="<?php echo base_url('produk') ?>" style="color: white">Kategori</a>
                         <ul class="sub-menu">
                           <?php foreach($nav_produk as $nav_produk) { ?>
                           <li><a href="<?php echo base_url('produk/kategori/'.$nav_produk->slug_kategori) ?>">
                              <?php echo $nav_produk->nama_kategori ?>
                           </a></li>
                        <?php } ?>
                        </ul>
                     </li>

                     <!-- <li class="label1" data-label1="hot">
                        <a href="shoping-cart.html">Best Seller</a>
                     </li> -->

                    <!--  <li>
                        <a href="blog.html">Blog</a>
                     </li>

                     <li>
                        <a href="about.html">About</a>
                     </li> -->

                     <!-- <li>
                        <a href="contact.html">Contact</a>
                     </li> -->
                  </ul>
               </div>   

               <!-- Icon header -->
               <div class="wrap-icon-header flex-w flex-r-m">
                  <div style="color: white" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                     <i class="zmdi zmdi-search"></i>
                  
                  </div>
                  
                  <?php
                  // Check data belanjaan ada atau tidak
                  $keranjang = $this->cart->contents();

                  ?>
                  <div style="color: white" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<?php echo count($keranjang) ?>">
                     <i class="zmdi zmdi-shopping-cart"></i>
                  </div>

                  
               </div>
            </nav>
         </div>   
      </div>

      <!-- Header Mobile -->
      <div class="wrap-header-mobile">
         <!-- Logo moblie -->    
         <div class="logo-mobile">
            <a href="<?php echo base_url() ?>"><img src="<?php echo base_url('assets/upload/image/'.$site->logo) ?>" alt="<?php echo $site->namaweb ?> | <?php echo $site->tagline ?>"></a>
         </div>

         <!-- Icon header -->
         <div class="wrap-icon-header flex-w flex-r-m m-r-15">
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
               <i class="zmdi zmdi-search"></i>
            </div>

            <?php
                  // Check data belanjaan ada atau tidak
                  $keranjang_mobile = $this->cart->contents();

                  ?>
            <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="<?php echo count($keranjang_mobile) ?>">
               <i class="zmdi zmdi-shopping-cart"></i>
            </div>

            <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
               <i class="zmdi zmdi-favorite-outline"></i>
            </a>
         </div>

         <!-- Button show menu -->
         <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
            <span class="hamburger-box">
               <span class="hamburger-inner"></span>
            </span>
         </div>
      </div>


      <!-- Menu Mobile -->
      <div class="menu-mobile">
         <ul class="topbar-mobile">
            <li>
               <div class="left-top-bar">
                  <?php echo $site->alamat ?>
               </div>
            </li>

            <li>
               <div class="right-top-bar flex-w h-full">
                  <a href="#" class="flex-c-m p-lr-10 trans-04">
                      <i class="fa fa-envelope"></i>&nbsp;
                     <?php echo $site->email ?>
                  </a>

                  <a href="#" class="flex-c-m p-lr-10 trans-04">
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
            </li>
         </ul>

         <ul class="main-menu-m">
            <li>
               <a href="<?php echo base_url() ?>">Home</a>
            </li>

             <li class="menu-large">
                        <!-- <a href="<?php echo base_url('produk') ?>">Kategori</a> -->
                        <a href="<?php echo base_url('produk') ?>">Kategori</a>
                         <ul class="sub-menu">
                           <?php foreach($nav_produk_mobile as $nav_produk_mobile) { ?>
                           <li><a href="<?php echo base_url('produk/kategori/'.$nav_produk->slug_kategori) ?>">
                              <?php echo $nav_produk_mobile->nama_kategori ?>
                           </a></li>
                        <?php } ?>
                        </ul>
                     </li>

                     <li class="label1" data-label1="hot">
                        <a href="shoping-cart.html">Best Seller</a>
                     </li>

           <!--  <li>
               <a href="blog.html">Blog</a>
            </li>

            <li>
               <a href="about.html">About</a>
            </li> -->

            <li>
               <a href="contact.html">Contact</a>
            </li>
         </ul>
      </div>

      <!-- Modal Search -->
      <!-- <?php echo form_open('home/search'); ?> -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
         <div class="container-search-header">
            <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
               <img src="<?php echo base_url() ?>assets/home/images/icons/icon-close2.png" alt="CLOSE">
            </button>
            
          <!--   method="post" action="<?php echo base_url('home/cari/') ?>"  -->
            <form class="wrap-search-header flex-w p-l-15">
               <button class="flex-c-m trans-04">
                  <i class="zmdi zmdi-search"></i>
               </button>
               <input class="plh3" type="text" name="cari" placeholder="Search...">
            </form>
<!--             <?php echo form_close(); ?> -->
         </div>
      </div>
   </header>


   <!-- Cart -->
   <div class="wrap-header-cart js-panel-cart">
      <div class="s-full js-hide-cart"></div>

      <div class="header-cart flex-col-l p-l-65 p-r-25">
         <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">
               Your Cart
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
               <i class="zmdi zmdi-close"></i>
            </div>
         </div>
         
         <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
               <?php  
               // Kalau tidak ada data belanjaan
               if(empty($keranjang)) { 
               ?>
               <li class="header-cart-item flex-w flex-t m-b-12">
                  <p class="alert alert-success">Keranjang Belanja Kosong</p>
               <?php
               // kalau ada
               }else{
               // Total belanjaan
                  $total_belanja = 'Rp. '.number_format($this->cart->total(),'0',',','.');
               // Tampilkan data belanjaan
                  foreach($keranjang as $keranjang) {
                     $id_produk  = $keranjang['id'];
                     //  Ambil data produk
                     $produknya  = $this->produk_model->detail($id_produk);
               ?>

               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="<?php echo base_url('assets/upload/image/thumbs/'.$produknya->gambar) ?>" alt="<?php echo $keranjang['name'] ?>">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="<?php echo base_url('produk/detail/'.$produknya->slug_produk) ?>" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        <?php echo $keranjang['name'] ?>
                     </a>

                     <span class="header-cart-item-info">
                        <?php echo $keranjang['qty'] ?> x Rp. <?php echo number_format($keranjang['price'],'0',',','.')?>: Rp. <?php echo number_format($keranjang['subtotal'],'0',',','.')?>
                     </span>
                  </div>
               </li>
            <?php
            } // Tutup foreach keranjang
            } // Tutup if
            ?>

            </ul>
            
            <div class="w-full">
               <div class="header-cart-total w-full p-tb-40">
                  Total: <?php if(!empty($keranjang)) { echo $total_belanja; } ?>
               </div>

               <div class="header-cart-buttons flex-w w-full">
                  <a href="<?php echo base_url('belanja') ?>" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                     View Cart
                  </a>

                  <a href="<?php echo base_url('belanja/checkout') ?>" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                     Check Out
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>