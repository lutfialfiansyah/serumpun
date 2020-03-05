<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kebortu extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kebortu');	
	}

	public function index() {		
		$this->page->view('kebortu_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kebortu->get_kebortu(),
		));
	}
	
	private function form($action = 'insert', $id_kebortu = ''){
		$this->page->view('kebortu_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kebortu}"),
			'kebortu'		=> $this->model_kebortu->by_id_kebortu($id_kebortu),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kebortu){
		$this->form('update', $id_kebortu);
	}
	
	public function insert(){
		$data = array(
			'kebortu' => $this->input->post('kebortu'),
		);
		$this->db->insert('kebortu', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kebortu){
		$data = array(
			'kebortu' => $this->input->post('kebortu'),
		);
		$this->db->where('id_kebortu', $id_kebortu);
		$this->db->update('kebortu', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kebortu){
		$this->db->delete('kebortu', array('id_kebortu' => $id_kebortu));
		redirect($this->agent->referrer());
	}
	
	public function options_kebortu($id_kebortu){
		$kebortu = $this->db->order_by('kebortu')->get('kebortu');
		return options($kebortu, 'id_kebortu', $id_kebortu, 'kebortu');
	}
	
}

/* End of file Kebortu.php */
