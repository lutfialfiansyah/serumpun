<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_laporan_kegiatan extends CI_Model {

	public $id_laporan_kegiatan	 	= '';
	public $no_induk 			= '';
	public $tgl_kegiatan 			= '';
	public $kegiatan		 		= '';
	public $deskripsi 				= '';
	public $kategori 				= '';

	 
	public function get_laporan_kegiatan(){ 
		$query = "
			SELECT *
			FROM laporan_kegiatan
			ORDER BY id_laporan_kegiatan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function get_laporan_kegiatan_by_pendaftaran($no_induk){
		$query = "
			SELECT *
			FROM laporan_kegiatan
			WHERE no_induk = '{$no_induk}'
			ORDER BY id_laporan_kegiatan ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_laporan_kegiatan($id_laporan_kegiatan){
		$datasrc = $this->db->get_where('laporan_kegiatan', array('id_laporan_kegiatan' => $id_laporan_kegiatan));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_laporan_kegiatan_options($id_laporan_kegiatan){
		$query = "
			SELECT a.id_laporan_kegiatan AS id_laporan_kegiatan,
				   a.tgl_kegiatan AS tgl_kegiatan,
				   a.balik_badan AS balik_badan,
				   a.kegiatan AS kegiatan,
				   a.deskripsi AS deskripsi,
				   a.ketegori AS ketegori,

				   b.no_induk AS no_induk


			FROM laporan_kegiatan AS a
			LEFT JOIN siswa 	AS b
				ON a.no_induk = b.no_induk
			WHERE id_laporan_kegiatan = '{$id_laporan_kegiatan}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}