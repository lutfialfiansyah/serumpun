<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_perubahan_fisik extends CI_Model {

	public $id_perubahan_fisik	 	= '';
	public $siswa_id 				= '';
	public $tgl_pengukuran			= '';
	public $berat_perbulan	 		= '';
	public $tinggi_perbulan	 		= '';
	
	public function get_perubahan_fisik(){
		$query = "
			SELECT *
			FROM perubahan_fisik
			ORDER BY id_perubahan_fisik ASC
		";
		return $this->db->query($query)->result();
	}

	public function get_perubahan_fisik_by_siswa($no_induk){
		$query = "
			SELECT *
			FROM perubahan_fisik
			WHERE siswa_id = '{$no_induk}'
		";
		return $this->db->query($query)->result();
	}

	
	public function by_id_perubahan_fisik($id_perubahan_fisik){
		$datasrc = $this->db->get_where('perubahan_fisik', array('id_perubahan_fisik' => $id_perubahan_fisik));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_perubahan_fisik_options($id_perubahan_fisik){
		$query = "
			SELECT a.id_perubahan_fisik AS id_perubahan_fisik,
				   a.tgl_pengukuran AS tgl_pengukuran,
				   a.berat_perbulan AS berat_perbulan,
				   a.tinggi_perbulan AS tinggi_perbulan,

				   b.id_siswa AS siswa_id,
				   b.nama_lengkap AS nama_lengkap


			FROM perubahan_fisik AS a
			LEFT JOIN siswa 	AS b
				ON a.siswa_id = b.id_siswa
			WHERE id_perubahan_fisik = '{$id_perubahan_fisik}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}