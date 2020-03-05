<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Perubahan_fisik extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_perubahan_fisik');
		//$this->load->model('model_perinatal');	
	}

	public function index() {			
		$no_induk = $this->session->data_siswa['no_induk'];
		$this->page->view('perubahan_fisik_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_perubahan_fisik->get_perubahan_fisik(),
		));
	}
	
	private function form($action = 'insert', $id_perubahan_fisik = ''){
		$this->page->view('perubahan_fisik_form', array (
			'back'				=> $this->agent->referrer(),
			'action'			=> $this->page->base_url("/{$action}/{$id_perubahan_fisik}"),
			'perubahan_fisik'	=> $this->model_perubahan_fisik->by_id_perubahan_fisik($id_perubahan_fisik),
		));
	}


	public function add(){
		$this->form();
	}
	
	public function edit($id_perubahan_fisik){
		$this->form('update', $id_perubahan_fisik);
	}
	
	public function insert(){
		$data = array(
			'id_perubahan_fisik'	=> $this->input->post('id_perubahan_fisik'),
			'siswa_id' 				=> $this->input->post('siswa_id'),
			'tgl_pengukuran' 		=> $this->input->post('tgl_pengukuran'),
			'berat_perbulan'		=> $this->input->post('berat_perbulan'),
			'tinggi_perbulan' 		=> $this->input->post('tinggi_perbulan'),
		);
		$this->db->insert('perubahan_fisik', $data);
		echo $siswa_id = $this->input->post('siswa_id');
		$this->session->set_flashdata('siswa_id', $siswa_id);
		redirect($this->page->base_url());
	}
	
	public function update($id_perubahan_fisik){
		$data = array(
			'id_perubahan_fisik'	=> $this->input->post('id_perubahan_fisik'),
			'siswa_id' 				=> $this->input->post('siswa_id'),
			'tgl_pengukuran' 		=> $this->input->post('tgl_pengukuran'),
			'berat_perbulan'		=> $this->input->post('berat_perbulan'),
			'tinggi_perbulan' 		=> $this->input->post('tinggi_perbulan'),
		);
		$this->db->where('id_perubahan_fisik', $id_perubahan_fisik);
		$this->db->update('perubahan_fisik', $data);
		echo $siswa_id = $this->input->post('siswa_id');
		$this->session->set_flashdata('siswa_id', $siswa_id);
		redirect($this->page->base_url());
	}

	public function delete($id_perubahan_fisik){
		$this->db->delete('perubahan_fisik', array('id_perubahan_fisik' => $id_perubahan_fisik));
		redirect($this->agent->referrer());
	}
	
	public function options_perubahan_fisik($id_perubahan_fisik){
		$perubahan_fisik = $this->db->order_by('perubahan_fisik')->get('id_perubahan_fisik');
		return options($perubahan_fisik, 'id_perubahan_fisik', $id_perubahan_fisik, 'id_perubahan_fisik');
	}
	
}

/* End of file perubahan_fisik.php */
