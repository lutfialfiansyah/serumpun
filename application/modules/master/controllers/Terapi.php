<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Terapi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_terapi');	
	}

	public function index() {		
		$this->page->view('terapi_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_terapi->get_terapi(),
		));
	}
	
	private function form($action = 'insert', $id_terapi = ''){
		$this->page->view('terapi_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_terapi}"),
			'terapi'		=> $this->model_terapi->by_id_terapi($id_terapi),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_terapi){
		$this->form('update', $id_terapi);
	}
	
	public function insert(){
		$data = array(
			'terapi' => $this->input->post('terapi'),
		);
		$this->db->insert('terapi', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_terapi){
		$data = array(
			'terapi' => $this->input->post('terapi'),
		);
		$this->db->where('id_terapi', $id_terapi);
		$this->db->update('terapi', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_terapi){
		$this->db->delete('terapi', array('id_terapi' => $id_terapi));
		redirect($this->agent->referrer());
	}
	
	public function options_terapi($id_terapi){
		$terapi = $this->db->order_by('terapi')->get('terapi');
		return options($terapi, 'id_terapi', $id_terapi, 'terapi');
	}
	
}

/* End of file Terapi.php */
