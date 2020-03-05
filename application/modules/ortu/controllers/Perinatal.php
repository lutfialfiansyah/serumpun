<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Perinatal extends MX_Controller {
	
	 
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_perinatal');
		$this->load->model('model_prenatal');	
		$this->load->library('session');
	} 

	// ----- Tujuan Setelah Di next dari perinatal Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_perinatal = '') {	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];		
		$this->page->view('perinatal_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_perinatal}"),
			'perinatal'			=> $this->model_perinatal->by_id_pendaftaran($id_pendaftaran),
		));
	}
	// ----- Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya

	// public function form($action = 'insert', $id_perinatal = '') {		
	// 	$this->page->view('perinatal_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_perinatal}"),
	// 		'perinatal'			=> $this->model_perinatal->by_id_perinatal($id_perinatal),
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

		$cek = $this->db->get_where('perinatal', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_perinatal = $cek1['id_perinatal'];
			$data = array(
				'usia_persalinan' 		=> $this->input->post('usia_persalinan'),
				'persalinan_id' 		=> $this->input->post('persalinan_id'),
				'induksi' 				=> $this->input->post('induksi'),
				'penolong_id' 			=> $this->input->post('penolong_id'),
				'komplikasi_id' 		=> $this->input->post('komplikasi_id'),
				'konbayi_id' 			=> $this->input->post('konbayi_id'),
				'kelainan_id' 			=> $this->input->post('kelainan_id'),
				'terapi_id' 			=> $this->input->post('terapi_id'),
				'bb_lahir' 				=> $this->input->post('bb_lahir'),
				'pb_lahir' 				=> $this->input->post('pb_lahir'),
				'lk_lahir' 				=> $this->input->post('lk_lahir'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Perinatal');
			$this->db->where('id_perinatal', $id_perinatal);
			$this->db->update('perinatal', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_perinatal'	 		=> $this->input->post('id_perinatal'),
				'pendaftaran_id' 		=> $this->input->post('pendaftaran_id'),
				'usia_persalinan' 		=> $this->input->post('usia_persalinan'),
				'persalinan_id' 		=> $this->input->post('persalinan_id'),
				'induksi' 				=> $this->input->post('induksi'),
				'penolong_id' 			=> $this->input->post('penolong_id'),
				'komplikasi_id' 		=> $this->input->post('komplikasi_id'),
				'konbayi_id' 			=> $this->input->post('konbayi_id'),
				'kelainan_id' 			=> $this->input->post('kelainan_id'),
				'terapi_id' 			=> $this->input->post('terapi_id'),
				'bb_lahir' 				=> $this->input->post('bb_lahir'),
				'pb_lahir' 				=> $this->input->post('pb_lahir'),
				'lk_lahir' 				=> $this->input->post('lk_lahir'),
			);
			$this->db->insert('perinatal', $data);
			redirect(site_url('/ortu/postnatal/'));
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
	
	public function options_perinatal($id_perinatal){
		$perinatal = $this->db->order_by('perinatal')->get('id_perinatal');
		return options($perinatal, 'id_perinatal', $id_perinatal, 'id_perinatal');
	}
	
}

/* End of file Kb.php */
