<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class diagnosa extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_diagnosa');
		// $this->load->model('model_kegiatan_tidak_rutin_anak');	
	} 

	// ----- Tujuan Setelah Di next dari kegiatan_tidak_rutin_anak Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_diagnosa = '') {		
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('diagnosa_form', array(
			'action'		=> $this->page->base_url("/{$action}/{$id_diagnosa}"),
			'diagnosa'		=> $this->model_diagnosa->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));}
	
	public function add(){
		$this->form();
	}
	
	
	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('diagnosa', $data);
		$cek1 = $cek->row_array();	
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Diagnosa');
			$data = array(
				'data_diagnosa' 		=> $this->input->post('data_diagnosa'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('diagnosa', $data);
			redirect($this->agent->referrer());
		}
		else{
			$data = array(
				'id_diagnosa'		=> $this->input->post('id_diagnosa'),
				'pendaftaran_id' 	=> $this->input->post('pendaftaran_id'),
				'data_diagnosa' 		=> $this->input->post('data_diagnosa'),
			);
			$this->db->insert('diagnosa', $data);
			redirect(site_url('/ortu/tata_laksana_setelah_diagnosa/'));
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
	
	public function options_diagnosa($id_diagnosa){
		$diagnosa = $this->db->order_by('diagnosa')->get('id_diagnosa');
		return options($diagnosa, 'id_diagnosa', $id_diagnosa, 'id_diagnosa');
	}
	
}

/* End of file Kb.php */
