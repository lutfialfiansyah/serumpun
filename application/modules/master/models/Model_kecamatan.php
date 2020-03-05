<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kecamatan extends CI_Model {

	public	$id_kecamatan 			= '';
	public	$kecamatan 			= '';
	// public	$kabkot_id		= '';
	
	public function get_kecamatan(){
		$query = "
			SELECT 	kecamatan.*,
					kabkot.kabkot AS kabkot
			FROM kecamatan
			LEFT JOIN kabkot
				ON kecamatan.kabkot_id = kabkot.id_kabkot
			ORDER BY id_kecamatan ASC
		";
		return $this->db->query($query)->result();
	}

	
	public function by_id_kecamatan($id_kecamatan){
		$datasrc = $this->db->get_where('kecamatan', array('id_kecamatan' => $id_kecamatan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function show_kecamatan_options($id_kecamatan){
		$query = "
			SELECT 	kecamatan.id_kecamatan,
					kecamatan.kecamatan,
					kabkot.kabkot AS kabkot
			FROM kecamatan
			LEFT JOIN kabkot
				ON kecamatan.kabkot_id = kabkot.id_kabkot
			WHERE kecamatan.id_kecamatan = '{$id_kecamatan}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}
	
}
/* End of file Model_kecamatan.php */