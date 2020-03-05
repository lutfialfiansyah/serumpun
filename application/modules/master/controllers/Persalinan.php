<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Persalinan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_persalinan');	
	}

	public function index() {		
		$this->page->view('persalinan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_persalinan->get_persalinan(),
		));
	}
	
	private function form($action = 'insert', $id_persalinan = ''){
		$this->page->view('persalinan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_persalinan}"),
			'persalinan'		=> $this->model_persalinan->by_id_persalinan($id_persalinan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_persalinan){
		$this->form('update', $id_persalinan);
	}
	
	public function insert(){
		$data = array(
			'persalinan' => $this->input->post('persalinan'),
		);
		$this->db->insert('persalinan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_persalinan){
		$data = array(
			'persalinan' => $this->input->post('persalinan'),
		);
		$this->db->where('id_persalinan', $id_persalinan);
		$this->db->update('persalinan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_persalinan){
		$this->db->delete('persalinan', array('id_persalinan' => $id_persalinan));
		redirect($this->agent->referrer());
	}
	
	public function options_persalinan($id_persalinan){
		$persalinan = $this->db->order_by('persalinan')->get('persalinan');
		return options($persalinan, 'id_persalinan', $id_persalinan, 'persalinan');
	}
	
}

/* End of file Persalinan.php */
