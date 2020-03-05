<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_tata_laksana_setelah_diagnosa extends CI_Model {

	public $id_tata_laksana_setelah_diagnosa		='';
	public $pendaftaran_id							='';
	// public $tata_laksana							='';
	// public $periode								='';
	public $data_tata_laksana_setelah_diagnosa 		='';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_tata_laksana_setelah_diagnosa($id_tata_laksana_setelah_diagnosa){
		$datasrc = $this->db->get_where('tata_laksana_setelah_diagnosa', array('id_tata_laksana_setelah_diagnosa' => $id_tata_laksana_setelah_diagnosa));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_tata_laksana_setelah_diagnosa_options($id_tata_laksana_setelah_diagnosa){
		$query = "
			SELECT 	a.id_tata_laksana_setelah_diagnosa 		AS id_tata_laksana_setelah_diagnosa,
					a.data_tata_laksana_setelah_diagnosa 	AS data_tata_laksana_setelah_diagnosa,
					

				   	b.id_pendaftaran AS id_pendaftaran,

			FROM tata_laksana_setelah_diagnosa AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran

			WHERE id_tata_laksana_setelah_diagnosa = '{$id_tata_laksana_setelah_diagnosa}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}