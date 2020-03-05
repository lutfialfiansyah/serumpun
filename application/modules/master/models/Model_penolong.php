<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_penolong extends CI_Model {

	public	$id_penolong 			= '';
	public	$penolong 			= '';
	
	public function get_penolong(){
		$query = "
			SELECT *
			FROM penolong
			ORDER BY id_penolong ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_penolong($id_penolong){
		$datasrc = $this->db->get_where('penolong', array('id_penolong' => $id_penolong));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_penolong.php */