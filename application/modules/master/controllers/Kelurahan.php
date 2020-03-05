<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelurahan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kelurahan');	
	}

	public function index() {		
		$this->page->view('kelurahan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kelurahan->get_kelurahan(),
		));
	}
	
	private function form($action = 'insert', $id_kelurahan = ''){
		$this->page->view('kelurahan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kelurahan}"),
			'kelurahan'		=> $this->model_kelurahan->by_id_kelurahan($id_kelurahan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kelurahan){
		$this->form('update', $id_kelurahan);
	}
	
	public function insert(){
		$data = array(
			'id_kelurahan' => $this->input->post('id_kelurahan'),
			'kelurahan' => $this->input->post('kelurahan'),
			'kecamatan_id' => $this->input->post('kecamatan_id'),
		);
		$this->db->insert('kelurahan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kelurahan){
		$data = array(
			'id_kelurahan' => $this->input->post('id_kelurahan'),
			'kelurahan' => $this->input->post('kelurahan'),
			'kecamatan_id' => $this->input->post('kecamatan_id'),
		);
		$this->db->where('id_kelurahan', $id_kelurahan);
		$this->db->update('kelurahan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kelurahan){
		$this->db->delete('kelurahan', array('id_kelurahan' => $id_kelurahan));
		redirect($this->agent->referrer());
	}
	
	public function options_kelurahan($id_kelurahan){
		$kelurahan = $this->db->order_by('kelurahan')->get('kelurahan');
		return options($kelurahan, 'id_kelurahan', $id_kelurahan, 'kelurahan');
	}
	
}

/* End of file Kelurahan.php */
