<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemeriksa extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_pemeriksa');	
	}

	public function index() {		
		$this->page->view('pemeriksa_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_pemeriksa->get_pemeriksa(),
		));
	}
	
	private function form($action = 'insert', $id_pemeriksa = ''){
		$this->page->view('pemeriksa_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_pemeriksa}"),
			'pemeriksa'		=> $this->model_pemeriksa->by_id_pemeriksa($id_pemeriksa),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_pemeriksa){
		$this->form('update', $id_pemeriksa);
	}
	
	public function insert(){
		$data = array(
			'pemeriksa' => $this->input->post('pemeriksa'),
		);
		$this->db->insert('pemeriksa', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_pemeriksa){
		$data = array(
			'pemeriksa' => $this->input->post('pemeriksa'),
		);
		$this->db->where('id_pemeriksa', $id_pemeriksa);
		$this->db->update('pemeriksa', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_pemeriksa){
		$this->db->delete('pemeriksa', array('id_pemeriksa' => $id_pemeriksa));
		redirect($this->agent->referrer());
	}
	
	public function options_pemeriksa($id_pemeriksa){
		$pemeriksa = $this->db->order_by('pemeriksa')->get('pemeriksa');
		return options($pemeriksa, 'id_pemeriksa', $id_pemeriksa, 'pemeriksa');
	}
	
}

/* End of file Pemeriksa.php */
