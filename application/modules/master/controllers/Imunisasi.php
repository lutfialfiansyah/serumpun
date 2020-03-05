<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imunisasi extends MX_Controller {
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_imunisasi');	
	}
 
	public function index() {		
		$this->page->view('imunisasi_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_imunisasi->get_imunisasi(),
		));
	}
	
	private function form($action = 'insert', $id_imunisasi = ''){
		$this->page->view('imunisasi_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_imunisasi}"),
			'imunisasi'		=> $this->model_imunisasi->by_id_imunisasi($id_imunisasi),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_imunisasi){
		$this->form('update', $id_imunisasi);
	}
	
	public function insert(){
		$data = array(
			'imunisasi' => $this->input->post('imunisasi'),
		);
		$this->db->insert('imunisasi', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_imunisasi){
		$data = array(
			'imunisasi' => $this->input->post('imunisasi'),
		);
		$this->db->where('id_imunisasi', $id_imunisasi);
		$this->db->update('imunisasi', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_imunisasi){
		$this->db->delete('imunisasi', array('id_imunisasi' => $id_imunisasi));
		redirect($this->agent->referrer());
	}
	
	public function options_imunisasi($id_imunisasi){
		$imunisasi = $this->db->order_by('imunisasi')->get('imunisasi');
		return options($imunisasi, 'id_imunisasi', $id_imunisasi, 'imunisasi');
	}
	
}

/* End of file imunisasi.php */
