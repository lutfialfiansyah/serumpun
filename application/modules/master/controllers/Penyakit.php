<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Penyakit extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_penyakit');	
	}

	public function index() {		
		$this->page->view('penyakit_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_penyakit->get_penyakit(),
		));
	}
	
	private function form($action = 'insert', $id_penyakit = ''){
		$this->page->view('penyakit_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_penyakit}"),
			'penyakit'		=> $this->model_penyakit->by_id_penyakit($id_penyakit),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_penyakit){
		$this->form('update', $id_penyakit);
	}
	
	public function insert(){
		$data = array(
			'penyakit' => $this->input->post('penyakit'),
		);
		$this->db->insert('penyakit', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_penyakit){
		$data = array(
			'penyakit' => $this->input->post('penyakit'),
		);
		$this->db->where('id_penyakit', $id_penyakit);
		$this->db->update('penyakit', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_penyakit){
		$this->db->delete('penyakit', array('id_penyakit' => $id_penyakit));
		redirect($this->agent->referrer());
	}
	
	public function options_penyakit($id_penyakit){
		$penyakit = $this->db->order_by('penyakit')->get('penyakit');
		return options($penyakit, 'id_penyakit', $id_penyakit, 'penyakit');
	}
	
}

/* End of file Penyakit.php */
