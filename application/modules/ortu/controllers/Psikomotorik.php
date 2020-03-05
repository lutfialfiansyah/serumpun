<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class psikomotorik extends MX_Controller {
	
	
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_psikomotorik');
		//$this->load->model('model_perinatal');	
	}

	public function index($action = 'insert', $id_psikomotorik = '') {		
		$id_pendaftaran =  $this->session->daftar['id_pendaftaran'];	
		$this->page->view('psikomotorik_form', array(
			'action'				=> $this->page->base_url("/{$action}/{$id_psikomotorik}"),
			'psikomotorik'			=> $this->model_psikomotorik->by_id_pendaftaran($id_pendaftaran),
			'pendaftaran_id' 		=> $this->session->flashdata('pendaftaran_id'),
		));}


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
	
	public function insert(){
		$pendaftaran_id = $this->input->post('pendaftaran_id');

		$data = array (
			'pendaftaran_id' => $pendaftaran_id
		);

		$cek = $this->db->get_where('psikomotorik', $data);
		$cek1 = $cek->row_array();	

		if (isset($cek1)) {
			$id_psikomotorik = $cek1['id_psikomotorik'];
			$data = array(
				'id_psikomotorik'	 	=> $this->input->post('id_psikomotorik'),
				'pendaftaran_id' 		=> $this->input->post('pendaftaran_id'),
				'tengkurap' 			=> $this->input->post('tengkurap'),
				'balik_badan'		 	=> $this->input->post('balik_badan'),
				'duduk' 				=> $this->input->post('duduk'),
				'merangkak' 			=> $this->input->post('merangkak'),
				'tersenyum' 			=> $this->input->post('tersenyum'),
				'tertawa'	 			=> $this->input->post('tertawa'),
				'mengulang_kata' 		=> $this->input->post('mengulang_kata'),
				'mengucap_mamapapa' 	=> $this->input->post('mengucap_mamapapa'),
				'meniru_kata' 			=> $this->input->post('meniru_kata'),
				'bicara_bermakna'	 	=> $this->input->post('bicara_bermakna'),
			);
			$this->session->set_flashdata('status', 'Berhasil update data Psikomotorik');
			$this->db->where('id_psikomotorik', $id_psikomotorik);
			$this->db->update('psikomotorik', $data);
			redirect($this->page->base_url());
		}
		else{
			$data = array(
				'id_psikomotorik'	 	=> $this->input->post('id_psikomotorik'),
				'pendaftaran_id' 		=> $this->input->post('pendaftaran_id'),
				'tengkurap' 			=> $this->input->post('tengkurap'),
				'balik_badan'		 	=> $this->input->post('balik_badan'),
				'duduk' 				=> $this->input->post('duduk'),
				'merangkak' 			=> $this->input->post('merangkak'),
				'tersenyum' 			=> $this->input->post('tersenyum'),
				'tertawa'	 			=> $this->input->post('tertawa'),
				'mengulang_kata' 		=> $this->input->post('mengulang_kata'),
				'mengucap_mamapapa' 	=> $this->input->post('mengucap_mamapapa'),
				'meniru_kata' 			=> $this->input->post('meniru_kata'),
				'bicara_bermakna'	 	=> $this->input->post('bicara_bermakna'),
			);
			$this->db->insert('psikomotorik', $data);
			echo $pendaftaran_id = $this->input->post('pendaftaran_id');
			$this->session->set_flashdata('pendaftaran_id', $pendaftaran_id);
			redirect(site_url('/ortu/kesehatan_keluarga/'));
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
	
	public function options_psikomotorik($id_psikomotorik){
		$psikomotorik = $this->db->order_by('psikomotorik')->get('id_psikomotorik');
		return options($psikomotorik, 'id_psikomotorik', $id_psikomotorik, 'id_psikomotorik');
	}
	
}

/* End of file Kb.php */
