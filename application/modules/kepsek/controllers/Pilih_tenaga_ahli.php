<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Pilih_tenaga_ahli extends MX_Controller {
	 
	 
	public function __construct(){
		parent::__construct(); 
		  
		$this->page->use_directory(); 
		$this->load->model('model_siswa');	
		$this->load->model('pendaftaran/model_pendaftaran');	
	}

	public function index() {				
		$this->page->view('pilih_tenaga_ahli_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_siswa->get_belum_observasi(),
		));
	}

	public function form($action = 'insert', $id_pendaftaran = ''){
		$id_pendaftaran =  $this->input->post('id_pendaftaran');
		$data = $this->model_pendaftaran->by_id_pendaftaran($id_pendaftaran);

		$daftar = array(
			'id_pendaftaran'	=> $data->id_pendaftaran,
			'nama_lengkap_anak'	=> $data->nama_lengkap_anak
		);

		$this->session->set_userdata('daftar', $daftar);

		$this->page->view('pilih_tenaga_ahli_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$id_pendaftaran}"),
			'pendaftaran'	=> $this->model_siswa->by_id_pendaftaran($id_pendaftaran),
		));
	}
	

	public function edit($id_pendaftaran){
		$this->form('update', $id_pendaftaran);
	}

	public function add(){
		$this->form();
	}

	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('observasi_tenaga_ahli', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$data = array(
				'sdm_id' => $this->input->post('tenaga_ahli1'),	
			);
			$this->db->where('pendaftaran_id', $pendaftaran_id);
			$this->db->update('observasi_tenaga_ahli', $data);
			
			redirect($this->page->base_url());
		}
		else{
			$data = array (
				'a.id_pendaftaran' => $pendaftaran_id
			);

			$this->db->select('
					a.id_pendaftaran id_pendaftaran, 
					b.nik nik_anak, 
					b.tgl_lahir tgl_lahir_anak,
			');
		    $this->db->from('pendaftaran a');
		    $this->db->join('biodata b', 'a.anak_id=b.nik', 'left');
			$cari = $this->db->get_where('pendaftaran', $data);
			$hasil = $cari->row_array();

			$noww = date_format(date_create(),'Y');  
			$data = str_split($hasil['tgl_lahir_anak'],4);
			$umur = $noww-$data[0];

			$data = array(
				'pendaftaran_id' => $this->input->post('pendaftaran_id'),	
				'sdm_id' => $this->input->post('tenaga_ahli1'),	
				'usia_anak' => $umur,	
			);
			$this->db->insert('observasi_tenaga_ahli', $data); 
			
			redirect(site_url('/kepsek/pilih_tenaga_ahli/'));
		}
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