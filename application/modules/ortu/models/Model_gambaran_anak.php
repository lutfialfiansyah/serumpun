<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_gambaran_anak extends CI_Model {

	public	$id_gambaran_anak 			= '';
	public	$gambaran_anak 			= '';
	public	$pendaftaran_id			= '';
	public	$ket_anak 			= '';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_gambaran_anak($id_gambaran_anak){
		$datasrc = $this->db->get_where('gambaran_anak', array('id_gambaran_anak' => $id_gambaran_anak));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('gambaran_anak', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kb.php */