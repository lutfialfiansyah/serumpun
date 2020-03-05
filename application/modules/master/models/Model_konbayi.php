<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_konbayi extends CI_Model {

	public	$id_konbayi 			= '';
	public	$konbayi 			= '';
	
	public function get_konbayi(){
		$query = "
			SELECT *
			FROM konbayi
			ORDER BY id_konbayi ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_konbayi($id_konbayi){
		$datasrc = $this->db->get_where('konbayi', array('id_konbayi' => $id_konbayi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_konbayi.php */