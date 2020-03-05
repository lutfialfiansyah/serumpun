<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kartu_keluarga extends MX_Controller {
	 
	var $gallerypath;
	var $gallery_path_url;
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kartu_keluarga'); 
		
		$this->gallerypath = realpath(APPPATH . '../document/kartu_keluarga');
		$this->gallery_path_url = base_url().'document/kartu_keluarga/';	
	}

	public function index($action = 'insert', $id_kartu_keluarga = '') {	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];		
		$this->page->view('kartu_keluarga_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_kartu_keluarga}"),
			'kartu_keluarga'		=> $this->model_kartu_keluarga->by_id_pendaftaran($id_pendaftaran),
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

			$namafile = $this->input->post('pendaftaran_id').'_kartu-keluarga.'.$typedata[1];

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
				'no_kk'							=> $this->input->post('no_kk'),
				'file_kartu_keluarga' 	   		=> $namafile,
			);
			
			$this->db->insert('kartu_keluarga', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/cetak_pdf/cetak_pdf/'));	
		}
	}
	
	public function options_kartu_keluarga($id_kartu_keluarga){
		$kartu_keluarga = $this->db->order_by('id_kartu_keluarga')->get('id_kartu_keluarga');
		return options($kartu_keluarga, 'id_kartu_keluarga', $id_kartu_keluarga, 'id_kartu_keluarga');
	}
	
}

/* End of file Rekam_madis.php */
