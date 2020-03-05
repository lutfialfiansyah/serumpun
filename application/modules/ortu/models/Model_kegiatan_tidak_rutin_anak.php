<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kegiatan_tidak_rutin_anak extends CI_Model {

	public $id_kegiatan_tidak_rutin_anak	='';
	public $pendaftaran_id					='';
	public $data_kegiatan_tidak_rutin_anak 	='';
	public $pengasuh 						='';
	public $jum_pengasuh 					='';
	public $jum_art 						='';
	
	
	public function by_id_kegiatan_tidak_rutin_anak($id_kegiatan_tidak_rutin_anak){
		$datasrc = $this->db->get_where('kegiatan_tidak_rutin_anak', array('id_kegiatan_tidak_rutin_anak' => $id_kegiatan_tidak_rutin_anak));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this; 
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('kegiatan_tidak_rutin_anak', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_biodata_options($id_kegiatan_tidak_rutin_anak){
		$query = "
			SELECT 	a.id_kegiatan_tidak_rutin_anak AS id_kegiatan_tidak_rutin_anak,
					a.pendaftaran_id AS pendaftaran_id,
					a.data_kegiatan_tidak_rutin_anak  	AS data_kegiatan_tidak_rutin_anak,
					a.pengasuh  	AS pengasuh,
					a.jum_pengasuh  AS jum_pengasuh,
					a.jum_art  		AS jum_art,
					
				   	b.id_pendaftaran AS id_pendaftaran

			FROM kegiatan_tidak_rutin_anak AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran

			WHERE nik = '{$id_kegiatan_tidak_rutin_anak}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}