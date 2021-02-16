<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Belanja extends CI_Controller {

	// Load Model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->model('kategori_model');
		$this->load->model('konfigurasi_model');
	}

	// Halaman belanja
	public function index()
	{
		$keranjang = $this->cart->contents();

		$data = array(	'title'		=> 'Keranjang Belanja',
						'keranjang'	=> $keranjang,
						'isi'		=> 'belanja/list'
					);
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Tambahkan ke kerenjang belanja
	public function add()
	{
		// Ambil data dari form
		$id 			= $this->input->post('id');
		$qty 			= $this->input->post('qty');
		$price 			= $this->input->post('price');
		$name 			= $this->input->post('name');
		$redirect_page 	= $this->input->post('redirect_page');
		// Proses memasukan ke keranjang belanja
		$data = array(	'id'	=> $id,
						'qty'	=> $qty,
						'price'	=> $price,
						'name'	=> $name
						);
		$this->cart->insert($data);
		// Redirect page
		redirect($redirect_page,'refresh');
	}

	// Update Cart
	public function update_cart($rowid)
	{
		// Jika ada data rowid
		if($rowid) {
			$data = array(	'rowid'		=> $rowid,
							'qty'		=> $this->input->post('qty')
						);
			$this->cart->update($data);
			$this->session->set_flashdata('sukses', 'Data belanja telah diupdate');
			redirect(base_url('belanja'),'refresh');
		}else{
			// jika ga ada rowid
			redirect(base_url('belanja'),'refresh');
		}
	}

	// Hapus semua isi keranjang belanja
	public function hapus($rowid='')
	{
		if($rowid) {
			// Hapus per item keranjang
		$this->cart->remove($rowid);
		$this->session->set_flashdata('sukses', 'Data Keranjang belanja telah dihapus');
		redirect(base_url('belanja'),'refresh');
		}else{
			// Hapus all
		$this->cart->destroy();
		$this->session->set_flashdata('sukses', 'Data Keranjang belanja telah dihapus');
		redirect(base_url('belanja'),'refresh');

		}
	}
}

/* End of file Belanja.php */
/* Location: ./application/controllers/Belanja.php */