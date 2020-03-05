<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_observasi_kepsek extends CI_Model {

	public	$id_kurikulum 			= '';
	public	$kurikulum 				= '';

	public function get_selain_diterima(){

		$query = " 
			SELECT 
				a.id_pendaftaran AS id_pendaftaran,
				 
				b.nik AS nik_anak,
				b.nama_lengkap AS nama_lengkap_anak,
				b.jk AS jk_anak,
				b.foto AS foto_anak,
				a.anak_ke AS anak_ke,
				a.jum_saudara AS jum_saudara,

				c.nik AS nik_ayah,
				c.nama_lengkap AS nama_lengkap_ayah,
				c.jk AS jk_ayah,
				c.foto AS foto_ayah,

				d.nik AS nik_ibu,
				d.nama_lengkap AS nama_lengkap_ibu,
				d.jk AS jk_ibu,
				d.foto AS foto_ibu,
				a.status_anak AS status_anak,
				a.status_ortuwali AS status_ortuwali 
			FROM 
				`pendaftaran` AS a
			    LEFT JOIN `biodata` AS b 
			    ON a.anak_id = b.nik
			    LEFT JOIN `biodata` AS c 
			    ON a.ayah_id = c.nik
			    LEFT JOIN `biodata` AS d 
			    ON a.ibu_id = d.nik
			    LEFT JOIN `observasi_tenaga_ahli` AS r
			    ON a.id_pendaftaran = r.pendaftaran_id
			WHERE 
				a.status_anak != 'Diterima' AND
			    r.data_observasi_tenaga_ahli != ''
			GROUP BY a.id_pendaftaran
		";

		return $this->db->query($query)->result();
	}
	
	public function get_observasi_kepsek(){
		$query = "
			SELECT 
				a.id_observasi_kepsek as id_observasi_kepsek,
				a.no_induk as no_induk,
				a.kurikulum_id as kurikulum_id,
				e.kompetensi_inti as kompetensi_inti,
				e.kompetensi_dasar as kompetensi_dasar,
				a.kemampuan_saat_observasi as kemampuan_saat_observasi,
				a.program as program,
				a.tujuan as tujuan,
				a.ket as ket,
				a.kkm as kkm,
				d.nama_lengkap as nama_anak
			FROM observasi_kepsek a 
			LEFT JOIN siswa b
			ON b.no_induk = a.no_induk
			LEFT JOIN pendaftaran c 
			ON b.pendaftaran_id = c.id_pendaftaran
			LEFT JOIN biodata d
			ON c.anak_id = d.nik
			LEFT JOIN kurikulum e
			ON a.kurikulum_id = e.id_kurikulum
			ORDER BY id_observasi_kepsek ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function get_observasi_kepsek_by($no_induk){
		$query = "
			SELECT 
				a.id_observasi_kepsek as id_observasi_kepsek,
				a.no_induk as no_induk,
				a.kurikulum_id as kurikulum_id,
				e.kompetensi_inti as kompetensi_inti,
				e.kompetensi_dasar as kompetensi_dasar,
				a.kemampuan_saat_observasi as kemampuan_saat_observasi,
				a.program as program,
				a.tujuan as tujuan,
				a.ket as ket,
				a.kkm as kkm,
				d.nama_lengkap as nama_anak
			FROM observasi_kepsek a 
			LEFT JOIN siswa b
			ON b.no_induk = a.no_induk
			LEFT JOIN pendaftaran c 
			ON b.pendaftaran_id = c.id_pendaftaran
			LEFT JOIN biodata d
			ON c.anak_id = d.nik
			LEFT JOIN kurikulum e
			ON a.kurikulum_id = e.id_kurikulum
			WHERE a.no_induk = '{$no_induk}'
			ORDER BY id_observasi_kepsek ASC
		";
		return $this->db->query($query)->result();
	}

 
	
	public function by_id_observasi_kepsek($id_observasi_kepsek){
		$this->db->select('
				a.id_observasi_kepsek as id_observasi_kepsek,
				a.no_induk as no_induk,
				a.kurikulum_id as kurikulum_id,
				e.kompetensi_inti as kompetensi_inti,
				e.kompetensi_dasar as kompetensi_dasar,
				a.kemampuan_saat_observasi as kemampuan_saat_observasi,
				a.program as program,
				a.tujuan as tujuan,
				a.ket as ket,
				a.kkm as kkm,
				d.nama_lengkap as nama_anak
		');
	    $this->db->from('observasi_kepsek a');
	    $this->db->join('siswa b', 'a.no_induk=b.no_induk', 'left');
	    $this->db->join('pendaftaran c', 'b.pendaftaran_id=c.id_pendaftaran', 'left');
	    $this->db->join('biodata d', 'c.anak_id=d.nik', 'left');
	    $this->db->join('kurikulum e', 'a.kurikulum_id=e.id_kurikulum', 'left');
	    $this->db->where('a.id_observasi_kepsek', $id_observasi_kepsek);
	    $datasrc = $this->db->get();  
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_kb.php */