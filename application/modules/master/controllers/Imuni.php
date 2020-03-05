<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imuni extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_imuni');	
	}

	public function index() {		
		$this->page->view('imuni_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_imuni->get_imuni(),
		));
	}
	
	private function form($action = 'insert', $id_imuni = ''){
		$this->page->view('imuni_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_imuni}"),
			'imuni'		=> $this->model_imuni->by_id_imuni($id_imuni),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_imuni){
		$this->form('update', $id_imuni);
	}
	
	public function insert(){
		$data = array(
			'imuni' => $this->input->post('imuni'),
		);
		$this->db->insert('imuni', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_imuni){
		$data = array(
			'imuni' => $this->input->post('imuni'),
		);
		$this->db->where('id_imuni', $id_imuni);
		$this->db->update('imuni', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_imuni){
		$this->db->delete('imuni', array('id_imuni' => $id_imuni));
		redirect($this->agent->referrer());
	}
	
	public function options_imuni($id_imuni){
		$imuni = $this->db->order_by('imuni')->get('imuni');
		return options($imuni, 'id_imuni', $id_imuni, 'imuni');
	}
	
}

/* End of file imuni.php */
