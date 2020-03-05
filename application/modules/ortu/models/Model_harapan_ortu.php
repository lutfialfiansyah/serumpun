<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_harapan_ortu extends CI_Model {

	public	$id_harapan 			= '';
	public	$pendaftaran_id			= '';
	public	$ket_ortu 			= '';
	
	// public function get_kb(){
	// 	$query = " 
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_harapan($id_harapan){
		$datasrc = $this->db->get_where('harapan_ortu', array('id_harapan' => $id_harapan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('harapan_ortu', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kb.php */