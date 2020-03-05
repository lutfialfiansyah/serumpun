<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_imunisasi extends CI_Model {
 
	public	$id_imunisasi 			= '';
	public	$imunisasi 			= '';
	
	public function get_imunisasi(){
		$query = "
			SELECT *
			FROM imunisasi
			ORDER BY id_imunisasi ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_imunisasi($id_imunisasi){
		$datasrc = $this->db->get_where('imunisasi', array('id_imunisasi' => $id_imunisasi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_imunisasi.php */