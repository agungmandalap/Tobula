<?php
// Error Upload
if(isset($error)) {
  echo '<p class="alert alert-warning">';
  echo $error;
  echo '</p>';
}

//Notifikasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

//Form open
echo form_open_multipart(base_url('admin/produk/tambah'), 'class="form-horizontal"');
?>

<div class="form-group form-group-lg">
  <label class="col-md-2 control-label">Nama Buku</label>
<div class="col-md-5">
    <input type="text" name="nama_produk" class="form-control" placeholder="Nama Buku" value="<?php echo set_value('nama_produk') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Kode Buku</label>
<div class="col-md-5">
    <input type="text" name="kode_produk" class="form-control" placeholder="Kode Buku" value="<?php echo set_value('kode_produk') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Kategori Buku</label>
<div class="col-md-5">
    <select name="id_kategori" class="form-control">
      <?php foreach($kategori as $kategori) { ?>
      <option value="<?php echo $kategori->id_kategori ?>">
        <?php echo $kategori->nama_kategori ?>
      </option>
    <?php } ?>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Penulis</label>
<div class="col-md-5">
    <input type="text" name="penulis" class="form-control" placeholder="Penulis" value="<?php echo set_value('penulis') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Penerbit</label>
<div class="col-md-5">
    <input type="text" name="penerbit" class="form-control" placeholder="Penerbit" value="<?php echo set_value('penerbit') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Tanggal Terbit</label>
<div class="col-md-5">
    <input type="text" name="tanggal_terbit" class="form-control" placeholder="Tanggal Terbit" value="<?php echo set_value('tanggal_terbit') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Jumlah Halaman</label>
<div class="col-md-5">
    <input type="number" name="jumlah_halaman" class="form-control" placeholder="Jumlah Halaman" value="<?php echo set_value('jumlah_halaman') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Harga Produk</label>
<div class="col-md-5">
    <input type="number" name="harga" class="form-control" placeholder="Harga Produk" value="<?php echo set_value('harga') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Stok Produk</label>
<div class="col-md-5">
    <input type="number" name="stok" class="form-control" placeholder="Stok Produk" value="<?php echo set_value('stok') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Keterangan Produk</label>
<div class="col-md-8">
    <textarea name="keterangan" class="form-control" placeholder="Keterangan" id="editor"><?php echo set_value('keterangan') ?></textarea>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Keywords (untuk SEO Google)</label>
<div class="col-md-8">
    <textarea name="keywords" class="form-control" placeholder="Keywords (untuk SEO Google)"><?php echo set_value('keywords') ?></textarea>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Upload Gambar Produk</label>
<div class="col-md-8">
    <input type="file" name="gambar" class="form-control" required="required">
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Status Produk</label>
<div class="col-md-8">
    <select name="status_produk" class="form-control">
      <option value="Publish">Publikasikan</option>
      <option value="Draft">Simpan Sebagai Draft</option>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label"></label>
<div class="col-md-5">
  <button class="btn btn-success btn-lg" name="submit" type="submit">
    <i class="fa fa-save"></i> Simpan
  </button>
    <button class="btn btn-info btn-lg" name="reset" type="reset">
    <i class="fa fa-times"></i> Reset
  </button>
  </div>
</div>

<?php echo form_close();