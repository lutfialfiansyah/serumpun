<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_siswa extends CI_Model {

	public $id_siswa	 		= '';
	public $pendaftaran_id 		= '';
	public $anak_id 			= '';
	public $no_induk		 	= '';

	
	public function get_siswa(){
		$query = "
		SELECT 
				   a.id_siswa AS id_siswa,
				   a.no_induk AS no_induk,
				   a.anak_id AS anak_id, 
				   b.id_pendaftaran AS id_pendaftaran,
				   c.nama_lengkap AS nama_lengkap

			FROM siswa AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN biodata 	AS c
				ON a.anak_id = c.nik
			ORDER BY a.id_siswa
		";
		$query = $this->db->query($query)->result();
		return $query;
	}

	
	public function by_id_siswa($id_siswa){
		$this->db->select('
				   a.id_siswa AS id_siswa,
				   a.no_induk AS no_induk,
				   b.id_pendaftaran AS id_pendaftaran,
				   c.nama_lengkap AS nama_lengkap,
				   c.nik AS id_anak
		');
	    $this->db->from('siswa a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'a.anak_id=c.nik', 'left');
	    $datasrc = $this->db->get();    
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_no_induk($no_induk) {
		$this->db->select('
				   a.id_siswa AS id_siswa,
				   a.no_induk AS no_induk,
				   b.id_pendaftaran AS id_pendaftaran,
				   c.nama_lengkap AS nama_lengkap,
				   c.nik AS id_anak
		');
	    $this->db->from('siswa a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'a.anak_id=c.nik', 'left');
	    $this->db->where('no_induk', $no_induk);
	    $datasrc = $this->db->get();    
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('siswa', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_siswa_options($id_siswa){
		$query = "
			SELECT a.id_siswa AS id_siswa,
				   a.no_induk AS no_induk,
				 

				   b.id_pendaftaran AS id_pendaftaran,

				   c.id_anak AS id_anak,
				

			FROM siswa AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN biodata 	AS c
				ON a.anak_id = c.id_anak
		
			WHERE nik = '{$id_siswa}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}