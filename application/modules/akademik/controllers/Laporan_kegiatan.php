<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_kegiatan extends MX_Controller {
	 
	
	public function __construct(){
		parent::__construct(); 
		
		$this->page->use_directory();
		$this->load->model('model_laporan_kegiatan');
		//$this->load->model('model_perinatal');	
	}

	public function index() {			
		$no_induk = $this->session->data_siswa['no_induk'];
		$this->page->view('laporan_kegiatan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_laporan_kegiatan->get_laporan_kegiatan_by_pendaftaran($no_induk),
		));
	}

	public function form($action = 'insert', $id_laporan_kegiatan = '') {
		$this->page->view('laporan_kegiatan_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_laporan_kegiatan}"),
			'laporan_kegiatan'		=> $this->model_laporan_kegiatan->by_id_laporan_kegiatan($id_laporan_kegiatan),
			'siswa' 		=> $this->session->userdata('no_induk'),
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
	
	public function edit($id_laporan_kegiatan){
		$this->form('update', $id_laporan_kegiatan);
	}
	
	public function insert(){
		$data = array(
			'id_laporan_kegiatan'	=> $this->input->post('id_laporan_kegiatan'),
			'no_induk' 		=> $this->input->post('no_induk'),
			'tgl_kegiatan' 			=> $this->input->post('tgl_kegiatan'),
			'kegiatan'		 		=> $this->input->post('kegiatan'),
			'deskripsi' 			=> $this->input->post('deskripsi'),
			'kategori' 				=> $this->input->post('kategori'),
		);
		$this->db->insert('laporan_kegiatan', $data);
		echo $no_induk = $this->input->post('no_induk');
		$this->session->set_flashdata('no_induk', $no_induk);
		redirect(site_url('/akademik/laporan_kegiatan'));
	}
	
	public function update($id_laporan_kegiatan){
		$data = array(
			'tgl_kegiatan' => $this->input->post('tgl_kegiatan'),
			'kegiatan' 	   => $this->input->post('kegiatan'),
			'deskripsi'	   => $this->input->post('deskripsi'),
			'kategori'     => $this->input->post('kategori'),
		);
		$this->db->where('id_laporan_kegiatan', $id_laporan_kegiatan);
		$this->db->update('laporan_kegiatan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_laporan_kegiatan){
		$this->db->delete('laporan_kegiatan', array('id_laporan_kegiatan' => $id_laporan_kegiatan));
		redirect($this->agent->referrer());
	}
	
	public function options_laporan_kegiatan($id_laporan_kegiatan){
		$laporan_kegiatan = $this->db->order_by('laporan_kegiatan')->get('id_laporan_kegiatan');
		return options($laporan_kegiatan, 'id_laporan_kegiatan', $id_laporan_kegiatan, 'id_laporan_kegiatan');
	}
	
}

/* End of file Kb.php */
