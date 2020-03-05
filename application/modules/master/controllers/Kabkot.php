<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kabkot extends MX_Controller {
	
	 
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kabkot');	
	}

	public function index() {		
		$this->page->view('kabkot_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kabkot->get_kabkot(),
		));
	}
	
	private function form($action = 'insert', $id_kabkot = ''){
		$this->page->view('kabkot_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kabkot}"),
			'kabkot'		=> $this->model_kabkot->by_id_kabkot($id_kabkot),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kabkot){
		$this->form('update', $id_kabkot);
	}
	
	public function insert(){
		$data = array(
			'id_kabkot' => $this->input->post('id_kabkot'),
			'kabkot' => $this->input->post('kabkot'),
			'provinsi_id' => $this->input->post('provinsi_id'),
		);
		$this->db->insert('kabkot', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kabkot){
		$data = array(
			'id_kabkot' => $this->input->post('id_kabkot'),
			'kabkot' => $this->input->post('kabkot'),
			'provinsi_id' => $this->input->post('provinsi_id'),
		);
		$this->db->where('id_kabkot', $id_kabkot);
		$this->db->update('kabkot', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kabkot){
		$this->db->delete('kabkot', array('id_kabkot' => $id_kabkot));
		redirect($this->agent->referrer());
	}
	
	public function options_kabkot($id_kabkot){
		$kabkot = $this->db->order_by('kabkot')->get('kabkot');
		return options($kabkot, 'id_kabkot', $id_kabkot, 'kabkot');
	}
	
}

/* End of file Kabkot.php */
