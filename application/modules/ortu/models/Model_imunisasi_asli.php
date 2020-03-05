<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_imunisasi extends CI_Model {

	public $id_imunisasi	 		= '';
	public $pendaftaran_id 			= '';
	public $data_imunisasi 			= '';
	// public $imunisasi	 			= '';
	// public $usia_imunisasi	 		= '';

	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_imunisasi($id_imunisasi){
		$datasrc = $this->db->get_where('imunisasi', array('id_imunisasi' => $id_imunisasi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('imunisasi', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_imunisasi_options($id_imunisasi){
		$query = "
			SELECT a.id_imunisasi AS id_imunisasi,

				   b.id_pendaftaran AS id_pendaftaran,
				   b.data_imunisasi AS data_imunisasi,

			FROM imunisasi AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			WHERE a.id_imunisasi = '{$id_imunisasi}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}