<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class tata_laksana_setelah_diagnosa extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_tata_laksana_setelah_diagnosa');
		// $this->load->model('model_kegiatan_tidak_rutin_anak');	
	}

	// ----- Tujuan Setelah Di next dari kegiatan_tidak_rutin_anak Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_tata_laksana_setelah_diagnosa = '') {		
		$this->page->view('tata_laksana_setelah_diagnosa_form', array(
			'action'								=> $this->page->base_url("/{$action}/{$id_tata_laksana_setelah_diagnosa}"),
			'tata_laksana_setelah_diagnosa'			=> $this->model_tata_laksana_setelah_diagnosa->by_id_tata_laksana_setelah_diagnosa($id_tata_laksana_setelah_diagnosa),
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

		$cek = $this->db->get_where('tata_laksana_setelah_diagnosa', $data);
		$cek1 = $cek->row_array();	
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Tata Laksana Setelah Diagnosa');
			$data = array(
				'data_tata_laksana_setelah_diagnosa'=> $this->input->post('data_tata_laksana_setelah_diagnosa'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('tata_laksana_setelah_diagnosa', $data);
			
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'pendaftaran_id' 					=> $this->input->post('pendaftaran_id'),
				'data_tata_laksana_setelah_diagnosa'=> $this->input->post('data_tata_laksana_setelah_diagnosa'),
			);
			$this->db->insert('tata_laksana_setelah_diagnosa', $data);
			redirect(site_url('/ortu/gambaran_anak/'));
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
	
	public function options_tata_laksana_setelah_diagnosa($id_tata_laksana_setelah_diagnosa){
		$tata_laksana_setelah_diagnosa = $this->db->order_by('tata_laksana_setelah_diagnosa')->get('id_tata_laksana_setelah_diagnosa');
		return options($tata_laksana_setelah_diagnosa, 'id_tata_laksana_setelah_diagnosa', $id_tata_laksana_setelah_diagnosa, 'id_tata_laksana_setelah_diagnosa');
	}
	
}

/* End of file Kb.php */
