<br><br><br><br>
<section class="bg0 p-t-23 p-b-140">
      <div class="container">
         <div class="p-b-10">
            <h3 align="left" class="ltext-102 cl5">
               <?php echo $site->namaweb ?> | <?php echo $site->tagline ?>
            </h3>
         </div>
<!-- Product -->
<div class="bg0 m-t-23 p-b-140">
<div class="container">
	<div class="flex-w flex-sb-m p-b-52">
		<div class="flex-w flex-l-m filter-tope-group m-tb-10">
			<a href="<?php echo base_url('produk') ?>" class="stext-106 cl6 hov5 bor3 trans-04 m-r-32 m-tb-5">
			Semua Buku
			</a>
			<?php foreach ($listing_kategori as $listing_kategori) { ?>
			<a href="<?php echo base_url('produk/kategori/'.$listing_kategori->slug_kategori) ?>" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5">
				<?php echo $listing_kategori->nama_kategori ?>
			</a>
		<?php } ?>

		</div>

		<div class="flex-w flex-c-m m-tb-10">
			<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
				<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
				<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
				 Filter
			</div>

			<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
				<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
				<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
				Search
			</div>
		</div>
		
		<!-- Search product -->
		<div class="dis-none panel-search w-full p-t-10 p-b-15">
			<div>
				<form class="bor8 dis-flex p-l-15" method="GET" action="<?php echo base_url('produk/search');?>" class="mtext-107 cl2 size-114 plh2 p-r-15"> 
						<button class="flex-c-m trans-04">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
					</button>
				<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
			</form>
			</div>	
		</div>

		<!-- Filter -->
		<div class="dis-none panel-filter w-full p-t-10">
			<div class="wrap-filter flex-w w-full p-lr-40 p-t-27 p-lr-15-sm">
				<div class="filter-col1 p-r-15 p-b-27">
					<div class="mtext-102 cl2 p-b-15">
						Sort By
					</div>

					<ul>
						<li class="p-b-6">
							<a id="filter-newness" href="<?php echo base_url('produk/newest');?>" class="filter-link stext-106 trans-04">
								Newness
							</a>
						</li>

						<li class="p-b-6">
							<a id="filter-low" href="<?php echo base_url('produk/lowest');?>" class="filter-link stext-106 trans-04">
								Price: Low to High
							</a>
						</li>

						<li class="p-b-6">
							<a href="<?php echo base_url('produk/highest');?>" id="filter-high" class="filter-link stext-106 trans-04">
								Price: High to Low
							</a>
						</li>
					</ul>
				</div>

				<div class="filter-col2 p-r-15 p-b-27">
					<ul>
						<li class="p-b-6">
							<a href="<?php echo base_url('produk');?>" class="filter-link stext-106 trans-04 filter-link-active">
								All
							</a>
						</li>

						<li class="p-b-6">
							<a href="<?php echo base_url('produk/harga100000');?>" class="filter-link stext-106 trans-04">
								Rp0 - Rp.100.000
							</a>
						</li>

						<li class="p-b-6">
							<a href="<?php echo base_url('produk/harga250000');?>" class="filter-link stext-106 trans-04">
								Rp100.000 - Rp.250.000
							</a>
						</li>

						<li class="p-b-6">
							<a href="<?php echo base_url('produk/harga500000');?>" class="filter-link stext-106 trans-04">
								Rp250.000 - Rp.500.000
							</a>
						</li>

						<li class="p-b-6">
							<a href="<?php echo base_url('produk/harga1000000');?>" class="filter-link stext-106 trans-04">
								Rp500.000+
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="row isotope-grid">
		<?php foreach($produk as $produk) { ?>
		<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
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
					<img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="<?php echo $produk->nama_produk ?>" width="150px" height="400px">

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

	<!-- Pagination -->
		<div class="pagination flex-m flex-w p-t-26">
			<?php echo $pagin; ?>
		</div>

</div>
</div>
</div>
</section>