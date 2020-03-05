<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_penyakit extends CI_Model {

	public	$id_penyakit 			= '';
	public	$penyakit 			= '';
	
	public function get_penyakit(){
		$query = "
			SELECT *
			FROM penyakit
			ORDER BY id_penyakit ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_penyakit($id_penyakit){
		$datasrc = $this->db->get_where('penyakit', array('id_penyakit' => $id_penyakit));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_penyakit.php */