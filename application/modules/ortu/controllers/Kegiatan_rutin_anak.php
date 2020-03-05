<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kegiatan_rutin_anak extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory(); 
		$this->load->model('Model_kegiatan_rutin_anak');
		// $this->load->model('model_kegiatan_tidak_rutin_anak');	
	}

	// ----- Tujuan Setelah Di next dari kegiatan_tidak_rutin_anak Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_kegiatan_rutin_anak = '') {		
		$this->page->view('kegiatan_rutin_anak_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_kegiatan_rutin_anak}"),
			'kegiatan_rutin_anak'			=> $this->Model_kegiatan_rutin_anak->by_id_kegiatan_rutin_anak($id_kegiatan_rutin_anak),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));}
	// ----- Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya

	// public function form($action = 'insert', $id_kegiatan_tidak_rutin_anak = '') {		
	// 	$this->page->view('kegiatan_tidak_rutin_anak_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_kegiatan_tidak_rutin_anak}"),
	// 		'kegiatan_tidak_rutin_anak'			=> $this->model_kegiatan_tidak_rutin_anak->by_id_kegiatan_tidak_rutin_anak($id_kegiatan_tidak_rutin_anak),
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

		$cek = $this->db->get_where('kegiatan_rutin_anak', $data);
		$cek1 = $cek->row_array();	
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Kegiatan Rutin Anak');
			$data = array(
				'data_kegiatan_rutin_anak' 		=> $this->input->post('data_kegiatan_rutin_anak'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('kegiatan_rutin_anak', $data);
			
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_kegiatan_rutin_anak'		=> $this->input->post('id_kegiatan_rutin_anak'),
				'pendaftaran_id' 				=> $this->input->post('pendaftaran_id'),
				'data_kegiatan_rutin_anak' 		=> $this->input->post('data_kegiatan_rutin_anak'),
			);
			$this->db->insert('Kegiatan_rutin_anak', $data);
			redirect(site_url('/ortu/harapan_ortu/'));
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
	
	public function options_kegiatan_rutin_anak($id_kegiatan_rutin_anak){
		$Kegiatan_rutin_anak = $this->db->order_by('Kegiatan_rutin_anak')->get('id_kegiatan_rutin_anak');
		return options($Kegiatan_rutin_anak, 'id_kegiatan_rutin_anak', $id_kegiatan_rutin_anak, 'id_kegiatan_rutin_anak');
	}
	
}

/* End of file Kb.php */
