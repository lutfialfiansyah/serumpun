<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Observasi_tenaga_ahli extends MX_Controller {
	
	var $gallerypath;
	var $gallery_path_url;
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory(); 
		$this->load->model('model_observasi_tenaga_ahli');
		$this->load->model('master/model_sdm');
		
 		 $this->gallerypath = realpath(APPPATH . '../document/observasi_tenaga_ahli');
 		 $this->gallery_path_url = base_url().'document/observasi_tenaga_ahli/';	
	}

	
	public function index() {		
		$this->page->view('observasi_tenaga_ahli_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_observasi_tenaga_ahli->get_observasi_tenaga_ahli(),
		));
	}

	public function observasi(){
		$id_pengguna = $this->session->userdata('pengguna')->id;

		$this->page->view('observasi_tenaga_ahli_index', array(
			'add'			=> $this->page->base_url('/edit'),
			'grid'			=> $this->model_observasi_tenaga_ahli->observasi_by_id_pengguna($id_pengguna),
			'btn_label'		=> 'Observasi Sekarang',
		));
	}

	public function histori(){
		$id_pengguna = $this->session->userdata('pengguna')->id;

		$this->page->view('observasi_tenaga_ahli_index', array(
			'add'			=> $this->page->base_url('/edit'),
			'grid'			=> $this->model_observasi_tenaga_ahli->histori_by_id_pengguna($id_pengguna),
			'btn_label'		=> 'Edit',
		));
	}

	public function form($action = 'insert', $id_observasi_tenaga_ahli = '') {	
		$id_pengguna =$this->session->userdata('pengguna')->id;

		// echo $id_pengguna.'<br/>';
		// $grup = $this->model_sdm->sdm_by_id_pengguna($id_pengguna);
		// echo $grup->id_sdm;

		$this->page->view('observasi_tenaga_ahli_form', array(
			'action'						=> $this->page->base_url("/{$action}/{$id_observasi_tenaga_ahli}"),
			'observasi_tenaga_ahli'			=> $this->model_observasi_tenaga_ahli->by_id($id_observasi_tenaga_ahli),
			'grup'							=> $this->model_sdm->sdm_by_id_pengguna($id_pengguna),
		));
	}

	public function add(){
		$this->form();
	}
	
	public function edit($id_observasi_tenaga_ahli){
		$this->form('update', $id_observasi_tenaga_ahli);
	}
	

	public function insert(){
			$typedata = explode('.', $_FILES['userfile']['name']);

			$namafile = $this->input->post('pendaftaran_id').'_observasi-tenaga_ahli.'.$typedata[1];

			$konfigurasi = array('allowed_types' =>'pdf',
								 'upload_path' => $this->gallerypath,
									'file_name' => $namafile);
								 
			$this->load->library('upload', $konfigurasi);
			$this->upload->overwrite = true;
			$this->upload->do_upload();
			$datafile = $this->upload->data();
	
		$data = array(
			'pendaftaran_id' 			=> $this->input->post('pendaftaran_id'),
			'sdm_id' 					=> $this->input->post('sdm_id'),
			'usia_anak'					=> $this->input->post('usia_anak'),
			'tgl_observasi' 			=> $this->input->post('tgl_observasi'),
			'tgl_laporan_observasi' 	=> $this->input->post('tgl_laporan_observasi'),
			'judul_laporan_observasi' 	=> $this->input->post('judul_laporan_observasi'),
			'data_observasi_tenaga_ahli'=> $namafile,

		);
		$this->db->insert('observasi_tenaga_ahli', $data);
		redirect(site_url('/tenaga_ahli/observasi_tenaga_ahli/'));
	}

	public function update($id_observasi_tenaga_ahli){
		$userfile = $_FILES['userfile']['name'];
		
		if(!empty($userfile)){
			$typedata = explode('.', $_FILES['userfile']['name']);
			$pendaftaran_id = $this->input->post('pendaftaran_id');
			$tgl_dokumen = $this->input->post('tgl_laporan_observasi');
			$namafile = $tgl_dokumen.'_'.$pendaftaran_id.'_observasi_tenaga-ahli.'.$typedata[1];

			$konfigurasi = array('allowed_types' =>'pdf',
								 'upload_path' => $this->gallerypath,
									'file_name' => $namafile);
								 
			$this->load->library('upload', $konfigurasi);
			$this->upload->overwrite = true;
			$this->upload->do_upload();
			$datafile = $this->upload->data();
			
			$data = array(
				'sdm_id' 					=> $this->input->post('sdm_id'),
				'usia_anak'					=> $this->input->post('usia_anak'),
				'tgl_observasi' 			=> $this->input->post('tgl_observasi'),
				'tgl_laporan_observasi' 	=> $this->input->post('tgl_laporan_observasi'),
				'judul_laporan_observasi' 	=> $this->input->post('judul_laporan_observasi'),
				'data_observasi_tenaga_ahli'=> $namafile,
			);
		}
		else{
			$data = array(
				'sdm_id' 					=> $this->input->post('sdm_id'),
				'usia_anak'					=> $this->input->post('usia_anak'),
				'tgl_observasi' 			=> $this->input->post('tgl_observasi'),
				'tgl_laporan_observasi' 	=> $this->input->post('tgl_laporan_observasi'),
				'judul_laporan_observasi' 	=> $this->input->post('judul_laporan_observasi'),
			);
		}

		$this->db->where('id_observasi_tenaga_ahli', $id_observasi_tenaga_ahli);
		$this->db->update('observasi_tenaga_ahli', $data);
		
		redirect(site_url('/tenaga_ahli/observasi_tenaga_ahli/observasi'));
	}

	public function reset($id_observasi_tenaga_ahli){
		
		$data = array(
			'tgl_observasi' 			=> null,
			'tgl_laporan_observasi' 	=> null,
			'judul_laporan_observasi' 	=> null,
			'data_observasi_tenaga_ahli'=> null,
		);

		$this->db->where('id_observasi_tenaga_ahli', $id_observasi_tenaga_ahli);
		$this->db->update('observasi_tenaga_ahli', $data);
		
		redirect(site_url('/tenaga_ahli/observasi_tenaga_ahli/histori'));
	}
	
	public function delete($id_observasi_tenaga_ahli){
		$this->db->delete('observasi_tenaga_ahli', array('id_observasi_tenaga_ahli' => $id_observasi_tenaga_ahli));
		redirect($this->agent->referrer());
	}

	public function options_observasi_tenaga_ahli($id_observasi_tenaga_ahli){
		$observasi_tenaga_ahli = $this->db->order_by('observasi_tenaga_ahli')->get('id_observasi_tenaga_ahli');
		return options($observasi_tenaga_ahli, 'id_observasi_tenaga_ahli', $id_observasi_tenaga_ahli, 'id_observasi_tenaga_ahli');
	}
	
}

/* End of file Kb.php */
