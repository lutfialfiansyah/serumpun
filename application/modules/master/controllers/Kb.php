<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kb extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kb');	
	}

	public function index() {		
		$this->page->view('kb_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kb->get_kb(),
		));
	}
	
	private function form($action = 'insert', $id_kb = ''){
		$this->page->view('kb_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kb}"),
			'kb'		=> $this->model_kb->by_id_kb($id_kb),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kb){
		$this->form('update', $id_kb);
	}
	
	public function insert(){
		$data = array(
			'kb' => $this->input->post('kb'),
		);
		$this->db->insert('kb', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kb){
		$data = array(
			'kb' => $this->input->post('kb'),
		);
		$this->db->where('id_kb', $id_kb);
		$this->db->update('kb', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kb){
		$this->db->delete('kb', array('id_kb' => $id_kb));
		redirect($this->agent->referrer());
	}
	
	public function options_kb($id_kb){
		$kb = $this->db->order_by('kb')->get('kb');
		return options($kb, 'id_kb', $id_kb, 'kb');
	}
	
}

/* End of file Kb.php */
