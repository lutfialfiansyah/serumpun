<?php  
defined('BASEPATH') OR exit('No direct script access allowed');

class Observasi_kepsek extends MX_Controller {
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_observasi_kepsek');
		$this->load->model('model_siswa');
		$this->load->model('pendaftaran/model_pendaftaran');	 
	}
  
	public function index() {		
		$this->page->view('observasi_kepsek_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_siswa->get_belum_ppi(),
		));
	}
	 
	private function form($action = 'insert', $id_observasi_kepsek = ''){
		$no_induk = $this->session->daftar['no_induk'];
		$this->page->view('observasi_kepsek_form', array (
			'back'					=> $this->agent->referrer(),
			'action'				=> $this->page->base_url("/{$action}/{$id_observasi_kepsek}"),
			'observasi_kepsek'		=> $this->model_observasi_kepsek->by_id_observasi_kepsek($id_observasi_kepsek),
			'grid'					=> $this->model_observasi_kepsek->get_observasi_kepsek_by($no_induk),
		));
	}
	
	public function add($id_pendaftaran){
		$data = $this->model_siswa->by_id_pendaftaran($id_pendaftaran);

		$daftar = array(
			'id_pendaftaran'	=> $data->id_pendaftaran,
			'no_induk'			=> $data->no_induk,
			'nama_lengkap_anak'	=> $data->nama_lengkap_anak,
		);
		$this->session->set_userdata('daftar', $daftar);
		$this->form('insert','', $data->no_induk);
	}
	
	public function edit($id_observasi_kepsek){
		$this->form('update', $id_observasi_kepsek );
	}
	
	public function insert(){
		$data = array(
			'kompetensi_inti' 		=> $this->input->post('kompetensi_inti'),
			'kompetensi_dasar' 		=> $this->input->post('kompetensi_dasar'),
		);

		$cari = $this->db->get_where('kurikulum', $data);
		$cari2 = $cari->row_array();

		if (isset($cari2['id_kurikulum'])) {
			$data = array(
				'no_induk' 					=> $this->input->post('no_induk'),
				'kurikulum_id'				=> $cari2['id_kurikulum'],
				'kemampuan_saat_observasi'	=> $this->input->post('kemampuan_saat_observasi'),
				'program'					=> $this->input->post('program'),
				'tujuan'					=> $this->input->post('tujuan'),
				'ket'						=> $this->input->post('ket'),
					'kkm'					=> $this->input->post('kkm'),
			);
			$this->db->insert('observasi_kepsek', $data);
		}
		else {
			$this->session->set_flashdata('status_red', 'Data kurikulum salah, silahkan isi kembali dengan benar');
		}
		redirect($this->agent->referrer());
	}
	
	public function update($id_observasi_kepsek){
		$data = array(
			'kompetensi_inti' 		=> $this->input->post('kompetensi_inti'),
			'kompetensi_dasar' 		=> $this->input->post('kompetensi_dasar'),
		);

		$cari = $this->db->get_where('kurikulum', $data);
		$cari2 = $cari->row_array();

		if (isset($cari2['id_kurikulum'])) {
			$data = array(
				'no_induk' 					=> $this->input->post('no_induk'),
				'kurikulum_id'				=> $cari2['id_kurikulum'],
				'kemampuan_saat_observasi'	=> $this->input->post('kemampuan_saat_observasi'),
				'program'					=> $this->input->post('program'),
				'tujuan'					=> $this->input->post('tujuan'),
				'ket'						=> $this->input->post('ket'),
				'kkm'						=> $this->input->post('kkm'),
			);
			$this->session->set_flashdata('status_green', 'Edit observasi kepala sekolah berhasil');
			$this->db->where('id_observasi_kepsek', $id_observasi_kepsek);
			$this->db->update('observasi_kepsek', $data);
		}
		else {
			$this->session->set_flashdata('status_red', 'Data kurikulum salah, silahkan isi kembali dengan benar');
		}
		redirect($this->agent->referrer());
	}

	public function delete($id_observasi_kepsek){
		$this->db->delete('observasi_kepsek', array('id_observasi_kepsek' => $id_observasi_kepsek));
		redirect($this->agent->referrer());
	}

	public function cek_observasi($no_induk){
		$data = array(
			'no_induk' 			=> $no_induk,
		);

		$cari = $this->db->get_where('observasi_kepsek', $data);
		$hasil = $cari->row_array();

		//echo $hasil['id_observasi_kepsek'];

		if (isset($hasil['id_observasi_kepsek']) || $hasil['id_observasi_kepsek'] != '' ) {
			redirect(site_url('/kepsek/penerimaan_siswa'));
		}
		else {
			$this->session->set_flashdata('status_red', 'Observasi oleh Kepala Sekolah belum diisi, silahkan isi terlebih dahulu');
			redirect($this->agent->referrer());
		}
	}
	
	public function options_kurikulum($id_kurikulum){
		$kurikulum = $this->db->order_by('kurikulum')->get('kurikulum');
		return options($kurikulum, 'id_kurikulum', $id_kurikulum, 'kurikulum');
	}
	
}

/* End of file Kb.php */
