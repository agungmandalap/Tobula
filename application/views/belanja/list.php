<!-- Cart -->
<section class="cart bgwhite p-t-70 p-b-100">
<div class="container">
	<!-- Cart item -->
	<br><br>		
	<h1><?php echo $title ?></h1><hr>
	<div class="clearfix"></div>
	<br><br>

	<?php if($this->session->flashdata('sukses')) {
		echo '<div class="alert alert-warning">';
		echo $this->session->flashdata('sukses');
		echo '</div>';
	} ?>
	
		<div class="wrap-table-shopping-cart">
			<table class="table-shopping-cart">
				<tr class="table_head">
					<th class="column-1">GAMBAR</th>
					<th class="column-2">PRODUK</th>
					<th class="column-3">HARGA</th>
					<th class="column-4">JUMLAH</th>
					<th class="column-5" width="15%">SUBTOTAL</th>
					<th class="column-6" width="20%">ACTION</th>

			</tr>
		<?php
		// Looping data keranjang belanja
		foreach($keranjang as $keranjang) { 
			// Ambil data produk
			$id_produk	= $keranjang['id'];
			$produk 	= $this->produk_model->detail($id_produk);
			// Form Update keranjang
			echo form_open(base_url('belanja/update_cart/'.$keranjang['rowid']));
		?>
				<tr class="table_row">
							<td class="column-1">
								<div class="how-itemcart1">
							<img src="<?php echo base_url('assets/upload/image/thumbs/'.$produk->gambar) ?>" alt="<?php echo $keranjang['name'] ?>">
						</div>
					</td>
					<td class="column-2"><?php echo $keranjang['name'] ?></td>
					<td class="column-3">Rp. <?php echo number_format($keranjang['price'],'0',',','.')?></td>
					<td class="column-4">
								<div class="wrap-num-product flex-w m-l-auto m-r-0">
									<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-minus"></i>
									</div>

									<input class="mtext-104 cl3 txt-center num-product" type="number" name="qty" value="<?php echo $keranjang['qty'] ?>">

									<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-plus"></i>
									</div>
								</div>
							</td>

					<td class="column-5">Rp.
						<?php 
						$sub_total	= $keranjang['price'] * $keranjang['qty'];
						echo number_format($sub_total,'0',',','.');
						?>
					</td>
					<td>
						<button type="submit" name="update" class="btn btn-success btn-sm">
							<i class="fa fa-edit"></i> Update
						</button>
						<a href="<?php echo base_url('belanja/hapus/'.$keranjang['rowid']) ?>" class="btn btn-warning btn-sm">
							<i class="fa fa-trash-o"></i> Hapus
						</button>
					</td>
				</tr>
		<?php 
		// Echo Form Close
		echo form_close();
		// End looping keranjang belanja
		}
		?>
		<tr class="table_row bg-info text-strong" style="font-weight: bold; color: white !important; ">
			<td colspan="4" class="column-1">Total Belanja</td>
			<td colspan="2" class="column-5">Rp. <?php echo number_format($this->cart->total(),'0',',','.') ?></td>
		</tr>
	</table>

	<br>
	<p class="pull-right">
		<a href="<?php echo base_url('belanja/hapus') ?>" class="btn btn-danger btn-lg">
			<i class="fa fa-trash-o"></i> Bersihkan Keranjang Belanja
		</a>
		<a href="<?php echo base_url('belanja/checkout') ?>" class="btn btn-success btn-lg">
			<i class="fa fa-shopping-cart"></i> Checkout
		</a>
	</p>
</div>

<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
		<div class="flex-w flex-m m-r-20 m-tb-5">
		</div>

		
	</div>
</div>
</div>

</div>
</section>