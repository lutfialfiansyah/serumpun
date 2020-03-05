<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Imunisasi extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory(); 
		$this->load->model('model_imunisasi'); 
		$this->load->model('pendaftaran/model_pendaftaran');	
	} 

	public function index($action = 'insert', $id_imunisasi = '') {
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('imunisasi_form', array(
			'action'			=> $this->page->base_url("/{$action}/{$id_imunisasi}"),
			'imunisasi'			=> $this->model_imunisasi->by_id_pendaftaran($id_pendaftaran),
		));
	}


	// public function form($action = 'insert', $id_prenatal = '') {		
	// 	$this->page->view('prenatal_form', array(
	// 		'action'			=> $this->page->base_url("/{$action}/{$id_prenatal}"),
	// 		'prenatal'			=> $this->model_prenatal->by_id_prenatal($id_prenatal),
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
	
	// public function insert(){
	// 	$pendaftaran_id = $this->input->post('pendaftaran_id');

	// 	$data = array (
	// 		'pendaftaran_id' => $pendaftaran_id
	// 	);
		
	// 	$cek = $this->db->get_where('imunisasi', $data);
	// 	$cek1 = $cek->row_array();	
		

	// 	if (isset($cek1)) {
	// 		$id_imunisasi = $cek1['id_imunisasi'];
	// 		$data = array(
	// 			'pendaftaran_id' 		=> $this->input->post('pendaftaran_id'),
	// 			'imuni_id'				=> $this->input->post('imuni_id'),
	// 			'usia_untuk_imuni'		=> $this->input->post('usia_untuk_imuni'),
	// 		);
	// 		$this->session->set_flashdata('status', 'Berhasil update data Imunisasi');
	// 		$this->db->where('id_imunisasi', $id_imunisasi);
	// 		$this->db->update('imunisasi', $data);
	// 		redirect($this->page->base_url());
	// 	}
	// 	else{
	// 		$data = array(
	// 			'id_imunisasi'	 	=> $this->input->post('id_imunisasi'),
	// 			'pendaftaran_id' 	=> $this->input->post('pendaftaran_id'),
	// 			'imuni_id' 			=> $this->input->post('imuni_id'),
	// 			'usia_untuk_imuni' 	=> $this->input->post('usia_untuk_imuni'),
	// 		);
	// 		$this->db->insert('imunisasi', $data);
	// 		redirect(site_url('/ortu/psikomotorik/'));
	// 	}
	// }
	public function insert(){
		// VAR INPUT
		$pendaftaran_id = $this->input->post('pendaftaran_id');
		$imuni_id = $this->input->post('imuni_id');
		$usia_untuk_imuni = $this->input->post('usia_untuk_imuni');
		
		$cek = $this->db->query('SELECT * FROM `imunisasi` WHERE pendaftaran_id ='.$pendaftaran_id);
		$cek1 = $cek->result_array();
		$cek_length_data_imunisasi = $cek->num_rows();
		$count_imuntId = count($imuni_id);
		// echo json_encode(count($imuni_id));die;
		//SET INSERT ARRAY
		$data = array();

		if ($count_imuntId === $cek_length_data_imunisasi) {
			$index = 0; // Set index array awal dengan 0
			foreach ($cek1 as $dataupdate)
			{
				$this->db->where('id_imunisasi', $dataupdate['id_imunisasi']);
				$this->db->update('imunisasi', [
					'imuni_id' => $imuni_id[$index],
					'usia_untuk_imuni' => $usia_untuk_imuni[$index],
				]);
				$index++;
			}
			$this->session->set_flashdata('status', 'Berhasil update data Imunisasi');
			redirect($this->page->base_url());
		}
		else{
			for ($i=0; $i < $count_imuntId-$cek_length_data_imunisasi; $i++) { 
				// $index = $count_imuntId; // Set index array awal dengan 0
				// foreach($imuni_id as $dataimunid){ // Kita buat perulangan berdasarkan nis sampai data terakhir
				array_push($data, array(
					'pendaftaran_id' => $pendaftaran_id,
					'imuni_id' => $imuni_id[$i],
					'usia_untuk_imuni' => $usia_untuk_imuni[$i],
				));
				// 	$index++;
				// }
			}
			$this->db->insert_batch('imunisasi', $data);
			redirect(site_url('/ortu/psikomotorik/'));
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
	
	public function options_imunisasi($id_imunisasi){
		$imunisasi = $this->db->order_by('imunisasi')->get('id_imunisasi');
		return options($imunisasi, 'id_imunisasi', $id_imunisasi, 'id_imunisasi');
	}
	
}

/* End of file Kb.php */
