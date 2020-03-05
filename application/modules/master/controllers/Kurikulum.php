<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kurikulum extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kurikulum');	
	}

	public function index() {		
		$this->page->view('kurikulum_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kurikulum->get_kurikulum(),
		));
	}
	
	private function form($action = 'insert', $id_kurikulum = ''){
		$this->page->view('kurikulum_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kurikulum}"),
			'kurikulum'		=> $this->model_kurikulum->by_id_kurikulum($id_kurikulum),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kurikulum){
		$this->form('update', $id_kurikulum);
	}
	
	public function insert(){
		$data = array(
			'kompetensi_inti' => $this->input->post('kompetensi_inti'),
			'kompetensi_dasar' => $this->input->post('kompetensi_dasar'),
		);
		$this->db->insert('kurikulum', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_kurikulum){
		$data = array(
			'kompetensi_inti' => $this->input->post('kompetensi_inti'),
			'kompetensi_dasar' => $this->input->post('kompetensi_dasar'),
		);
		$this->db->where('id_kurikulum', $id_kurikulum);
		$this->db->update('kurikulum', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_kurikulum){
		$this->db->delete('kurikulum', array('id_kurikulum' => $id_kurikulum));
		redirect($this->agent->referrer());
	}
	
	public function options_kompetensi_inti($kompetensi_inti){
		$inti = $this->db->group_by('kompetensi_inti')->order_by('kompetensi_inti')->get('kurikulum');
		return options($inti, 'kompetensi_inti', $kompetensi_inti, 'kompetensi_inti');
	}
	
	public function options_kompetensi_dasar($kompetensi_dasar){
		$dasar = $this->db->group_by('kompetensi_dasar')->order_by('kompetensi_dasar')->get('kurikulum');
		return options($dasar, 'kompetensi_dasar', $kompetensi_dasar, 'kompetensi_dasar');
	}
	
}

/* End of file Kb.php */
