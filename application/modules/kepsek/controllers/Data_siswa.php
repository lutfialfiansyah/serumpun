<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_siswa extends MX_Controller {
	 
	 
	public function __construct(){
		parent::__construct(); 
		 
		$this->page->use_directory(); 
		$this->load->model('model_data_siswa');
		$this->load->model('model_siswa'); 
		$this->load->model('akademik/model_siswa');	
	}

	public function index() {				
		$this->page->view('data_siswa_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_siswa->get_diterima(),
		));
	}

	private function form($action = 'insert', $id_pendaftaran = ''){
		$this->page->view('data_siswa_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_pendaftaran}"),
			'pendaftaran'	=> $this->model_data_siswa->by_id_pendaftaran($id_pendaftaran),
		));
	}
	

	public function edit($id_pendaftaran){
		$this->form('update', $id_pendaftaran);
	}
	
	public function update($id){
		$data = array(
			'status_anak' => $this->input->post('status_anak')		
		);
		$this->db->where('id_pendaftaran', $id);
		$this->db->update('pendaftaran', $data);
		
		redirect($this->page->base_url());
	}

	public function add(){
		$this->form();
	}

	public function insert(){
		$data = array(
			'anak_id' => $this->input->post('anak_id'),
			'anak_ke' => $this->input->post('anak_ke'),
			'jum_saudara' => $this->input->post('jum_saudara'),
			'ayah_id' => $this->input->post('ayah_id'),
			'ibu_id' => $this->input->post('ibu_id'),
			'status_anak' => $this->input->post('status_anak'),
			'status_ortuwali' => $this->input->post('status_ortuwali'),
		);
		$this->db->insert('pendaftaran', $data); 
		
		redirect($this->page->base_url());
	}

	public function delete($id_pendaftaran){
		$this->db->delete('pendaftaran', array('id_pendaftaran' => $id_pendaftaran));
		redirect($this->agent->referrer());
	}
	
	public function options_pendaftaran(){
		$pendaftaran = $this->db->order_by('status_anak')->get('pendaftaran');
		return options($pendaftaran, 'status_anak', NULL, 'status_anak');
	}

	public function laporan_anak($no_induk){
		$data = $this->model_siswa->by_no_induk($no_induk);

		$daftar = array(
			'no_induk'	=> $data->no_induk,
			'nama_lengkap_anak'	=> $data->nama_lengkap
		);

		$this->session->set_userdata('data_siswa', $daftar);

		$this->page->view('laporan_anak_form', array (
			'back'					=> $this->agent->referrer(),
			'siswa'					=> $this->model_siswa->by_no_induk($no_induk),
		));
	}
	
}

/* End of file Penerimaan_siswa.php */
/* Location: ./application/modules/kepsek/controllers/penerimaan_siswa.php */