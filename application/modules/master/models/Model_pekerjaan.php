<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pekerjaan extends CI_Model {

	public	$id_pekerjaan 			= '';
	public	$pekerjaan 			= '';
	
	public function get_pekerjaan(){
		$query = "
			SELECT *
			FROM pekerjaan
			ORDER BY id_pekerjaan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_pekerjaan($id_pekerjaan){
		$datasrc = $this->db->get_where('pekerjaan', array('id_pekerjaan' => $id_pekerjaan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_pekerjaan.php */