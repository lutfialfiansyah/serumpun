<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_siswa_kelas extends CI_Model { 

	public $id_siswa					= '';
	public $kelas_id					= '';
	public $siswa_id 					= '';
	
	public function get_siswa_kelas(){
		$query = "
			SELECT 
				b.id_siswa_kelas AS id_siswa_kelas,
				a.nama_kelas AS nama_kelas,
				c.no_induk AS no_induk,
				d.nama_lengkap AS nama_lengkap_anak

			FROM kelas a 
			LEFT JOIN siswa_kelas b
			ON a.id_kelas = b.kelas_id
			LEFT JOIN siswa c
			ON b.no_induk = c.no_induk 
			LEFT JOIN biodata d
			ON d.nik = anak_id
			WHERE id_siswa_kelas != ''
			ORDER BY id_kelas ASC
		";
		return $this->db->query($query)->result();
	}
	public function by_id_siswa_kelas($id_siswa_kelas){
		$this->db->select('
			a.id_siswa_kelas AS id_siswa_kelas,
			a.kelas_id AS kelas_id,
			b.no_induk AS no_induk,
			c.id_pendaftaran AS id_pendaftaran,
			d.nama_lengkap AS nama_lengkap,
			d.nik AS id_anak
		');
	    $this->db->from('siswa_kelas a');
	    $this->db->join('siswa b', 'b.no_induk=a.no_induk');
	    $this->db->join('pendaftaran c', 'b.pendaftaran_id=c.id_pendaftaran', 'left');
	    $this->db->join('biodata d', 'b.anak_id=d.nik', 'left');
	    $this->db->where('id_siswa_kelas', $id_siswa_kelas);
	    $datasrc = $this->db->get();    
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	public function show_siswa_kelas_options($id_siswa_kelas){
		$query = "
			SELECT 
				b.id_siswa_kelas AS id_siswa_kelas,
				a.nama_kelas AS nama_kelas,
				c.no_induk AS no_induk,
				d.nama_lengkap AS nama_lengkap_anak

			FROM kelas a 
			LEFT JOIN siswa_kelas b
			ON a.id_kelas = b.kelas_id
			LEFT JOIN siswa c
			ON b.siswa_id = c.id_siswa 
			LEFT JOIN biodata d
			ON d.nik = anak_id
			ORDER BY id_kelas ASC
			
			WHERE a.id_siswa_kelas = '{$id_siswa_kelas}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}
}