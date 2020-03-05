<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pendaftaran extends CI_Model {

	public	$id_pendaftaran 		= '';
	public	$nik_anak				= '';
	public	$nama_lengkap_anak		= '';
	public	$anak_ke				= '';
	public	$jum_saudara  			= ''; 
	public	$nik_ayah				= ''; 
	public	$nama_lengkap_ayah 		= '';
	public	$nik_ibu  				= '';
	public	$nama_lengkap_ibu_id  	= '';
	public  $status_ortuwali		= '';
	
	public function get_pendaftaran(){
		$query = "
			SELECT
				a.id_pendaftaran AS id_pendaftaran,
				a.tgl_pendaftaran AS tgl_pendaftaran,
				
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


			FROM pendaftaran a
			LEFT JOIN biodata b
				ON b.nik = a.anak_id
			LEFT JOIN biodata c
			 	ON c.nik = a.ayah_id
			LEFT JOIN biodata d
			 	ON d.nik = a.ibu_id

		";
		return $this->db->query($query)->result();
	}
	
	public function get_pendaftaran_by_pengguna($pengguna_id){
		$query = "
			SELECT
				a.id_pendaftaran AS id_pendaftaran,
				a.tgl_pendaftaran AS tgl_pendaftaran,
				
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


			FROM pendaftaran a
			LEFT JOIN biodata b
				ON b.nik = a.anak_id
			LEFT JOIN biodata c
			 	ON c.nik = a.ayah_id
			LEFT JOIN biodata d
			 	ON d.nik = a.ibu_id

			WHERE c.pengguna_id = '{$pengguna_id}' OR  d.pengguna_id = '{$pengguna_id}'
		";

		return $this->db->query($query)->result();
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$this->db->select('
				a.id_pendaftaran id_pendaftaran, 
				b.nik nik_anak, 
				b.nama_lengkap nama_lengkap_anak,
				b.tgl_lahir tgl_lahir_anak,
				b.jk jk_anak,
				e.goldarah goldarah_anak,
				b.foto foto_anak,
				a.anak_ke anak_ke,
				a.jum_saudara jum_saudara,

				c.nik nik_ayah,
				c.nama_lengkap nama_lengkap_ayah,
				c.telp kontak_ayah,
                f.kelurahan kelurahan_ayah,
                g.kecamatan kecamatan_ayah,
                h.kabkot kabkot_ayah,
                i.provinsi provinsi_ayah,
				c.alamat alamat_ayah,

				d.nik nik_ibu,
				d.nama_lengkap nama_lengkap_ibu,
                d.telp kontak_ibu,
                j.kelurahan kelurahan_ibu,
                k.kecamatan kecamatan_ibu,
                l.kabkot kabkot_ibu,
                m.provinsi provinsi_ibu,
                d.alamat alamat_ibu,

				n.file_rekam_medis AS rekam_medis,
                
				a.status_anak status_anak,
				a.status_ortuwali status_ortuwali
		');
	    $this->db->from('pendaftaran a');
	    $this->db->join('biodata b', 'a.anak_id=b.nik', 'left');
	    $this->db->join('biodata c', 'a.ayah_id=c.nik', 'left');
	    $this->db->join('biodata d', 'a.ibu_id=d.nik', 'left');
	    $this->db->join('goldarah e', 'b.goldarah_id=e.id_goldarah', 'left');
	    $this->db->join('kelurahan f', 'c.kelurahan_id=f.id_kelurahan', 'left');
	    $this->db->join('kecamatan g', 'f.kecamatan_id=g.id_kecamatan', 'left');
	    $this->db->join('kabkot h', 'g.kabkot_id=h.id_kabkot', 'left');
	    $this->db->join('provinsi i', 'h.provinsi_id=i.id_provinsi', 'left');
	    $this->db->join('kelurahan j', 'd.kelurahan_id=j.id_kelurahan', 'left');
	    $this->db->join('kecamatan k', 'j.kecamatan_id=k.id_kecamatan', 'left');
	    $this->db->join('kabkot l', 'k.kabkot_id=l.id_kabkot', 'left');
	    $this->db->join('provinsi m', 'l.provinsi_id=m.id_provinsi', 'left');
	    $this->db->join('rekam_medis n', 'a.id_pendaftaran=n.pendaftaran_id', 'left');
	    $this->db->where('a.id_pendaftaran', $id_pendaftaran);
	    $datasrc = $this->db->get();    
	    return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_pendaftaran.php */
/* Location: ./application/modules/master_data/models/Model_pendaftaran.php */