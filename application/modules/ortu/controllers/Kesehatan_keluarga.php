<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kesehatan_keluarga extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kesehatan_keluarga');
		//$this->load->model('model_perinatal');	
	} 

	public function index($action = 'insert', $id_kesehatan_keluarga = '') {
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];			
		$this->page->view('kesehatan_keluarga_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_kesehatan_keluarga}"),
			'kesehatan_keluarga'	=> $this->model_kesehatan_keluarga->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));}


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

		$cek = $this->db->get_where('kesehatan_keluarga', $data);
		$cek1 = $cek->row_array();
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Kesehatan Keluarga');
			$data = array(
				'data_kesehatan_keluarga'	 	=> $this->input->post('data_kesehatan_keluarga'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('kesehatan_keluarga', $data);
			redirect($this->agent->referrer());
		}
		else{
			$data = array(
				'id_kesehatan_keluarga'	 		=> $this->input->post('id_kesehatan_keluarga'),
				'pendaftaran_id' 				=> $this->input->post('pendaftaran_id'),
				'data_kesehatan_keluarga'	 	=> $this->input->post('data_kesehatan_keluarga'),
			);
			$this->db->insert('kesehatan_keluarga', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/ortu/diagnosa/'));
		}	
	}
	
	// public function update($id_kb){
	// 	$data = array(
	// 		'kb' => $this->input->post('kb'),
	// 	);
	// 	$this->db->where('id_kb', $id_kb);
	// 	$this->db->update('kb', $data);
		
	// 	redirect($this->page->base_url());
	// }

	// public function delete($id_kb){
	// 	$this->db->delete('kb', array('id_kb' => $id_kb));
	// 	redirect($this->agent->referrer());
	// }
	
	public function options_kesehatan_keluarga($id_kesehatan_keluarga){
		$kesehatan_keluarga = $this->db->order_by('kesehatan_keluarga')->get('id_kesehatan_keluarga');
		return options($kesehatan_keluarga, 'id_kesehatan_keluarga', $id_kesehatan_keluarga, 'id_kesehatan_keluarga');
	}
	
}

/* End of file Kb.php */
