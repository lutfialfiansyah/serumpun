<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kelurahan extends CI_Model {

	public	$id_kelurahan 			= '';
	public	$kelurahan 			= '';
	// public	$kecamatan_id		= '';
	
	public function get_kelurahan(){
		$query = "
			SELECT 	kelurahan.*,
					kecamatan.kecamatan AS kecamatan
			FROM kelurahan
			LEFT JOIN kecamatan
				ON kelurahan.kecamatan_id = kecamatan.id_kecamatan
			ORDER BY id_kelurahan ASC
		";
		return $this->db->query($query)->result();
	}

	
	public function by_id_kelurahan($id_kelurahan){
		$datasrc = $this->db->get_where('kelurahan', array('id_kelurahan' => $id_kelurahan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function show_kelurahan_options($id_kelurahan){
		$query = "
			SELECT 	kelurahan.id_kelurahan,
					kelurahan.kelurahan,
					kecamatan.kecamatan AS kecamatan
			FROM kelurahan
			LEFT JOIN kecamatan
				ON kelurahan.kecamatan_id = kecamatan.id_kecamatan
			WHERE kelurahan.id_kelurahan = '{$id_kelurahan}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}
	
}
/* End of file Model_kelurahan.php */