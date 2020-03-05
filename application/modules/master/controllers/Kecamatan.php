<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kecamatan extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kecamatan');	
	}

	public function index() {		
		$this->page->view('kecamatan_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kecamatan->get_kecamatan(),
		));
	}
	
	private function form($action = 'insert', $id_kecamatan = ''){
		$this->page->view('kecamatan_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kecamatan}"),
			'kecamatan'		=> $this->model_kecamatan->by_id_kecamatan($id_kecamatan),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kecamatan){
		$this->form('update', $id_kecamatan);
	}
	
	public function insert(){
		$data = array(
			'id_kecamatan' => $this->input->post('id_kecamatan'),
			'kecamatan' => $this->input->post('kecamatan'),
			'kabkot_id' => $this->input->post('kabkot_id'),
		);
		$this->db->insert('kecamatan', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kecamatan){
		$data = array(
			'id_kecamatan' => $this->input->post('id_kecamatan'),
			'kecamatan' => $this->input->post('kecamatan'),
			'kabkot_id' => $this->input->post('kabkot_id'),
		);
		$this->db->where('id_kecamatan', $id_kecamatan);
		$this->db->update('kecamatan', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kecamatan){
		$this->db->delete('kecamatan', array('id_kecamatan' => $id_kecamatan));
		redirect($this->agent->referrer());
	}
	
	public function options_kecamatan($id_kecamatan){
		$kecamatan = $this->db->order_by('kecamatan')->get('kecamatan');
		return options($kecamatan, 'id_kecamatan', $id_kecamatan, 'kecamatan');
	}
	
}

/* End of file Kecamatan.php */
