<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_hubungan extends CI_Model {

	public	$id_hubungan 			= '';
	public	$hubungan 			= '';
	
	public function get_hubungan(){
		$query = "
			SELECT *
			FROM hubungan
			ORDER BY id_hubungan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_hubungan($id_hubungan){
		$datasrc = $this->db->get_where('hubungan', array('id_hubungan' => $id_hubungan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_hubungan.php */