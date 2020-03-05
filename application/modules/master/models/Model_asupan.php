<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_asupan extends CI_Model {

	public	$id_asupan 			= '';
	public	$asupan 			= '';
	
	public function get_asupan(){
		$query = "
			SELECT *
			FROM asupan
			ORDER BY id_asupan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_asupan($id_asupan){
		$datasrc = $this->db->get_where('asupan', array('id_asupan' => $id_asupan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_asupan.php */