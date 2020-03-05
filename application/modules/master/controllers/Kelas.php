<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelas extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_kelas');	
	}

	public function index() {		
		$this->page->view('kelas_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_kelas->get_kelas(),
		));
	}
	
	private function form($action = 'insert', $id_kelas = ''){
		$this->page->view('kelas_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_kelas}"),
			'kelas'			=> $this->model_kelas->by_id_kelas($id_kelas),
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($id_kelas){
		$this->form('update', $id_kelas);
	}
	
	public function insert(){
		$data = array(
			'id_kelas' 		=> $this->input->post('id_kelas'),
			'nama_kelas' 	=> $this->input->post('nama_kelas'),
			'tahun_ajaran' 	=> $this->input->post('tahun_ajaran'),
			'semester' 		=> $this->input->post('semester'),
			'tipe_kelas' 	=> $this->input->post('tipe_kelas'),
			'koordinator' 	=> $this->input->post('koordinator'),
			'pembimbing1' 	=> $this->input->post('pembimbing1'),
			'pembimbing2' 	=> $this->input->post('pembimbing2'),
			'pembimbing3' 	=> $this->input->post('pembimbing3'),
		);
		$this->db->insert('kelas', $data);
		redirect($this->page->base_url());
	}
	
	public function update($id_kelas){
		$data = array(
			'id_kelas' 		=> $this->input->post('id_kelas'),
			'nama_kelas' 	=> $this->input->post('nama_kelas'),
			'tahun_ajaran' 	=> $this->input->post('tahun_ajaran'),
			'semester' 		=> $this->input->post('semester'),
			'tipe_kelas' 	=> $this->input->post('tipe_kelas'),
			'koordinator' 	=> $this->input->post('koordinator'),
			'pembimbing1' 	=> $this->input->post('pembimbing1'),
			'pembimbing2' 	=> $this->input->post('pembimbing2'),
			'pembimbing3' 	=> $this->input->post('pembimbing3'),
		);
		$this->db->where('id_kelas', $id_kelas);
		$this->db->update('kelas', $data);
		redirect($this->page->base_url());
	}

	public function delete($id_kelas){
		$this->db->delete('kelas', array('id_kelas' => $id_kelas));
		redirect($this->agent->referrer());
	}
	
	public function options_kelas($id_kelas){
		$kelas = $this->db->order_by('id_kelas')->get('kelas');
		return options($kelas, 'id_kelas', $id_kelas, 'nama_kelas');
	}
	
}

/* End of file kelas.php */
