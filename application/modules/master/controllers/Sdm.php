<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Sdm extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_sdm');
		$this->load->model('back_office/model_pengguna');	
	}

	public function index() {		
		$this->page->view('sdm_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_sdm->get_sdm(),
		));
	}
	
	private function form($action = 'insert', $id_sdm = '', $id_pengguna = ''){
		$this->page->view('sdm_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_sdm}"),
			'sdm'			=> $this->model_sdm->by_id_sdm($id_sdm),
			'pengguna'		=> $this->model_pengguna->by_id_pengguna($id_pengguna),
		));
	}
	
	public function add($id){
		$this->form('insert','',$id);
	}
	
	public function edit($id_sdm){
		$this->form('update', $id_sdm);
	}
	
	public function insert(){
		$data = array(
			'id_sdm' 			=> $this->input->post('id_sdm'),
			'nama_lengkap' 		=> $this->input->post('nama_lengkap'),
			'alamat' 			=> $this->input->post('alamat'),
			'tgl_lahir' 		=> $this->input->post('tgl_lahir'),
			'jk' 				=> $this->input->post('jk'),
			'agama_id' 			=> $this->input->post('agama_id'),
			'pendidikan_id' 	=> $this->input->post('pendidikan_id'),
			'pengalaman_kerja' 	=> $this->input->post('pengalaman_kerja'),
			'telp' 				=> $this->input->post('telp'),
			'id_pengguna'		=> $this->input->post('id_pengguna'),
		);
		$this->db->insert('sdm', $data);
		
		redirect($this->page->base_url());
	}
	
	public function update($id_sdm){
		$data = array(
			'nama_lengkap' 		=> $this->input->post('nama_lengkap'),
			'alamat'		 	=> $this->input->post('alamat'),
			'tgl_lahir' 		=> $this->input->post('tgl_lahir'),
			'jk' 				=> $this->input->post('jk'),
			'agama_id' 			=> $this->input->post('agama_id'),
			'pendidikan_id' 	=> $this->input->post('pendidikan_id'),
			'pengalaman_kerja' 	=> $this->input->post('pengalaman_kerja'),
			'telp' 				=> $this->input->post('telp'),
		);
		$this->db->where('id_sdm', $id_sdm);
		$this->db->update('sdm', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($id_sdm){
		$this->db->delete('sdm', array('id_sdm' => $id_sdm));
		redirect($this->agent->referrer());
	}
	 
	public function options_sdm($id_sdm){
		$sdm = $this->db->order_by('id_sdm')->get('sdm');
		return options($sdm, 'id_sdm', $id_sdm, 'nama_lengkap');
	}

	public function options_sdm_by_grup($id_grup, $id_sdm){
		$sdm = $this->model_sdm->sdm_by_id_grup($id_grup);
		return options($sdm, 'id_sdm', $id_sdm, 'nama_lengkap');
	}
	
}

/* End of file sdm.php */
