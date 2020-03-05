<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_goldarah extends CI_Model {

	public	$id_goldarah 			= '';
	public	$goldarah 			= '';
	
	public function get_goldarah(){
		$query = "
			SELECT *
			FROM goldarah
			ORDER BY id_goldarah ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_goldarah($id_goldarah){
		$datasrc = $this->db->get_where('goldarah', array('id_goldarah' => $id_goldarah));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_goldarah.php */