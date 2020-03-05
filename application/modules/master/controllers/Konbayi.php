<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Konbayi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_konbayi');	
	}

	public function index() {		
		$this->page->view('konbayi_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_konbayi->get_konbayi(),
		));
	}
	
	private function form($action = 'insert', $id_konbayi = ''){
		$this->page->view('konbayi_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_konbayi}"),
			'konbayi'		=> $this->model_konbayi->by_id_konbayi($id_konbayi),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_konbayi){
		$this->form('update', $id_konbayi);
	}
	
	public function insert(){
		$data = array(
			'konbayi' => $this->input->post('konbayi'),
		);
		$this->db->insert('konbayi', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_konbayi){
		$data = array(
			'konbayi' => $this->input->post('konbayi'),
		);
		$this->db->where('id_konbayi', $id_konbayi);
		$this->db->update('konbayi', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_konbayi){
		$this->db->delete('konbayi', array('id_konbayi' => $id_konbayi));
		redirect($this->agent->referrer());
	}
	
	public function options_konbayi($id_konbayi){
		$konbayi = $this->db->order_by('konbayi')->get('konbayi');
		return options($konbayi, 'id_konbayi', $id_konbayi, 'konbayi');
	}
	
}

/* End of file Konbayi.php */
