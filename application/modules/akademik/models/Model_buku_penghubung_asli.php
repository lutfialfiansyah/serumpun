<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_buku_penghubung extends CI_Model {

	public $id_buku_penghubung	 	= '';
	public $no_induk 				= '';

	public $tgl_buku_penghubung 	= '';
	public $hal		 				= '';
	public $penilaian_id 			= '';
	public $penilaian 	 			= '';
	public $keterangan 				= '';
	public $kemandirian 			= '';
	public $informasi_guru 			= '';
	public $informasi_ortu 			= '';
	 
	public function get_buku_penghubung(){ 
		$query = "

			SELECT 	a.*,
					b.no_induk AS no_induk,
					c.*

			FROM buku_penghubung    AS a
			LEFT JOIN siswa 	    AS b
				ON a.no_induk       =  b.no_induk
			LEFT JOIN penilaian 	AS c
				ON a.penilaian_id   =  c.id_penilaian
			ORDER BY id_buku_penghubung ASC
		";
		return $this->db->query($query)->result();
	}
	
	// public function get_buku_penghubung_by_pendaftaran($no_induk){
	// 	$query = "
	// 		SELECT *
	// 		FROM buku_penghubung
	// 		WHERE no_induk = '{$no_induk}'
	// 		ORDER BY id_buku_penghubung ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }

	public function get_buku_penghubung_by_pendaftaran($no_induk){
		$query = "

			SELECT 	a.*,
					b.no_induk AS no_induk,
					c.*

			FROM buku_penghubung    AS a
			LEFT JOIN siswa 	    AS b
				ON a.no_induk       =  b.no_induk
			LEFT JOIN penilaian 	AS c
				ON a.penilaian_id   =  c.id_penilaian
			ORDER BY id_buku_penghubung ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_buku_penghubung($id_buku_penghubung){
		$datasrc = $this->db->get_where('buku_penghubung', array('id_buku_penghubung' => $id_buku_penghubung));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_buku_penghubung_options($id_buku_penghubung){
		$query = "
			SELECT a.id_buku_penghubung AS id_buku_penghubung,
				   a.tgl_buku_penghubung AS tgl_buku_penghubung,
				   a.hal AS hal,
				   a.penilaian_id S penilaian_id,				   
				   a.keterangan AS keterangan,
				   a.kemandirian AS kemandirian,
				   a.informasi_guru AS informasi_guru,
				   a.informasi_ortu AS informasi_ortu,

				   b.no_induk AS no_induk,

				   c.penilaian AS penilaian,
				   c.id_penilaian AS penilaian_id


			FROM buku_penghubung AS a
			LEFT JOIN siswa 	AS b
				ON a.no_induk = b.no_induk
			LEFT JOIN penilaian 	AS c
				ON a.penilaian_id = c.id_penilaian
			WHERE id_buku_penghubung = '{$id_buku_penghubung}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}