<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_imuni extends CI_Model {

	public	$id_imuni 			= '';
	public	$imuni 				= '';
	
	public function get_imuni(){
		$query = "
			SELECT *
			FROM imuni
			ORDER BY id_imuni ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_imuni($id_imuni){
		$datasrc = $this->db->get_where('imuni', array('id_imuni' => $id_imuni));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_imuni.php */