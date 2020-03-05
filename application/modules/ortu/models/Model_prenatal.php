<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_prenatal extends CI_Model {

	public $id_prenatal	 		= '';
	public $pendaftaran_id 		= '';
	public $kehamilan 			= '';
	public $periksa_kehamilan 	= '';
	public $pemeriksa_id 		= '';
	public $kebortu_id 			= '';
	public $penyakit_ibu 		= '';
	public $penyakit_ayah 		= '';
	public $kb_id 				= '';
	public $psikologis_ibu 		= '';
	public $pemeriksa 			= '';
	public $kebortu				= '';
	public $kb 					= '';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_prenatal($id_prenatal){
		$datasrc = $this->db->get_where('prenatal', array('id_prenatal' => $id_prenatal));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('prenatal', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_biodata_options($id_prenatal){
		$query = "
			SELECT a.id_prenatal AS id_prenatal,
				   a.kehamilan AS kehamilan,
				   a.periksa_kehamilan AS periksa_kehamilan,
				   a.penyakit_ibu AS penyakit_ibu,
				   a.penyakit_ayah AS penyakit_ayah,
				   a.psikologis_ibu AS psikologis_ibu,

				   b.id_pendaftaran AS id_pendaftaran,

				   c.id_pemeriksa AS id_pemeriksa,
				   c.pemeriksa AS pemeriksa,

				   d.id_kebortu AS id_kebortu,
				   d.kebortu AS kebortu,

				   e.id_kb AS id_kb,
				   e.kb AS kb

			FROM prenatal AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN pemeriksa 	AS c
				ON a.pemeriksa_id = c.id_pemeriksa
			LEFT JOIN kebortu 		AS d
				ON a.kebortu_id = d.id_kebortu
			LEFT JOIN kb 			AS e 
				ON a.kb_id = e.id_kb
			WHERE nik = '{$id_prenatal}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}