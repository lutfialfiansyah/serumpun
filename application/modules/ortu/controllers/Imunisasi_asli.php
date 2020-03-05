<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imunisasi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_imunisasi');
		//$this->load->model('model_perinatal');	
	}
 
	public function index($action = 'insert', $id_imunisasi = '') {		
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('imunisasi_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_imunisasi}"),
			'imunisasi'				=> $this->model_imunisasi->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));
	}


	// public function form($action = 'insert', $id_prenatal = '') {		
	// 	$this->page->view('prenatal_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_prenatal}"),
	// 		'prenatal'			=> $this->model_prenatal->by_id_prenatal($id_prenatal),
	// 		'pendaftaran'		=> $this->input->post('id_pendaftaran'),
	// 	));
	// }
	
	// private function form($action = 'insert', $id_kb = ''){
	// 	$this->page->view('kb_form', array (
	// 		'back'			=> $this->agent->referrer(),
	// 		'action'		=> $this->page->base_url("/{$action}/{$id_kb}"),
	// 		'kb'			=> $this->model_kb->by_id_kb($id_kb),
	// 	));
	// }


	public function add(){
		$this->form();
	}
	
	// public function edit($id_kb){
	// 	$this->form('update', $id_kb);
	// }
	
	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('imunisasi', $data);
		$cek1 = $cek->row_array();	
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Imunisasi');
			$data = array(
				'data_imunisasi' 	=> $this->input->post('data_imunisasi'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('imunisasi', $data);
			
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_imunisasi'		=> $this->input->post('id_imunisasi'),
				'pendaftaran_id'		=> $this->input->post('pendaftaran_id'),
				'data_imunisasi' 	=> $this->input->post('data_imunisasi'),
			);
			$this->db->insert('imunisasi', $data);
			redirect(site_url('/ortu/psikomotorik/'));
		}
	}
	public function options_imunisasi($id_imunisasi){
		$imunisasi = $this->db->order_by('imunisasi')->get('id_imunisasi');
		return options($imunisasi, 'id_imunisasi', $id_imunisasi, 'id_imunisasi');
	}
	
}

/* End of file Kb.php */
