<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kesehatan_keluarga extends CI_Model {

	public $id_kesehatan_keluarga	 		= '';

	public $pendaftaran_id 					= '';

	public $data_kesehatan_keluarga ='';

	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_kesehatan_keluarga($id_kesehatan_keluarga){
		$datasrc = $this->db->get_where('kesehatan_keluarga', array('id_kesehatan_keluarga' => $id_kesehatan_keluarga));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('kesehatan_keluarga', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_kesehatan_keluarga_options($id_kesehatan_keluarga){
		$query = "
			SELECT a.id_kesehatan_keluarga AS id_kesehatan_keluarga,

				   b.id_pendaftaran AS id_pendaftaran,
				   a.data_kesehatan_keluarga AS data_kesehatan_keluarga,


			FROM kesehatan_keluarga AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran

			WHERE a.id_kesehatan_keluarga = '{$id_kesehatan_keluarga}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}