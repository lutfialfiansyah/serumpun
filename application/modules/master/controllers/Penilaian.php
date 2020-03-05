<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Penilaian extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_penilaian');	
	}

	public function index() {		
		$this->page->view('penilaian_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_penilaian->get_penilaian(),
		));
	}
	
	private function form($action = 'insert', $id_penilaian = ''){
		$this->page->view('penilaian_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_penilaian}"),
			'penilaian'		=> $this->model_penilaian->by_id_penilaian($id_penilaian),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_penilaian){
		$this->form('update', $id_penilaian);
	}
	
	public function insert(){
		$data = array(
			'penilaian' => $this->input->post('penilaian'),
		);
		$this->db->insert('penilaian', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_penilaian){
		$data = array(
			'penilaian' => $this->input->post('penilaian'),
		);
		$this->db->where('id_penilaian', $id_penilaian);
		$this->db->update('penilaian', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_penilaian){
		$this->db->delete('penilaian', array('id_penilaian' => $id_penilaian));
		redirect($this->agent->referrer());
	}
	
	public function options_penilaian($id_penilaian){
		$penilaian = $this->db->order_by('penilaian')->get('penilaian');
		return options($penilaian, 'id_penilaian', $id_penilaian, 'penilaian');
	}
	
}

/* End of file penilaian.php */
