<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pemeriksa extends CI_Model {

	public	$id_pemeriksa 			= '';
	public	$pemeriksa 			= '';
	
	public function get_pemeriksa(){
		$query = "
			SELECT *
			FROM pemeriksa
			ORDER BY id_pemeriksa ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_pemeriksa($id_pemeriksa){
		$datasrc = $this->db->get_where('pemeriksa', array('id_pemeriksa' => $id_pemeriksa));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_pemeriksa.php */