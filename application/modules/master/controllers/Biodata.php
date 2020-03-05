<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Biodata extends MX_Controller {
	 
	var $gallerypath;
	var $gallery_path_url;
	 
	public function __construct(){
		parent::__construct();
		
		$this->page->use_directory();
		$this->load->model('model_biodata');
		
		$this->gallerypath = realpath(APPPATH . '../foto/foto_biodata');
		$this->gallery_path_url = base_url().'foto/foto_biodata/';
	}

	public function index() {	
		$orang = $this->session->userdata('pengguna')->id;
		if($orang == 11){		
			$this->page->view('biodata_index', array(
			'add'			=> $this->page->base_url('/add'),
			'grid'			=> $this->model_biodata->get_biodata(),
			)); 
		}else{
			$pengguna = $this->session->userdata('pengguna')->id;			
			$this->page->view('biodata_index', array(
				'add'			=> $this->page->base_url('/add'),
				'grid'			=> $this->model_biodata->get_biodata_by_pengguna($pengguna),
			));
		}
	} 
	
	private function form($action = 'insert', $nik = ''){
		$this->page->view('biodata_form', array (
			'provinsi'		=> $this->model_biodata->provinsi(),
			'back'			=> $this->agent->referrer(),
			'action'		=> $this->page->base_url("/{$action}/{$nik}"),
			'biodata'		=> $this->model_biodata->by_nik($nik),
			'aksi'			=> $action,
		));
	}
	
	public function add(){
		$this->form();
	}
	
	public function edit($nik){
		$this->form('update', $nik);
	}
	
	public function insert(){


		$nik = $this->input->post('nik');

		$data = array (
			'nik' => $nik
		);

		$cek = $this->db->get_where('biodata', $data);
		$cek1 = $cek->row_array();
		
		if (isset($cek1)) {
			$this->session->set_flashdata('status_red', 'Pendaftaran gagal, biodata Anda telah terdaftar!');
			redirect($this->agent->referrer());
		}
		else{

			$userfile = $_FILES['userfile']['name'];
			$typefile = explode('.', $userfile);
			$filename = $this->input->post('nik');
			$filename = $filename.'.'.$typefile[1];

			if ($typefile[1] != 'jpg') {
				echo $typefile[1];
				$this->session->set_flashdata('status_red','Edit biodata gagal! Pastikan foto yang anda kirm berformat jpg.');
				redirect($this->agent->referrer());
			}

			// $konfigurasi = array('allowed_types' =>'jpg|jpeg|gif|png|bmp',
			$konfigurasi = array('allowed_types' =>'jpg',
								'upload_path' => $this->gallerypath,
								'file_name' => $this->input->post('nik'));

			$this->load->library('upload', $konfigurasi);
			$this->upload->do_upload();
			$datafile = $this->upload->data();
		
			$konfigurasi = array('source_image' => $datafile['full_path'],
								'new_image' => $this->gallerypath . '/thumbnails',
								'file_name' => $filename,
								'maintain_ration' => true,
								'width' => 110,
								'height' =>100);

			$this->load->library('image_lib', $konfigurasi);
			$this->image_lib->resize();

			$data = array(
				'nik' => $this->input->post('nik'),
				'nama_lengkap' => $this->input->post('nama_lengkap'),
				'nama_panggilan' => $this->input->post('nama_panggilan'),
				'tgl_lahir' => $this->input->post('tgl_lahir'),
				'jk' => $this->input->post('jk'),
				'goldarah_id' => $this->input->post('goldarah_id'),
				'agama_id' => $this->input->post('agama_id'),
				'telp' => $this->input->post('telp'),
				'email' => $this->input->post('email'),

				'foto'	=> $filename,

				'kelurahan_id' => $this->input->post('kelurahan_id'),
				'alamat' => $this->input->post('alamat'),
				'pendidikan_id' => $this->input->post('pendidikan_id'),
				'pekerjaan_id' => $this->input->post('pekerjaan_id'),
				'pengguna_id' => $this->input->post('pengguna_id'),
			);
			$this->db->insert('biodata', $data);
			redirect($this->page->base_url());
		}
		
	}
	
	public function update($nik){

		$userfile = $_FILES['userfile']['name'];
		$typefile = explode('.', $userfile);
		$filename = $this->input->post('nik');
		$filename = $filename.'.'.$typefile[1];

		if ($typefile[1] != 'jpg') {
			echo $typefile[1];
			$this->session->set_flashdata('status_red','Edit biodata gagal! Pastikan foto yang anda kirm berformat jpg.');
			redirect($this->agent->referrer());
		}
		
			if(!empty($userfile)){

				//$konfigurasi = array('allowed_types' =>'jpg|jpeg|gif|png|bmp',
				$konfigurasi = array('allowed_types' =>'jpg',
									'upload_path' => $this->gallerypath,
									'file_name' => $this->input->post('nik'));
								
				$this->load->library('upload', $konfigurasi);
				$this->upload->overwrite = true;
				$this->upload->do_upload();
				$datafile = $this->upload->data();
			
				$konfigurasi = array('source_image' => $datafile['full_path'],
									'new_image' => $this->gallerypath . '/thumbnails',
									'file_name' => $filename,
									'maintain_ration' => true,
									'width' => 110,
									'height' =>100);

				$this->load->library('image_lib', $konfigurasi);
				$this->image_lib->overwrite = true;
				$this->image_lib->resize();

				$data = array(
					'nama_lengkap' => $this->input->post('nama_lengkap'),
					'nama_panggilan' => $this->input->post('nama_panggilan'),
					'tgl_lahir' => $this->input->post('tgl_lahir'),
					'jk' => $this->input->post('jk'),
					'goldarah_id' => $this->input->post('goldarah_id'),
					'agama_id' => $this->input->post('agama_id'),
					'telp' => $this->input->post('telp'),
					'email' => $this->input->post('email'),

					'foto'	=> $filename,

					'kelurahan_id' => $this->input->post('kelurahan_id'),
					'alamat' => $this->input->post('alamat'),
					'pendidikan_id' => $this->input->post('pendidikan_id'),
					'pekerjaan_id' => $this->input->post('pekerjaan_id'),
					'pengguna_id' => $this->input->post('pengguna_id'),
				);
				$this->db->where('nik', $nik);
				$this->db->update('biodata', $data);
			} 
			else {		
				$data = array(
				'nama_lengkap' => $this->input->post('nama_lengkap'),
				'nama_panggilan' => $this->input->post('nama_panggilan'),
				'tgl_lahir' => $this->input->post('tgl_lahir'),
				'jk' => $this->input->post('jk'),
				'goldarah_id' => $this->input->post('goldarah_id'),
				'agama_id' => $this->input->post('agama_id'),
				'telp' => $this->input->post('telp'),
				'email' => $this->input->post('email'),

				'foto'	=> $filename,

				'kelurahan_id' => $this->input->post('kelurahan_id'),
				'alamat' => $this->input->post('alamat'),
				'pendidikan_id' => $this->input->post('pendidikan_id'),
				'pekerjaan_id' => $this->input->post('pekerjaan_id'),
				'pengguna_id' => $this->input->post('pengguna_id'),
				);		
				$this->db->where('nik', $nik); 
				$this->db->update('biodata', $data);	
			}

			$this->session->set_flashdata('status_green','Edit biodata berhasil');
			redirect($this->page->base_url());

	}

	public function delete($nik){
		$this->db->delete('biodata', array('nik' => $nik));
		redirect($this->agent->referrer());
	}
	
	public function options_biodata(){
		$biodata = $this->db->order_by('nama_lengkap')->get('biodata');
		return options($biodata, 'nik', NULL, 'nama_lengkap');
	}

	public function options_biodata_byPengguna($id){
		$this->db->where('pengguna_id',$id);
		$this->db->from('biodata');
		$biodata = $this->db->order_by('nama_lengkap')->get();
		echo options($biodata, 'nik', NULL , 'nama_lengkap');
	}


	function ambil_data(){
		$modul=$this->input->post('modul');
		$id=$this->input->post('id');

		if($modul=="kabupaten"){
			echo $this->model_biodata->kabupaten($id);
		}

		else if($modul=="kecamatan"){
			echo $this->model_biodata->kecamatan($id);

		}
		else if($modul=="kelurahan"){
			echo $this->model_biodata->kelurahan($id);
		}
	}

	// Ajax
	public function ajax_biodata_options(){
		$id_biodata = $this->input->post('id_biodata');
		$biodata = $this->model_biodata->show_biodata_options($id_biodata);
		echo $biodata->nik.'#'.$biodata->nama_lengkap.'#'.$biodata->tgl_lahir.'#'.$biodata->jk.'#'.$biodata->goldarah.'#'.$biodata->telp.'#'.$biodata->provinsi.' '.$biodata->kabkot.' '.$biodata->kecamatan.' '.$biodata->kelurahan.' '.$biodata->alamat.'#'.$biodata->foto;
	}
	
}

/* End of file Biodata.php */
