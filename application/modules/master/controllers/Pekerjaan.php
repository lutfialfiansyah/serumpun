<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pekerjaan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_pekerjaan');	
	}

	public function index() {		
		$this->page->view('pekerjaan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_pekerjaan->get_pekerjaan(),
		));
	}
	
	private function form($action = 'insert', $id_pekerjaan = ''){
		$this->page->view('pekerjaan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_pekerjaan}"),
			'pekerjaan'		=> $this->model_pekerjaan->by_id_pekerjaan($id_pekerjaan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_pekerjaan){
		$this->form('update', $id_pekerjaan);
	}
	
	public function insert(){
		$data = array(
			'pekerjaan' => $this->input->post('pekerjaan'),
		);
		$this->db->insert('pekerjaan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_pekerjaan){
		$data = array(
			'pekerjaan' => $this->input->post('pekerjaan'),
		);
		$this->db->where('id_pekerjaan', $id_pekerjaan);
		$this->db->update('pekerjaan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_pekerjaan){
		$this->db->delete('pekerjaan', array('id_pekerjaan' => $id_pekerjaan));
		redirect($this->agent->referrer());
	}
	
	public function options_pekerjaan($id_pekerjaan){
		$pekerjaan = $this->db->order_by('pekerjaan')->get('pekerjaan');
		return options($pekerjaan, 'id_pekerjaan', $id_pekerjaan, 'pekerjaan');
	}
	
}

/* End of file Pekerjaan.php */
