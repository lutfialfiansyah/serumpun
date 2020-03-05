<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Observasi_tenaga_ahli extends MX_Controller {
	
	 
	public function __construct(){
		parent::__construct();
		 
		$this->page->use_directory();  
		$this->load->model('model_observasi_tenaga_ahli');	
		$this->load->model('pendaftaran/model_pendaftaran');	
	} 

	public function index() {				
		$this->page->view('observasi_tenaga_ahli_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_observasi_tenaga_ahli->get_selain_diterima(),
		));
	}

	private function form($action = 'insert', $id_pendaftaran = ''){
		$this->page->view('observasi_tenaga_ahli_form', array (
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
	
	public function options_pendaftaran($id){
		$jabatan = $this->db->order_by('nama')->get('jabatan');
		return options($pendaftaran, 'id', $id, 'nama');
	}

	public function go_to_observasi_kepsek($id_pendaftaran){
		$data = $this->model_pendaftaran->by_id_pendaftaran($id_pendaftaran);

		$daftar = array(
			'id_pendaftaran'	=> $data->id_pendaftaran,
			'nama_lengkap_anak'	=> $data->nama_lengkap_anak
		);
		$this->session->set_userdata('daftar', $daftar);

		redirect(site_url('/kepsek/observasi_kepsek/add'));
	}
	
}

/* End of file Penerimaan_siswa.php */
/* Location: ./application/modules/kepsek/controllers/penerimaan_siswa.php */