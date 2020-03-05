<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_terapi extends CI_Model {

	public	$id_terapi 			= '';
	public	$terapi 			= '';
	
	public function get_terapi(){
		$query = "
			SELECT *
			FROM terapi
			ORDER BY id_terapi ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_terapi($id_terapi){
		$datasrc = $this->db->get_where('terapi', array('id_terapi' => $id_terapi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_terapi.php */