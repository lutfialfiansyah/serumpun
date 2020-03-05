<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kelas extends CI_Model {

	public $id_kelas 			= '';
	public $nama_kelas 			= '';
	public $tahun_ajaran 		= '';
	public $semester 			= '';
	public $tipe_kelas 			= '';
	public $koordinator 		= '';
	public $pembimbing1 		= '';
	public $pembimbing2 		= '';
	public $pembimbing3 		= '';
	
	public function get_kelas(){
		$query = "
			SELECT
				a.id_kelas AS id_kelas,
				a.nama_kelas AS nama_kelas,
				a.tahun_ajaran AS tahun_ajaran,
				a.semester AS semester,
				a.tipe_kelas AS tipe_kelas,
				
				b.nama_lengkap AS koordinator,
				c.nama_lengkap AS pembimbing1,
				d.nama_lengkap AS pembimbing2,
				e.nama_lengkap AS pembimbing3

			FROM kelas AS a
			LEFT JOIN sdm AS b
				ON b.id_sdm = a.koordinator
			LEFT JOIN sdm AS c
			 	ON c.id_sdm = a.pembimbing1
			LEFT JOIN sdm AS d
			 	ON d.id_sdm = a.pembimbing2
			 LEFT JOIN sdm AS e
			 	ON d.id_sdm = a.pembimbing3
		";
		return $this->db->query($query)->result();
	}

	
	public function by_id_kelas($id_kelas){
		$datasrc = $this->db->get_where('kelas', array('id_kelas' => $id_kelas));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function show_kelas_options($id_kelas){
		$query = "
			SELECT
				a.id_kelas AS id_kelas,
				a.nama_kelas AS nama_kelas,
				a.tahun_ajaran AS tahun_ajaran,
				a.semester AS semester,
				a.tipe_kelas AS tipe_kelas,
				
				b.nama_lengkap AS koordinator,
				c.nama_lengkap AS pembimbing1,
				d.nama_lengkap AS pembimbing2,
				e.nama_lengkap AS pembimbing3,

			FROM kelas AS a
			LEFT JOIN sdm AS b
				ON b.id_sdm = a.koordinator
			LEFT JOIN sdm AS c
			 	ON c.id_sdm = a.pembimbing1
			LEFT JOIN sdm AS d
			 	ON d.id_sdm = a.pembimbing2
			 LEFT JOIN sdm AS e
			 	ON d.id_sdm = a.pembimbing3
			WHERE kelas.id_kelas = '{$id_kelas}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}
	
}
/* End of file Model_kelas.php */