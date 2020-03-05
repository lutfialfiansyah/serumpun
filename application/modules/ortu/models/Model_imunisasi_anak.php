<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_imunisasi_anak extends CI_Model {

	public $id_imunisasi		= '';
	public $pendaftaran_id 		= '';
	public $jenis_id 			= '';
	public $usia_imunisasi	 	= '';

	public function by_id_imunisasi($id_imunisasi){
		$datasrc = $this->db->get_where('imunisasi', array('id_imunisasi' => $id_imunisasi));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	} 

	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('imunisasi', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	} 

	public function show_imunisasi_options($id_imunisasi){
		$query = "
			SELECT a.id_imunisasi AS id_imunisasi,
				   a.pendaftaran_id AS pendaftaran_id,
				   a.jenis_id AS jenis_id,
				   c.imunisasi AS imunisasi,
				   a.usia_imunisasi AS usia_imunisasi,

			FROM imunisasi AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN imunisasi 	AS c
				ON a.jenis_id = c.id_imunisasi
			WHERE a.id_imunisasi = '{$id_imunisasi}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}