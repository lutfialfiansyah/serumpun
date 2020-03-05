<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kartu_keluarga extends CI_Model {

	public $id_kartu_keluarga 	= '';
	public $pendaftaran_id 		= '';
	public $file_kartu_keluarga = '';
	public $no_kk				= '';
	
	public function by_id_kartu_keluarga($id_kartu_keluarga){
		$datasrc = $this->db->get_where('kartu_keluarga', array('id_kartu_keluarga' => $id_kartu_keluarga));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('kartu_keluarga', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_kartu_keluarga_options($id_kartu_keluarga){
		$query = "
			SELECT *
			FROM kartu_keluarga AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			WHERE id_kartu_keluarga = '{$id_kartu_keluarga}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}