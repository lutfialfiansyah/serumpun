<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pendidikan extends CI_Model {

	public	$id_pendidikan 			= '';
	public	$pendidikan 			= '';
	
	public function get_pendidikan(){
		$query = "
			SELECT *
			FROM pendidikan
			ORDER BY id_pendidikan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_pendidikan($id_pendidikan){
		$datasrc = $this->db->get_where('pendidikan', array('id_pendidikan' => $id_pendidikan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_pendidikan.php */