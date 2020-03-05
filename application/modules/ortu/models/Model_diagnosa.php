<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_diagnosa extends CI_Model {

	public $id_diagnosa						='';
	public $pendaftaran_id					='';
	// public $keadaan							='';
	// public $tahun							='';
	// public $tindakan 						='';
	public $data_diagnosa 						='';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_diagnosa($id_diagnosa){
		$datasrc = $this->db->get_where('diagnosa', array('id_diagnosa' => $id_diagnosa));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('diagnosa', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_diagnosa_options($id_diagnosa){
		$query = "
			SELECT 	a.id_diagnosa 		AS id_diagnosa,
					a.data_diagnosa	  	AS data_diagnosa,

				   	b.id_pendaftaran AS id_pendaftaran,

			FROM diagnosa AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran

			WHERE id_diagnosa = '{$id_diagnosa}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}