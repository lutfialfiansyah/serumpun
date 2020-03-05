<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Asupan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_asupan');	
	}

	public function index() {		
		$this->page->view('asupan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_asupan->get_asupan(),
		));
	}
	
	private function form($action = 'insert', $id_asupan = ''){
		$this->page->view('asupan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_asupan}"),
			'asupan'		=> $this->model_asupan->by_id_asupan($id_asupan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_asupan){
		$this->form('update', $id_asupan);
	}
	
	public function insert(){
		$data = array(
			'asupan' => $this->input->post('asupan'),
		);
		$this->db->insert('asupan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_asupan){
		$data = array(
			'asupan' => $this->input->post('asupan'),
		);
		$this->db->where('id_asupan', $id_asupan);
		$this->db->update('asupan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_asupan){
		$this->db->delete('asupan', array('id_asupan' => $id_asupan));
		redirect($this->agent->referrer());
	}
	
	public function options_asupan($id_asupan){
		$asupan = $this->db->order_by('asupan')->get('asupan');
		return options($asupan, 'id_asupan', $id_asupan, 'asupan');
	}
	
}

/* End of file Asupan.php */
