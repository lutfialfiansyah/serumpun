<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_agama extends CI_Model {

	public	$id_agama 			= '';
	public	$agama 			= '';
	
	public function get_agama(){
		$query = "
			SELECT *
			FROM agama
			ORDER BY id_agama ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_agama($id_agama){
		$datasrc = $this->db->get_where('agama', array('id_agama' => $id_agama));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_agama.php */