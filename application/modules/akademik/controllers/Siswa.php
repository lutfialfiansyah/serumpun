<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_siswa');	
		$this->load->model('pendaftaran/model_pendaftaran');	
	}
 
	public function index() {		
		$this->page->view('siswa_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_siswa->get_siswa(),
		));
	}
	
	private function form($action = 'insert', $no_induk = '', $referrer_url){
		$this->page->view('siswa_form', array (
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$no_induk}"),
			'siswa'			=> $this->model_siswa->by_no_induk($no_induk),
			'url'			=> $referrer_url,
		));
	}
	
	public function add($id_pendaftaran){
		$data = $this->model_pendaftaran->by_id_pendaftaran($id_pendaftaran);
		$referrer_url = $this->session->flashdata('referrer_url');

		//echo $referrer_url;

		$daftar = array(
			'id_pendaftaran'	=> $data->id_pendaftaran,
			'nama_lengkap_anak'	=> $data->nama_lengkap_anak,
			'nik_anak'			=> $data->nik_anak
		);

		$this->session->set_userdata('daftar', $daftar);
		$this->form('insert', '', $referrer_url);
	}
	
	public function edit($no_induk){
		$this->form('update', $no_induk);
		
	}
	
	public function insert(){
		//echo $this->input->post('pendaftaran_id')."<br>".$this->input->post('anak_id')."<br>".$this->input->post('no_induk');

		$referrer_url = $this->input->post('referrer_url');

		echo $referrer_url;

		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('siswa', $data);
		$cek1 = $cek->row_array();
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status', 'Penambahan siswa gagal, siswa ini telah terdaftar');
			redirect($this->agent->referrer());
		}
		else{

			$data = array(
				'pendaftaran_id'		=> $this->input->post('pendaftaran_id'),
				'anak_id'		 		=> $this->input->post('anak_id'),
				'no_induk'		 		=> $this->input->post('no_induk'),
			);
			$this->db->insert('siswa', $data);
			
		 	redirect($referrer_url);
		} 
	}
	
	public function update($id_siswa){
		$data = array(
			'pendaftaran_id'		=> $this->input->post('pendaftaran_id'),
			'anak_id'		 		=> $this->input->post('anak_id'),
			'no_induk'		 		=> $this->input->post('no_induk'),
			
		);
		$this->db->where('id_siswa', $id_siswa);
		$this->db->update('siswa', $data);
		
		redirect($this->page->base_url());
	}

	public function delete($no_induk){
		$this->db->delete('siswa', array('no_induk' => $no_induk));
		redirect($this->agent->referrer());
	}
	
	public function options_siswa($no_induk){
		$this->db->select('
			a.id_siswa AS id_siswa,
			a.no_induk AS no_induk,
			b.id_pendaftaran AS id_pendaftaran,
			c.nama_lengkap AS nama_lengkap,
			c.nik AS id_anak
		');
	    $this->db->from('siswa a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'a.anak_id=c.nik', 'left');
		$siswa = $this->db->order_by('no_induk')->get();
		return options($siswa, 'no_induk', $no_induk, 'nama_lengkap');
	}

	
}

/* End of file Kb.php */
