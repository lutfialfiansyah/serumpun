<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelainan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kelainan');	
	}

	public function index() {		
		$this->page->view('kelainan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kelainan->get_kelainan(),
		));
	}
	
	private function form($action = 'insert', $id_kelainan = ''){
		$this->page->view('kelainan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kelainan}"),
			'kelainan'		=> $this->model_kelainan->by_id_kelainan($id_kelainan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kelainan){
		$this->form('update', $id_kelainan);
	}
	
	public function insert(){
		$data = array(
			'kelainan' => $this->input->post('kelainan'),
		);
		$this->db->insert('kelainan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kelainan){
		$data = array(
			'kelainan' => $this->input->post('kelainan'),
		);
		$this->db->where('id_kelainan', $id_kelainan);
		$this->db->update('kelainan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kelainan){
		$this->db->delete('kelainan', array('id_kelainan' => $id_kelainan));
		redirect($this->agent->referrer());
	}
	
	public function options_kelainan($id_kelainan){
		$kelainan = $this->db->order_by('kelainan')->get('kelainan');
		return options($kelainan, 'id_kelainan', $id_kelainan, 'kelainan');
	}
	
}

/* End of file Kelainan.php */
