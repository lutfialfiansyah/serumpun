<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kurikulum extends CI_Model {

	public	$id_kurikulum 			= '';
	public	$kurikulum 				= '';
	
	public function get_kurikulum(){
		$query = "
			SELECT *
			FROM kurikulum
			ORDER BY id_kurikulum ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_kurikulum($id_kurikulum){
		$datasrc = $this->db->get_where('kurikulum', array('id_kurikulum' => $id_kurikulum));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kb.php */