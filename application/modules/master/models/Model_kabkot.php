<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kabkot extends CI_Model {
 
	public	$id_kabkot 			= '';
	public	$kabkot 			= '';
	// public	$provinsi_id		= '';
	
	public function get_kabkot(){
		$query = "
			SELECT 	kabkot.*,
					provinsi.provinsi AS provinsi
			FROM kabkot
			LEFT JOIN provinsi
				ON kabkot.provinsi_id = provinsi.id_provinsi
			ORDER BY id_kabkot ASC
		";
		return $this->db->query($query)->result();
	}

	
	public function by_id_kabkot($id_kabkot){
		$datasrc = $this->db->get_where('kabkot', array('id_kabkot' => $id_kabkot));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function show_kabkot_options($id_kabkot){
		$query = "
			SELECT 	kabkot.id_kabkot,
					kabkot.kabkot,
					provinsi.provinsi AS provinsi
			FROM kabkot
			LEFT JOIN provinsi
				ON kabkot.provinsi_id = provinsi.id_provinsi
			WHERE kabkot.id_kabkot = '{$id_kabkot}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}
	
}
/* End of file Model_kabkot.php */