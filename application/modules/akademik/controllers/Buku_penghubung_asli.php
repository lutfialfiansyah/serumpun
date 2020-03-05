<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku_penghubung extends MX_Controller {
	 
	
	public function __construct(){
		parent::__construct(); 
		
		$this->page->use_directory();
		$this->load->model('model_buku_penghubung');
		//$this->load->model('model_perinatal');	
	}

	public function index() {			
		$no_induk = $this->session->data_siswa['no_induk'];
		$this->page->view('buku_penghubung_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_buku_penghubung->get_buku_penghubung_by_pendaftaran($no_induk),
		));
	}

	public function form($action = 'insert', $id_buku_penghubung = '') {
		$this->page->view('buku_penghubung_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_buku_penghubung}"),
			'buku_penghubung'		=> $this->model_buku_penghubung->by_id_buku_penghubung($id_buku_penghubung),
			'siswa' 				=> $this->session->userdata('no_induk'),
		));}


	// public function form($action = 'insert', $id_prenatal = '') {		
	// 	$this->page->view('prenatal_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_prenatal}"),
	// 		'prenatal'			=> $this->model_prenatal->by_id_prenatal($id_prenatal),
	// 		'pendaftaran'		=> $this->input->post('no_induk'),
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
	
	public function edit($id_buku_penghubung){
		$this->form('update', $id_buku_penghubung);
	}
	
	public function insert(){
		$data = array(
			'id_buku_penghubung'	=> $this->input->post('id_buku_penghubung'),
			'no_induk' 				=> $this->input->post('no_induk'),

			'tgl_buku_penghubung' 	=> $this->input->post('tgl_buku_penghubung'),
			'hal'		 			=> $this->input->post('hal'),
			'penilaian_id' 			=> $this->input->post('penilaian_id'),
			'keterangan' 			=> $this->input->post('keterangan'),
			'kemandirian' 			=> $this->input->post('kemandirian'),
			'informasi_guru' 		=> $this->input->post('informasi_guru'),
			'informasi_ortu' 		=> $this->input->post('informasi_ortu'),
		);
		$this->db->insert('buku_penghubung', $data);
		echo $no_induk = $this->input->post('no_induk');
		$this->session->set_flashdata('no_induk', $no_induk);
		redirect(site_url('/akademik/buku_penghubung'));
	}
	
	public function update($id_buku_penghubung){
		$data = array(
			'tgl_buku_penghubung'	=> $this->input->post('tgl_buku_penghubung'),
			'hal' 	   				=> $this->input->post('hal'),
			'penilaian_id'	   		=> $this->input->post('penilaian_id'),
			'keterangan'     		=> $this->input->post('keterangan'),
			'kemandirian' 			=> $this->input->post('kemandirian'),
			'informasi_guru' 		=> $this->input->post('informasi_guru'),
			'informasi_ortu' 		=> $this->input->post('informasi_ortu'),
		);
		$this->db->where('id_buku_penghubung', $id_buku_penghubung);
		$this->db->update('buku_penghubung', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_buku_penghubung){
		$this->db->delete('buku_penghubung', array('id_buku_penghubung' => $id_buku_penghubung));
		redirect($this->agent->referrer());
	}
	
	public function options_buku_penghubung($id_buku_penghubung){
		$buku_penghubung = $this->db->order_by('buku_penghubung')->get('id_buku_penghubung');
		return options($buku_penghubung, 'id_buku_penghubung', $id_buku_penghubung, 'id_buku_penghubung');
	}
	
}

/* End of file Kb.php */
