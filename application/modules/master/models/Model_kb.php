<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kb extends CI_Model {

	public	$id_kb 			= '';
	public	$kb 			= '';
	
	public function get_kb(){
		$query = "
			SELECT *
			FROM kb
			ORDER BY id_kb ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_kb($id_kb){
		$datasrc = $this->db->get_where('kb', array('id_kb' => $id_kb));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kb.php */