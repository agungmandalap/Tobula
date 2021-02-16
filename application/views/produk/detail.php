<br><br><br>
<!-- breadcrumb -->
<div class="container">
<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
	<a href="<?php echo base_url() ?>" class="stext-109 cl8 hov-cl1 trans-04">
		Home
		<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
	</a>

	<a href="<?php echo base_url('produk') ?>" class="stext-109 cl8 hov-cl1 trans-04">
		Produk
		<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
	</a>

	<span class="stext-109 cl4">
		<?php echo $title ?>
	</span>
</div>
</div>


<!-- Product Detail -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
<div class="container">
	<div class="row">
		<div class="col-md-6 col-lg-7 p-b-30">
			<div class="p-l-25 p-r-30 p-lr-0-lg">
				<div class="wrap-slick3 flex-sb flex-w">
					<div class="wrap-slick3-dots"></div>
					<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

					<div class="slick3 gallery-lb">
						<div class="item-slick3" data-thumb="<?php echo base_url('assets/upload/image/thumbs/'.$produk->gambar) ?>">
							<div class="wrap-pic-w pos-relative">
								<img src="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>" alt="<?php echo $produk->nama_produk ?>" width="250px" height="600px">

								<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<?php echo base_url('assets/upload/image/'.$produk->gambar) ?>">
									<i class="fa fa-expand"></i>
								</a>
							</div>
						</div>

						<?php if($gambar) {
							foreach($gambar as $gambar) { 
						?>
						<div class="item-slick3" data-thumb="<?php echo base_url('assets/upload/image/thumbs/'.$gambar->gambar) ?>">
							<div class="wrap-pic-w pos-relative">
								<img src="<?php echo base_url('assets/upload/image/'.$gambar->gambar) ?>" alt="<?php echo $gambar->judul_gambar ?>">

								<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<?php echo base_url('assets/upload/image/'.$gambar->gambar) ?>">
									<i class="fa fa-expand"></i>
								</a>
							</div>
						</div>

						<?php 
						}
						} 
						?>

					</div>
				</div>
			</div>
		</div>
			
		<div class="col-md-6 col-lg-5 p-b-30">
			<div class="p-r-50 p-t-5 p-lr-0-lg">
				<h4 class="mtext-105 cl2 js-name-detail p-b-14">
					<?php echo $title ?>
				</h4>

				<span class="mtext-106 cl2">
					Rp. <?php echo number_format($produk->harga,'0',',','.' )?>
				</span>

				
				<!--  -->
				<div class="p-t-33">
					<?php
         // form untuk memproses belanjaan
         echo form_open(base_url('belanja/add'));
         // elemen yang dibawa
         echo form_hidden('id', $produk->id_produk);
         // echo form_hidden('qty', 1);
         echo form_hidden('price', $produk->harga);
         echo form_hidden('name', $produk->nama_produk);
         // elemen redirect
         echo form_hidden('redirect_page', str_replace('index.php/','',current_url()));
         ?>

					<div class="flex-w flex-r-m p-b-10">
						<div class="size-204 flex-w flex-m respon6-next">
							<div class="wrap-num-product flex-w m-r-20 m-tb-10">
								<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
									<i class="fs-16 zmdi zmdi-minus"></i>
								</div>

								<input class="mtext-104 cl3 txt-center num-product" type="number" name="qty" value="1">

								<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
									<i class="fs-16 zmdi zmdi-plus"></i>
								</div>
							</div>

							<button type="submit" value="submit" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
								Add to cart
							</button>
						</div>
					</div>
					<?php 
               // closing form
               echo form_close();
               ?>	
				</div>

				<!--  -->
				<!-- <div class="flex-w flex-m p-l-100 p-t-40 respon7">
					<div class="flex-m bor9 p-r-10 m-r-11">
						<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
							<i class="zmdi zmdi-favorite"></i>
						</a>
					</div>

					<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
						<i class="fa fa-facebook"></i>
					</a>

					<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
						<i class="fa fa-twitter"></i>
					</a>

					<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
						<i class="fa fa-google-plus"></i>
					</a>
				</div> -->
			</div>
		</div>
	</div>

	<div class="bor10 m-t-50 p-t-43 p-b-40">
		<!-- Tab01 -->
		<div class="tab01">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item p-b-10">
					<a class="nav-link active" data-toggle="tab" href="#description" role="tab">Description</a>
				</li>

				<li class="nav-item p-b-10">
					<a class="nav-link" data-toggle="tab" href="#information" role="tab">Additional information</a>
				</li>

				<li class="nav-item p-b-10">
					<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">Reviews (1)</a>
				</li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content p-t-43">
				<!-- - -->
				<div class="tab-pane fade show active" id="description" role="tabpanel">
					<div class="how-pos2 p-lr-15-md">
						<p class="stext-102 cl6">
							Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.
						</p>
					</div>
				</div>

				<!-- - -->
				<div class="tab-pane fade" id="information" role="tabpanel">
					<div class="row">
						<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
							<ul class="p-lr-28 p-lr-15-sm">
								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Kode Buku
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->kode_produk ?>
									</span>
								</li>

								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Penulis
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->penulis ?>
									</span>
								</li>

								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Penerbit
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->penerbit ?>
									</span>
								</li>

								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Tanggal Terbit
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->tanggal_terbit ?>
									</span>
								</li>

								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Jumlah Halaman
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->jumlah_halaman ?>
									</span>
								</li>

								<li class="flex-w flex-t p-b-7">
									<span class="stext-102 cl3 size-205">
										Stock
									</span>

									<span class="stext-102 cl6 size-206">
										<?php echo $produk->stok ?>
									</span>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- - -->
				<div class="tab-pane fade" id="reviews" role="tabpanel">
					<div class="row">
						<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
							<div class="p-b-30 m-lr-15-sm">
								<!-- Review -->
								<div class="flex-w flex-t p-b-68">
									<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
										<img src="<?php echo base_url() ?>assets/home/images/avatar-01.jpg" alt="AVATAR">
									</div>

									<div class="size-207">
										<div class="flex-w flex-sb-m p-b-17">
											<span class="mtext-107 cl2 p-r-20">
												Ariana Grande
											</span>

											<span class="fs-18 cl11">
												<i class="zmdi zmdi-star"></i>
												<i class="zmdi zmdi-star"></i>
												<i class="zmdi zmdi-star"></i>
												<i class="zmdi zmdi-star"></i>
												<i class="zmdi zmdi-star-half"></i>
											</span>
										</div>

										<p class="stext-102 cl6">
											Quod autem in homine praestantissimum atque optimum est, id deseruit. Apud ceteros autem philosophos
										</p>
									</div>
								</div>
								
								<!-- Add review -->
								<form class="w-full">
									<h5 class="mtext-108 cl2 p-b-7">
										Add a review
									</h5>

									<p class="stext-102 cl6">
										Your email address will not be published. Required fields are marked *
									</p>

									<div class="flex-w flex-m p-t-50 p-b-23">
										<span class="stext-102 cl3 m-r-16">
											Your Rating
										</span>

										<span class="wrap-rating fs-18 cl11 pointer">
											<i class="item-rating pointer zmdi zmdi-star-outline"></i>
											<i class="item-rating pointer zmdi zmdi-star-outline"></i>
											<i class="item-rating pointer zmdi zmdi-star-outline"></i>
											<i class="item-rating pointer zmdi zmdi-star-outline"></i>
											<i class="item-rating pointer zmdi zmdi-star-outline"></i>
											<input class="dis-none" type="number" name="rating">
										</span>
									</div>

									<div class="row p-b-25">
										<div class="col-12 p-b-5">
											<label class="stext-102 cl3" for="review">Your review</label>
											<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
										</div>

										<div class="col-sm-6 p-b-5">
											<label class="stext-102 cl3" for="name">Name</label>
											<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
										</div>

										<div class="col-sm-6 p-b-5">
											<label class="stext-102 cl3" for="email">Email</label>
											<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
										</div>
									</div>

									<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
										Submit
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</section>


<!-- Related Products -->
<section class="sec-relate-product bg0 p-t-45 p-b-105">
<div class="container">
	<div class="p-b-45">
		<h3 class="ltext-106 cl5 txt-center">
			Related Products
		</h3>
	</div>

	<!-- Slide2 -->
	<div class="wrap-slick2">
		<div class="slick2">
			<?php foreach($produk_related as $produk_related) { ?>
			<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
				<!-- Block2 -->
				<?php
         // form untuk memproses belanjaan
         echo form_open(base_url('belanja/add'));
         // elemen yang dibawa
         echo form_hidden('id', $produk_related->id_produk);
         echo form_hidden('qty', 1);
         echo form_hidden('price', $produk_related->harga);
         echo form_hidden('name', $produk_related->nama_produk);
         // elemen redirect
         echo form_hidden('redirect_page', str_replace('index.php/','',current_url()));
         ?>
               <!-- Block2 -->
               <div class="block2">
                  <div class="block2-pic hov-img0">
                     <img src="<?php echo base_url('assets/upload/image/'.$produk_related->gambar) ?>" alt="<?php echo $produk_related->nama_produk ?>">

                     <button type="submit" value="submit" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 ">
                        Add To Cart
                     </button>
                  </div>

                  <div class="block2-txt flex-w flex-t p-t-14">
                     <div class="block2-txt-child1 flex-col-l ">
                        <a href="<?php echo base_url('produk/detail/'.$produk_related->slug_produk) ?>" class="stext-105 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                           <?php echo $produk_related->nama_produk ?>
                        </a>

                        <span class="stext-105 cl3">
                           Rp. <?php echo number_format($produk_related->harga,'0',',','.' )?>
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
	</div>
</div>
</section>
