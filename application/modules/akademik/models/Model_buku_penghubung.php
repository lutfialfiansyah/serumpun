<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_buku_penghubung extends CI_Model {

	public $id_buku_penghubung	 	= '';
	public $no_induk 				= '';

	public $tgl_buku_penghubung 	= '';
	public $data_buku_penghubung	= '';
	public $kemandirian 			= '';
	public $informasi_guru 			= '';
	public $informasi_ortu 			= '';
	
	
	public function by_id_buku_penghubung($id_buku_penghubung){
		$datasrc = $this->db->get_where('buku_penghubung', array('id_buku_penghubung' => $id_buku_penghubung));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this; 
	}
	
	public function by_no_induk($no_induk){
		$datasrc = $this->db->get_where('buku_penghubung', array('no_induk' => $no_induk));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function get_buku_penghubung_by_pendaftaran($no_induk){
		$query = "

			SELECT 	a.*,
					b.no_induk AS no_induk

			FROM buku_penghubung    AS a
			LEFT JOIN siswa 	    AS b
				ON a.no_induk       =  b.no_induk
			ORDER BY id_buku_penghubung ASC
		";
		return $this->db->query($query)->result();
	}

}