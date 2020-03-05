<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Goldarah extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_goldarah');	
	}

	public function index() {		
		$this->page->view('goldarah_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_goldarah->get_goldarah(),
		));
	}
	
	private function form($action = 'insert', $id_goldarah = ''){
		$this->page->view('goldarah_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_goldarah}"),
			'goldarah'		=> $this->model_goldarah->by_id_goldarah($id_goldarah),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_goldarah){
		$this->form('update', $id_goldarah);
	}
	
	public function insert(){
		$data = array(
			'goldarah' => $this->input->post('goldarah'),
		);
		$this->db->insert('goldarah', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_goldarah){
		$data = array(
			'goldarah' => $this->input->post('goldarah'),
		);
		$this->db->where('id_goldarah', $id_goldarah);
		$this->db->update('goldarah', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_goldarah){
		$this->db->delete('goldarah', array('id_goldarah' => $id_goldarah));
		redirect($this->agent->referrer());
	}
	
	public function options_goldarah($id_goldarah){
		$goldarah = $this->db->order_by('goldarah')->get('goldarah');
		return options($goldarah, 'id_goldarah', $id_goldarah, 'goldarah');
	}
	
}

/* End of file Goldarah.php */
