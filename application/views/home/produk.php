<!-- Product -->
   <section class="bg0 p-t-23 p-b-140">
      <div class="container">
         <div class="p-b-10">
            <h3 align="left" class="ltext-102 cl5">
               Buku Rekomendasi
            </h3>
         </div>

         <div class="flex-w flex-sb-m p-b-52">
            <div class="flex-w flex-l-m filter-tope-group m-tb-10">
             
               <?php foreach($kategori as $kategori) { ?>
               
            <?php } ?>
            </div>

            <!-- Filter -->
            <div class="dis-none panel-filter w-full p-t-10">
               <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                 
                  <div class="filter-col2 p-r-15 p-b-27">   
                  </div>  

               </div>
            </div>
         </div>
         

         <div class="row isotope-grid">
            <?php foreach($produk as $produk) { ?>
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item <?php echo $kategori->nama_kategori ?>">
         <?php
         // form untuk memproses belanjaan
         echo form_open(base_url('belanja/add'));
         // elemen yang dibawa
         echo form_hidden('id', $produk->id_produk);
         echo form_hidden('qty', 1);
         echo form_hidden('price', $produk->harga);
         echo form_hidden('name', $produk->nama_produk);
         // elemen redirect
         echo form_hidden('redirect_page', str_replace('index.php/','',current_url()));
         ?>
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="<?php echo $produk->nama_produk ?>" width="150px" height="350px">

                     <button type="submit" value="submit" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
                        Add To Cart
                     </button>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="<?php echo base_url('produk/detail/'.$produk->slug_produk) ?>" class="stext-105 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           <?php echo $produk->nama_produk ?>
                        </a>

                        <span class="stext-105 cl3">
                           Rp. <?php echo number_format($produk->harga,'0',',','.' )?>
                        </span>
                     </div>

                  </div>
               </div>
               <?php 
               // closing form
               echo form_close();
               ?>
            </div>

            <?php } ?>
           
         </div>
          <div class="flex-c-m flex-w w-full p-t-45">
            <a href="<?php echo base_url('produk/') ?>" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
               Lihat Lebih Banyak
            </a>
         </div>
      </div>
   </section>
