<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Biodata extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_biodata');	
	}

	public function index() {		
		$this->page->view('biodata_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_biodata->get_biodata(),
		));
	}
	
	private function form($action = 'insert', $nik = ''){
		$this->page->view('biodata_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$nik}"),
			'biodata'		=> $this->model_biodata->by_id_biodata($nik),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($nik){
		$this->form('update', $nik);
	}
	
	public function insert(){
		$data = array(
			'nik' => $this->input->post('nik'),
			'nama_lengkap' => $this->input->post('nama_lengkap'),
			'jk' => $this->input->post('jk'),
			'foto' => $this->input->post('foto'),
		);
		$this->db->insert('biodata', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($nik){
		$data = array(
			'nama_lengkap' => $this->input->post('nama_lengkap'),
			'jk' => $this->input->post('jk'),
			'foto' => $this->input->post('foto'),		
		);
		$this->db->where('nik', $nik);
		$this->db->update('biodata', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($nik){
		$this->db->delete('biodata', array('nik' => $nik));
		redirect($this->agent->referrer());
	}
	
	public function options_biodata($nik){
		$biodata = $this->db->order_by('nama_lengkap')->get('biodata');
		return options($biodata, 'nik', $nik, 'nama');
	}
	
}

/* End of file Biodata.php */
