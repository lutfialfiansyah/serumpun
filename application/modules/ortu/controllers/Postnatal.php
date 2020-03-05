<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Postnatal extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_postnatal');	
		// $this->load->model('model_postnatal');	
	} 

	// ----- Tujuan Setelah Di next dari postnatal Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya
	public function index($action = 'insert', $id_postnatal = '') {	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];		
		$this->page->view('postnatal_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_postnatal}"),
			'postnatal'			=> $this->model_postnatal->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 	=> $this->session->flashdata('pendaftaran_id'),
		));}
	// ----- Fungsi Index Jangan di edit, berpengaruh ke bagian selanjutnya

	// public function form($action = 'insert', $id_postnatal = '') {		
	// 	$this->page->view('postnatal_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_postnatal}"),
	// 		'postnatal'			=> $this->model_postnatal->by_id_postnatal($id_postnatal),
	// 		'pendaftaran'		=> $this->input->post('id_pendaftaran'),
	// 	));
	// }
	
	// private function form($action = 'insert', $id_kb = ''){
	// 	$this->page->view('kb_form', array (
	// 		'back'			=> $this->agent->referrer(),
	// 		'action'		=> $this->page->base_url("/{$action}/{$id_kb}"),
	// 		'kb'			=> $this->model_kb->by_id_kb($id_kb),
	// 	));
	// }


	public function add(){
		$this->form();
	}
	
	// public function edit($id_kb){
	// 	$this->form('update', $id_kb);
	// }
	
	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('postnatal', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_postnatal = $cek1['id_postnatal'];
			$data = array(
				'bayi_kuning' 			=> $this->input->post('bayi_kuning'),
				'sering_biru' 			=> $this->input->post('sering_biru'),
				'kejang' 				=> $this->input->post('kejang'),
				'lama_kejang' 			=> $this->input->post('lama_kejang'),
				'kejang_seluruhtubuh' 	=> $this->input->post('kejang_seluruhtubuh'),
				'sering_kejang' 		=> $this->input->post('sering_kejang'),
				'setelah_kejang' 		=> $this->input->post('setelah_kejang'),
				'sakit_berat' 			=> $this->input->post('sakit_berat'),
				'asupan_id' 			=> $this->input->post('asupan_id'),
				'reflek_hisap' 			=> $this->input->post('reflek_hisap'),
				'makan_bubur' 			=> $this->input->post('makan_bubur'),
				'makan_nasitim' 		=> $this->input->post('makan_nasitim'),
				'makan_nasibiasa' 		=> $this->input->post('makan_nasibiasa'),
				'kes_mengunyah' 		=> $this->input->post('kes_mengunyah'),
				'memilih_makanan' 		=> $this->input->post('memilih_makanan'),
				'masak_buah' 			=> $this->input->post('masak_buah'),
				'masak_sayur' 			=> $this->input->post('masak_sayur'),
				'masak_dagingikan' 		=> $this->input->post('masak_dagingikan'),
				'masalah_bak' 			=> $this->input->post('masalah_bak'),
				'masalah_bab' 			=> $this->input->post('masalah_bab'),
				'masalah_tidur' 		=> $this->input->post('masalah_tidur'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Postnatal');
			$this->db->where('id_postnatal', $id_postnatal);
			$this->db->update('postnatal', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_postnatal'	 		=> $this->input->post('id_postnatal'),
				'pendaftaran_id' 		=> $this->input->post('pendaftaran_id'),
				'bayi_kuning' 			=> $this->input->post('bayi_kuning'),
				'sering_biru' 			=> $this->input->post('sering_biru'),
				'kejang' 				=> $this->input->post('kejang'),
				'lama_kejang' 			=> $this->input->post('lama_kejang'),
				'kejang_seluruhtubuh' 	=> $this->input->post('kejang_seluruhtubuh'),
				'sering_kejang' 		=> $this->input->post('sering_kejang'),
				'setelah_kejang' 		=> $this->input->post('setelah_kejang'),
				'sakit_berat' 			=> $this->input->post('sakit_berat'),
				'asupan_id' 			=> $this->input->post('asupan_id'),
				'reflek_hisap' 			=> $this->input->post('reflek_hisap'),
				'makan_bubur' 			=> $this->input->post('makan_bubur'),
				'makan_nasitim' 		=> $this->input->post('makan_nasitim'),
				'makan_nasibiasa' 		=> $this->input->post('makan_nasibiasa'),
				'kes_mengunyah' 		=> $this->input->post('kes_mengunyah'),
				'memilih_makanan' 		=> $this->input->post('memilih_makanan'),
				'masak_buah' 			=> $this->input->post('masak_buah'),
				'masak_sayur' 			=> $this->input->post('masak_sayur'),
				'masak_dagingikan' 		=> $this->input->post('masak_dagingikan'),
				'masalah_bak' 			=> $this->input->post('masalah_bak'),
				'masalah_bab' 			=> $this->input->post('masalah_bab'),
				'masalah_tidur' 		=> $this->input->post('masalah_tidur'),
			);
			$this->db->insert('postnatal', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/ortu/imunisasi/'));
		}
	}
	
	// public function update($id_kb){
	// 	$data = array(
	// 		'kb' => $this->input->post('kb'),
	// 	);
	// 	$this->db->where('id_kb', $id_kb);
	// 	$this->db->update('kb', $data);
		
	// 	redirect($this->page->base_url());
	// }

	// public function delete($id_kb){
	// 	$this->db->delete('kb', array('id_kb' => $id_kb));
	// 	redirect($this->agent->referrer());
	// }
	
	public function options_postnatal($id_postnatal){
		$postnatal = $this->db->order_by('postnatal')->get('id_postnatal');
		return options($postnatal, 'id_postnatal', $id_postnatal, 'id_postnatal');
	}
	
}

/* End of file Kb.php */
