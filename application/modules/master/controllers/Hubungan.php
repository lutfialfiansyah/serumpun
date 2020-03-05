<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Hubungan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_hubungan');	
	}

	public function index() {		
		$this->page->view('hubungan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_hubungan->get_hubungan(),
		));
	}
	
	private function form($action = 'insert', $id_hubungan = ''){
		$this->page->view('hubungan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_hubungan}"),
			'hubungan'		=> $this->model_hubungan->by_id_hubungan($id_hubungan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_hubungan){
		$this->form('update', $id_hubungan);
	}
	
	public function insert(){
		$data = array(
			'hubungan' => $this->input->post('hubungan'),
		);
		$this->db->insert('hubungan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_hubungan){
		$data = array(
			'hubungan' => $this->input->post('hubungan'),
		);
		$this->db->where('id_hubungan', $id_hubungan);
		$this->db->update('hubungan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_hubungan){
		$this->db->delete('hubungan', array('id_hubungan' => $id_hubungan));
		redirect($this->agent->referrer());
	}
	
	public function options_hubungan($id_hubungan){
		$hubungan = $this->db->order_by('hubungan')->get('hubungan');
		return options($hubungan, 'id_hubungan', $id_hubungan, 'hubungan');
	}
	
}

/* End of file Hubungan.php */
