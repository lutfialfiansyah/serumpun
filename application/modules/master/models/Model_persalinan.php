<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_persalinan extends CI_Model {

	public	$id_persalinan 			= '';
	public	$persalinan 			= '';
	
	public function get_persalinan(){
		$query = "
			SELECT *
			FROM persalinan
			ORDER BY id_persalinan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_persalinan($id_persalinan){
		$datasrc = $this->db->get_where('persalinan', array('id_persalinan' => $id_persalinan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_persalinan.php */