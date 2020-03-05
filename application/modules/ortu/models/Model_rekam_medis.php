<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_rekam_medis extends CI_Model {

	public $id_rekam_medis 		= '';
	public $pendaftaran_id 		= '';
	public $file_rekam_medis 	= '';
	public $nama_dokter			= '';
	public $nama_rs				= '';
	public $jabatan_dokter		= '';
	
	public function by_id_rekam_medis($id_rekam_medis){
		$datasrc = $this->db->get_where('rekam_medis', array('id_rekam_medis' => $id_rekam_medis));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('rekam_medis', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_rekam_medis_options($id_rekam_medis){
		$query = "
			SELECT *
			FROM rekam_medis AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			WHERE id_rekam_medis = '{$id_rekam_medis}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}