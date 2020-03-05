<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kegiatan_tidak_rutin_anak extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		 
		$this->page->use_directory(); 
		$this->load->model('model_kegiatan_tidak_rutin_anak');
		// $this->load->model('model_kegiatan_tidak_rutin_anak');	
	} 

	// ----- Tujuan Setelah Di next dari kegiatan_tidak_rutin_anak Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_kegiatan_tidak_rutin_anak = '') {
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];			
		$this->page->view('kegiatan_tidak_rutin_anak_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_kegiatan_tidak_rutin_anak}"),
			'kegiatan_tidak_rutin_anak'			=> $this->model_kegiatan_tidak_rutin_anak->by_id_pendaftaran($id_pendaftaran),
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
	
	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('kegiatan_tidak_rutin_anak', $data);
		$cek1 = $cek->row_array();
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Berhasil update Kegiatan Tidak Rutin Anak');
			$data = array(
				'data_kegiatan_tidak_rutin_anak' 	=> $this->input->post('data_kegiatan_tidak_rutin_anak'),
				'pengasuh' 						=> $this->input->post('pengasuh'),
				'jum_pengasuh' 					=> $this->input->post('jum_pengasuh'),
				'jum_art' 						=> $this->input->post('jum_art'),
			);
			$this->db->where('pendaftaran_id', $this->input->post('pendaftaran_id')); 
			$this->db->update('kegiatan_tidak_rutin_anak', $data);
			redirect($this->agent->referrer());
		}
		else{
			$data = array(
				'id_kegiatan_tidak_rutin_anak'		=> $this->input->post('id_kegiatan_tidak_rutin_anak'),
				'pendaftaran_id' 					=> $this->input->post('pendaftaran_id'),
				'data_kegiatan_tidak_rutin_anak' 	=> $this->input->post('data_kegiatan_tidak_rutin_anak'),
				'pengasuh' 						=> $this->input->post('pengasuh'),
				'jum_pengasuh' 					=> $this->input->post('jum_pengasuh'),
				'jum_art' 						=> $this->input->post('jum_art'),
			);
			$this->db->insert('kegiatan_tidak_rutin_anak', $data);
			redirect(site_url('/ortu/kegiatan_rutin_anak/'));
		}
	}

	public function options_kegiatan_tidak_rutin_anak($id_kegiatan_tidak_rutin_anak){
		$kegiatan_tidak_rutin_anak = $this->db->order_by('kegiatan_tidak_rutin_anak')->get('id_kegiatan_tidak_rutin_anak');
		return options($kegiatan_tidak_rutin_anak, 'id_kegiatan_tidak_rutin_anak', $id_kegiatan_tidak_rutin_anak, 'id_kegiatan_tidak_rutin_anak');
	}
	
}

/* End of file Kegiatan_tidak_rutin_anak.php */
