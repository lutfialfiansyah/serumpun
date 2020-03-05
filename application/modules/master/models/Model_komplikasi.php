<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_komplikasi extends CI_Model {

	public	$id_komplikasi 			= '';
	public	$komplikasi 			= '';
	
	public function get_komplikasi(){
		$query = "
			SELECT *
			FROM komplikasi
			ORDER BY id_komplikasi ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_komplikasi($id_komplikasi){
		$datasrc = $this->db->get_where('komplikasi', array('id_komplikasi' => $id_komplikasi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_komplikasi.php */