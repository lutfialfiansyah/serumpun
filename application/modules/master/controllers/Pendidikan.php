<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendidikan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_pendidikan');	
	}

	public function index() {		
		$this->page->view('pendidikan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_pendidikan->get_pendidikan(),
		));
	}
	
	private function form($action = 'insert', $id_pendidikan = ''){
		$this->page->view('pendidikan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_pendidikan}"),
			'pendidikan'		=> $this->model_pendidikan->by_id_pendidikan($id_pendidikan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_pendidikan){
		$this->form('update', $id_pendidikan);
	}
	
	public function insert(){
		$data = array(
			'pendidikan' => $this->input->post('pendidikan'),
		);
		$this->db->insert('pendidikan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_pendidikan){
		$data = array(
			'pendidikan' => $this->input->post('pendidikan'),
		);
		$this->db->where('id_pendidikan', $id_pendidikan);
		$this->db->update('pendidikan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_pendidikan){
		$this->db->delete('pendidikan', array('id_pendidikan' => $id_pendidikan));
		redirect($this->agent->referrer());
	}
	
	public function options_pendidikan($id_pendidikan){
		$pendidikan = $this->db->order_by('pendidikan')->get('pendidikan');
		return options($pendidikan, 'id_pendidikan', $id_pendidikan, 'pendidikan');
	}
	
}

/* End of file Pendidikan.php */
