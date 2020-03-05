<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa_kelas extends MX_Controller {

		public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_siswa');
		$this->load->model('model_siswa_kelas');
	}
	public function index() {		
		$this->page->view('siswa_kelas_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_siswa_kelas->get_siswa_kelas(),
		));
	}
	public function form($action = 'insert', $id_siswa_kelas = '') {		 
		$this->page->view('siswa_kelas_form', array(
			'action'					=> $this->page->base_url("/{$action}/{$id_siswa_kelas}"),
			'siswa_kelas'				=> $this->model_siswa_kelas->by_id_siswa_kelas($id_siswa_kelas), 
		));
	}
	public function add($no_induk){
		$data = $this->model_siswa->by_no_induk($no_induk);

		$daftar = array(
			'no_induk'			=> $data->no_induk,
			'nama_lengkap_anak'	=> $data->nama_lengkap,
		);
		$this->session->set_userdata('daftar', $daftar);
		$this->form();
	}
	public function edit($id_siswa_kelas){
		$this->form('update', $id_siswa_kelas);
	}
	public function insert(){

		$data = array(
			'kelas_id' 					=> $this->input->post('kelas_id'),
			'no_induk' 					=> $this->input->post('no_induk'),

		);
		$this->db->insert('siswa_kelas', $data);
		redirect(site_url('/kepsek/penerimaan_siswa/'));
	}
	
	public function update($id_siswa_kelas){
		
		$data = array(
			'kelas_id' 					=> $this->input->post('kelas_id'),
			'no_induk' 					=> $this->input->post('no_induk'),
			);
				
		
		$this->db->update('siswa_kelas', $data);
		
		redirect($this->page->base_url());
	}
	public function delete($id_siswa_kelas){
		$this->db->delete('siswa_kelas', array('id_siswa_kelas' => $id_siswa_kelas));
		redirect($this->agent->referrer());
	}
	public function options_siswa_kelas($id_siswa_kelas){
		$siswa_kelas = $this->db->order_by('siswa_kelas')->get('id_siswa_kelas');
		return options($siswa_kelas, 'id_siswa_kelas', $id_siswa_kelas, 'id_siswa_kelas');
	}
}

/* End of file Kb.php */
