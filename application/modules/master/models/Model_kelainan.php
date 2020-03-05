<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kelainan extends CI_Model {

	public	$id_kelainan 			= '';
	public	$kelainan 			= '';
	
	public function get_kelainan(){
		$query = "
			SELECT *
			FROM kelainan
			ORDER BY id_kelainan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_kelainan($id_kelainan){
		$datasrc = $this->db->get_where('kelainan', array('id_kelainan' => $id_kelainan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kelainan.php */