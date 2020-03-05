<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kebortu extends CI_Model {

	public	$id_kebortu 			= '';
	public	$kebortu 			= '';
	
	public function get_kebortu(){
		$query = "
			SELECT *
			FROM kebortu
			ORDER BY id_kebortu ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_kebortu($id_kebortu){
		$datasrc = $this->db->get_where('kebortu', array('id_kebortu' => $id_kebortu));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kebortu.php */