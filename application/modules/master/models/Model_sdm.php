<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_sdm extends CI_Model {

	public $id_sdm 				='';
	public $nama_lengkap 		='';
	public $alamat 				='';
	public $tgl_lahir 			='';
	public $jk 					='';
	public $pengalaman_kerja 	='';
	public $telp 				='';
	public $agama_id 				='';
	public $pendidikan_id 				='';
	
	public function get_sdm(){
		$query = "
			SELECT 
				a.id_sdm as id_sdm,
				a.nama_lengkap AS nama_lengkap,
				a.alamat AS alamat,
				a.tgl_lahir AS tgl_lahir,
				a.jk AS jk,
				a.pengalaman_kerja AS pengalaman_kerja,
				a.telp AS telp,

				b.agama AS agama,
				c.pendidikan AS pendidikan

			FROM sdm AS a
			LEFT JOIN agama AS b
				ON b.id_agama = a.agama_id
			LEFT JOIN pendidikan AS c
				ON c.id_pendidikan = a.pendidikan_id
			ORDER BY id_sdm ASC
		";
		return $this->db->query($query)->result();
	}

	public function sdm_by_id_pengguna($id_pengguna){

		$this->db->select('
			a.id_sdm AS id_sdm,
			a.nama_lengkap AS nama_lengkap,
			a.alamat AS alamat,
			a.tgl_lahir AS tgl_lahir,
			a.jk AS jk,
			a.agama_id AS agama_id,
			a.pendidikan_id AS pendidikan_id,
			a.pengalaman_kerja AS pengalaman_kerja,
			a.telp AS telp,
			a.id_pengguna AS id_pengguna,
			b.id AS id,
			b.id_pengguna_grup AS id_pengguna_grup
		');
	    $this->db->from('sdm a');
	    $this->db->join('pengguna b', 'a.id_pengguna = b.id', 'left');
	    $this->db->where('b.id', $id_pengguna);
	    $datasrc = $this->db->get();    
	    return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
		
		// $query = "
			// SELECT 
			// 	a.*,
			// 	b.*
			// FROM sdm as a 
			// LEFT JOIN pengguna b
			// ON a.id_pengguna = b.id 

			// WHERE 
			// 	b.id_pengguna_grup = '{$id_grup}'

			// ORDER BY id_sdm ASC
		// ";
		// return $this->db->query($query)->result();
	}
	

	public function sdm_by_id_grup($id_grup){

		$this->db->select('
			a.id_sdm AS id_sdm,
			a.nama_lengkap AS nama_lengkap,
			a.alamat AS alamat,
			a.tgl_lahir AS tgl_lahir,
			a.jk AS jk,
			a.agama_id AS agama_id,
			a.pendidikan_id AS pendidikan_id,
			a.pengalaman_kerja AS pengalaman_kerja,
			a.telp AS telp,
			a.id_pengguna AS id_pengguna,
			b.id_pengguna_grup AS id_pengguna_grup,
		');
	    $this->db->from('sdm a');
	    $this->db->join('pengguna b', 'a.id_pengguna = b.id', 'left');
	    $this->db->where('b.id_pengguna_grup', $id_grup);
	    $datasrc = $this->db->get();    
	    return $datasrc;
	}
	
	public function by_id_sdm($id_sdm){
		$datasrc = $this->db->get_where('sdm', array('id_sdm' => $id_sdm));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_sdm.php */