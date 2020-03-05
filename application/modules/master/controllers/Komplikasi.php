<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Komplikasi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_komplikasi');	
	}

	public function index() {		
		$this->page->view('komplikasi_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_komplikasi->get_komplikasi(),
		));
	}
	
	private function form($action = 'insert', $id_komplikasi = ''){
		$this->page->view('komplikasi_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_komplikasi}"),
			'komplikasi'		=> $this->model_komplikasi->by_id_komplikasi($id_komplikasi),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_komplikasi){
		$this->form('update', $id_komplikasi);
	}
	
	public function insert(){
		$data = array(
			'komplikasi' => $this->input->post('komplikasi'),
		);
		$this->db->insert('komplikasi', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_komplikasi){
		$data = array(
			'komplikasi' => $this->input->post('komplikasi'),
		);
		$this->db->where('id_komplikasi', $id_komplikasi);
		$this->db->update('komplikasi', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_komplikasi){
		$this->db->delete('komplikasi', array('id_komplikasi' => $id_komplikasi));
		redirect($this->agent->referrer());
	}
	
	public function options_komplikasi($id_komplikasi){
		$komplikasi = $this->db->order_by('komplikasi')->get('komplikasi');
		return options($komplikasi, 'id_komplikasi', $id_komplikasi, 'komplikasi');
	}
	
}

/* End of file Komplikasi.php */
