<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Gambaran_anak extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('Model_gambaran_anak');	
	}
 
	public function index($action = 'insert', $id_gambaran_anak = '') {	
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];		
		$this->page->view('Gambaran_anak_form', array(
			'action'		=> $this->page->base_url("/{$action}/{$id_gambaran_anak}"),
			'gambaran_anak'	=> $this->Model_gambaran_anak->by_id_pendaftaran($id_pendaftaran),
		));
	}
	
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

		$cek = $this->db->get_where('gambaran_anak', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_psikomotorik = $cek1['id_gambaran_anak'];
			$data = array(
				'ket_anak' => $this->input->post('ket_anak'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Gambaran Anak');
			$this->db->where('id_gambaran_anak', $id_psikomotorik);
			$this->db->update('gambaran_anak', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'pendaftaran_id' => $this->input->post('pendaftaran_id'),
				'ket_anak' => $this->input->post('ket_anak'),
			);
			$this->db->insert('Gambaran_anak', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/ortu/kegiatan_tidak_rutin_anak/'));	
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
	
	public function options_kb($id_gambaran_anak){
		$Gambaran_anak = $this->db->order_by('Gambaran_anak')->get('Gambaran_anak');
		return options($Gambaran_anak, 'id_gambaran_anak', $id_gambaran_anak, 'Gambaran_anak');
	}
	
}

/* End of file Kb.php */
