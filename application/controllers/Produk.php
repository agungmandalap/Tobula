<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
		$this->load->model('kategori_model');
		$this->load->model('konfigurasi_model');
	}

	// Listing data produk
	public function index()
	{
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/index/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 4;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->produk($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function newest()
	{
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/newest/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->newest($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function lowest()
	{
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/lowest/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/lowest';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->lowest($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function highest()
	{
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/highest/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/highest';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->highest($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function harga100000()
	{	
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/harga100000/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/harga100000';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->harga100000($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function harga250000()
	{	
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/harga250000/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/harga250000';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->harga250000($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function harga500000()
	{	
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/harga500000/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/harga500000';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->harga500000($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function harga1000000()
	{	
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/harga1000000/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 8;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/harga1000000';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->harga1000000($config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	public function search()
	{
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_produk();
		 $search = $_GET["search-product"];
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/search?search-product='.$search.'';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 100;
		 $config['uri_segment'] 		= 3;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/';
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(4)) ? ($this->uri->segment(4)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->search($search, $config['per_page'],$page);
		// Paginaasi End

		$data 	= array(	'title'				=> 'Produk '.$site->namaweb,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Listing data kategori produk
	public function kategori($slug_kategori)
	{
		// kategori detail
		$kategori 			= $this->kategori_model->read($slug_kategori);
		$id_kategori		= $kategori->id_kategori;
		// Data Global
		$site 				= $this->konfigurasi_model->listing();
		$listing_kategori	= $this->produk_model->listing_kategori();
		// Ambil data total
		 $total				= $this->produk_model->total_kategori($id_kategori);
		// Paginasi start
		 $this->load->library('pagination');
		
		 $config['base_url'] 			= base_url().'produk/kategori/'.$slug_kategori.'/index/';
		 $config['total_rows'] 			= $total->total;
		 $config['use_page_numbers']	= TRUE;
		 $config['per_page'] 			= 4;
		 $config['uri_segment'] 		= 5;
		 $config['num_links'] 			= 5;
		 $config['full_tag_open'] 		= '<ul class="pagination">';
		 $config['full_tag_close'] 		= '</ul>';
		 $config['first_link']	 		= 'First';
		 $config['first_tag_open'] 		= '<li>';
		 $config['first_tag_close'] 	= '</li>';
		 $config['last_link']	 		= 'Last';
		 $config['last_tag_open'] 		= '<li class="disabled"><li class="active"><a href="#">';
		 $config['last_tag_close'] 		= '<span class="sr-only"></a></li></li>';
		 $config['next_link'] 			= '&gt;';
		 $config['next_tag_open'] 		= '<div>';
		 $config['next_tag_close'] 		= '</div>';
		 $config['prev_link'] 			= '&lt;';
		 $config['prev_tag_open'] 		= '<div>';
		 $config['prev_tag_close'] 		= '</div>';
		 $config['cur_tag_open'] 		= '<b>';
		 $config['cur_tag_close'] 		= '</b>';
		 $config['first_url']			= base_url().'/produk/kategori/'.$slug_kategori;
		
		 $this->pagination->initialize($config);
		// Ambil data produk
		 $page 		= ($this->uri->segment(5)) ? ($this->uri->segment(5)-1) * $config['per_page']:0;
		 $produk 	= $this->produk_model->kategori($id_kategori, $config['per_page'], $page);
		// Paginaasi End

		$data 	= array(	'title'				=> $kategori->nama_kategori,
							'site'				=> $site,
							'listing_kategori'	=> $listing_kategori,
							'produk'			=> $produk,
							'pagin'				=> $this->pagination->create_links(),
							'isi'				=> 'produk/list'
						);
 
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Detail Produk
	public function detail($slug_produk)
	{
		$site 			= $this->konfigurasi_model->listing();
		$produk 		= $this->produk_model->read($slug_produk);
		$id_produk		= $produk->id_produk;
		$gambar			= $this->produk_model->gambar($id_produk);
		$produk_related	= $this->produk_model->home();

		$data 	= array(	'title'				=> $produk->nama_produk,
							'site'				=> $site,
							'produk'			=> $produk,
							'produk_related'	=> $produk_related,
							'gambar'			=> $gambar,
							'isi'				=> 'produk/detail'
						);

		$this->load->view('layout/wrapper', $data, FALSE);
	}
}


/* End of file Produk.php */
/* Location: ./application/controllers/Produk.php */