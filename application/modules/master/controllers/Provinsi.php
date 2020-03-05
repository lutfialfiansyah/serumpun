<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Provinsi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_provinsi');	
	}

	public function index() {		
		$this->page->view('provinsi_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_provinsi->get_provinsi(),
		));
	}
	
	private function form($action = 'insert', $id_provinsi = ''){
		$this->page->view('provinsi_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_provinsi}"),
			'provinsi'		=> $this->model_provinsi->by_id_provinsi($id_provinsi),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_provinsi){
		$this->form('update', $id_provinsi);
	}
	
	public function insert(){
		$data = array(
			'provinsi' => $this->input->post('provinsi'),
		);
		$this->db->insert('provinsi', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_provinsi){
		$data = array(
			'provinsi' => $this->input->post('provinsi'),
		);
		$this->db->where('id_provinsi', $id_provinsi);
		$this->db->update('provinsi', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_provinsi){
		$this->db->delete('provinsi', array('id_provinsi' => $id_provinsi));
		redirect($this->agent->referrer());
	}
	
	public function options_provinsi($id_provinsi){
		$provinsi = $this->db->order_by('provinsi')->get('provinsi');
		return options($provinsi, 'id_provinsi', $id_provinsi, 'provinsi');
	}
	
}

/* End of file Provinsi.php */
