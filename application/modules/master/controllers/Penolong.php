<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Penolong extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_penolong');	
	}

	public function index() {		
		$this->page->view('penolong_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_penolong->get_penolong(),
		));
	}
	
	private function form($action = 'insert', $id_penolong = ''){
		$this->page->view('penolong_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_penolong}"),
			'penolong'		=> $this->model_penolong->by_id_penolong($id_penolong),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_penolong){
		$this->form('update', $id_penolong);
	}
	
	public function insert(){
		$data = array(
			'penolong' => $this->input->post('penolong'),
		);
		$this->db->insert('penolong', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_penolong){
		$data = array(
			'penolong' => $this->input->post('penolong'),
		);
		$this->db->where('id_penolong', $id_penolong);
		$this->db->update('penolong', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_penolong){
		$this->db->delete('penolong', array('id_penolong' => $id_penolong));
		redirect($this->agent->referrer());
	}
	
	public function options_penolong($id_penolong){
		$penolong = $this->db->order_by('penolong')->get('penolong');
		return options($penolong, 'id_penolong', $id_penolong, 'penolong');
	}
	
}

/* End of file Penolong.php */
