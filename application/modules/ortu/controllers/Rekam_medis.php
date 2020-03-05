<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekam_medis extends MX_Controller {
	 
	var $gallerypath;
	var $gallery_path_url;
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_rekam_medis'); 
		
		$this->gallerypath = realpath(APPPATH . '../document/rekam_medis');
		$this->gallery_path_url = base_url().'document/rekam_medis/';	
	}

	public function index($action = 'insert', $id_rekam_medis = '') {	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];		
		$this->page->view('rekam_medis_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_rekam_medis}"),
			'rekam_medis'			=> $this->model_rekam_medis->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));}

	public function add(){
		$this->form();
	}

	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'id_pendaftaran' => $id_pendaftaran
		);

		$cek = $this->db->get_where('pendaftaran', $data);
		$cek1 = $cek->row_array();
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status_pendaftaran', 'failed');
			redirect($this->agent->referrer());
		}
		else{
			$typedata = explode('.', $_FILES['userfile']['name']);

			$namafile = $this->input->post('pendaftaran_id').'_rekam-medis.'.$typedata[1];

			$konfigurasi = array('allowed_types' =>'pdf',
								 'upload_path' => $this->gallerypath,
									'file_name' => $namafile);
								 
			$this->load->library('upload', $konfigurasi);
			$this->upload->do_upload();
			$this->upload->overwrite = true;
			$datafile = $this->upload->data();
		
			$konfigurasi = array('source_image' => $datafile['full_path'],
							'file_name' => $namafile);

			$this->load->library('image_lib', $konfigurasi);
			$this->image_lib->resize();
			
			$data = array(
				'pendaftaran_id' 				=> $this->input->post('pendaftaran_id'),
				'nama_dokter'					=> $this->input->post('nama_dokter'),
				'nama_rs'						=> $this->input->post('nama_rs'),
				'jabatan_dokter'				=> $this->input->post('jabatan_dokter'),
				'file_rekam_medis' 	   			=> $namafile,
			);
			
			$this->db->insert('rekam_medis', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/ortu/kartu_keluarga/'));	
		}
	}
	
	public function options_rekam_medis($id_rekam_medis){
		$rekam_medis = $this->db->order_by('id_rekam_medis')->get('id_rekam_medis');
		return options($rekam_medis, 'id_rekam_medis', $id_rekam_medis, 'id_rekam_medis');
	}
	
}

/* End of file Rekam_madis.php */
