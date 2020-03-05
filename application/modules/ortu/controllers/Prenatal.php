<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Prenatal extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory(); 
		$this->load->model('model_prenatal'); 
		$this->load->model('pendaftaran/model_pendaftaran');	
	} 

	public function index($action = 'insert', $id_prenatal = '') {
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('prenatal_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_prenatal}"),
			'prenatal'			=> $this->model_prenatal->by_id_pendaftaran($id_pendaftaran),
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

		$cek = $this->db->get_where('prenatal', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_prenatal = $cek1['id_prenatal'];
			$data = array(
				'kehamilan' 		=> $this->input->post('kehamilan'),
				'periksa_kehamilan' => $this->input->post('periksa_kehamilan'),
				'pemeriksa_id' 		=> $this->input->post('pemeriksa_id'),
				'kebortu_id' 		=> $this->input->post('kebortu_id'),
				'penyakit_ibu' 		=> $this->input->post('penyakit_ibu'),
				'penyakit_ayah' 	=> $this->input->post('penyakit_ayah'),
				'kb_id' 			=> $this->input->post('kb_id'),
				'psikologis_ibu' 	=> $this->input->post('psikologis_ibu'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Prenatal');
			$this->db->where('id_prenatal', $id_prenatal);
			$this->db->update('prenatal', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_prenatal'	 	=> $this->input->post('id_prenatal'),
				'pendaftaran_id' 	=> $this->input->post('pendaftaran_id'),
				'kehamilan' 		=> $this->input->post('kehamilan'),
				'periksa_kehamilan' => $this->input->post('periksa_kehamilan'),
				'pemeriksa_id' 		=> $this->input->post('pemeriksa_id'),
				'kebortu_id' 		=> $this->input->post('kebortu_id'),
				'penyakit_ibu' 		=> $this->input->post('penyakit_ibu'),
				'penyakit_ayah' 	=> $this->input->post('penyakit_ayah'),
				'kb_id' 			=> $this->input->post('kb_id'),
				'psikologis_ibu' 	=> $this->input->post('psikologis_ibu'),
			);
			$this->db->insert('prenatal', $data);
			redirect(site_url('/ortu/perinatal/'));
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
	
	public function options_prenatal($id_prenatal){
		$prenatal = $this->db->order_by('prenatal')->get('id_prenatal');
		return options($prenatal, 'id_prenatal', $id_prenatal, 'id_prenatal');
	}
	
}

/* End of file Kb.php */
