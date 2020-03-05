<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Agama extends MX_Controller {
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_agama');	
	}

	public function index() {		
		$this->page->view('agama_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_agama->get_agama(),
		));
	}
	
	private function form($action = 'insert', $id_agama = ''){
		$this->page->view('agama_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_agama}"),
			'agama'		=> $this->model_agama->by_id_agama($id_agama),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_agama){
		$this->form('update', $id_agama);
	}
	
	public function insert(){
		$data = array(
			'agama' => $this->input->post('agama'),
		);
		$this->db->insert('agama', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_agama){
		$data = array(
			'agama' => $this->input->post('agama'),
		);
		$this->db->where('id_agama', $id_agama);
		$this->db->update('agama', $data);
		
		redirect($this->page->base_url());
	} 

	public function delete($id_agama){
		$this->db->delete('agama', array('id_agama' => $id_agama));
		redirect($this->agent->referrer());
	}
	
	public function options_agama($id_agama){
		$agama = $this->db->order_by('agama')->get('agama');
		return options($agama, 'id_agama', $id_agama, 'agama');
	}
	
}

/* End of file Agama.php */
