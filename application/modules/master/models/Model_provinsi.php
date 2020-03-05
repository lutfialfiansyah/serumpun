<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_provinsi extends CI_Model {

	public	$id_provinsi 			= '';
	public	$provinsi 			= '';
	
	public function get_provinsi(){
		$query = "
			SELECT *
			FROM provinsi
			ORDER BY id_provinsi ASC 
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_provinsi($id_provinsi){
		$datasrc = $this->db->get_where('provinsi', array('id_provinsi' => $id_provinsi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_provinsi.php */