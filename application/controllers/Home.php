<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	// Load Model
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->database(); // load database
		$this->load->library('table');
		$this->load->library('pagination');
		$this->load->helper('url');
		$this->load->model('produk_model');
		$this->load->model('kategori_model');
		$this->load->model('konfigurasi_model');
	}

	// Halaman Utama Website - Homepage
	public function index()
	{
		$site 		= $this->konfigurasi_model->listing();
		$kategori 	= $this->konfigurasi_model->nav_produk();
		$produk 	= $this->produk_model->home();

		$data 		= array( 'title'		=> $site->namaweb. ' | '.$site->tagline,
							 'keywords'		=> $site->keywords,
							 'deskripsi'	=> $site->deskripsi,
							 'site'			=> $site,
							 'kategori'		=> $kategori,
							 'produk'		=> $produk,
							 'isi'			=> 'home/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// public function cari()
	// {
	// 	$site 		= $this->konfigurasi_model->listing();
	// 	$kategori 	= $this->konfigurasi_model->nav_produk();
	// 	$cari 		= $this->input->post('cari'); // input username
	// 	$produk 	= $this->produk_model->home($cari);

	// 	$data 		= array( 'title'		=> $site->namaweb. ' | '.$site->tagline,
	// 						 'keywords'		=> $site->keywords,
	// 						 'deskripsi'	=> $site->deskripsi,
	// 						 'site'			=> $site,
	// 						 'kategori'		=> $kategori,
	// 						 'produk'		=> $produk,
	// 						 'isi'			=> 'home/list');
	// 	$this->load->view('search', $data);

	// }
}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */