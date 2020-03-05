<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Harapan_ortu extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('Model_harapan_ortu');	
	} 

	public function index($action = 'insert', $id_harapan = '') {		
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('Harapan_ortu_form', array(
			'action'		=> $this->page->base_url("/{$action}/{$id_harapan}"),
			'harapan_ortu'	=> $this->Model_harapan_ortu->by_id_pendaftaran($id_pendaftaran),
		));
	}
	
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

		$cek = $this->db->get_where('harapan_ortu', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_psikomotorik = $cek1['id_harapan_ortu'];
			$data = array(
				'ket_harapan' => $this->input->post('ket_harapan'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Harapan Orang Tua');
			$this->db->where('id_harapan_ortu', $id_psikomotorik);
			$this->db->update('harapan_ortu', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'pendaftaran_id' => $this->input->post('pendaftaran_id'),
				'ket_harapan' => $this->input->post('ket_harapan'),
			);
			$this->db->insert('Harapan_ortu', $data);
			redirect(site_url('/ortu/rekam_medis/'));
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
	
	public function options_kb($id_harapan){
		$Harapan_ortu = $this->db->order_by('Harapan_ortu')->get('Harapan_ortu');
		return options($Harapan_ortu, 'id_harapan', $id_harapan_ortu, 'Harapan_ortu');
	}
	
}

/* End of file Kb.php */
