<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_penilaian extends CI_Model {

	public	$id_penilaian 		= '';
	public	$penilaian 			= '';
	
	public function get_penilaian(){
		$query = "
			SELECT *
			FROM penilaian
			ORDER BY id_penilaian ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_penilaian($id_penilaian){
		$datasrc = $this->db->get_where('penilaian', array('id_penilaian' => $id_penilaian));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_penilaian.php */