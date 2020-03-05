<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_observasi_tenaga_ahli extends CI_Model { 

	public $id_observasi_tenaga_ahli	= '';
	public $nama_lengkap_anak			= '';
	public $pendaftaran_id 				= '';
	public $sdm_id						= '';
	public $usia_anak				 	= '';
	public $tgl_observasi		 		= '';
	public $tgl_laporan_observasi 		= '';
	public $judul_laporan_observasi 	= ''; 
	public $data_observasi_tenaga_ahli 		= '';


	
	public function get_observasi_tenaga_ahli(){
		$query = "
			SELECT 
				a.id_observasi_tenaga_ahli as id_observasi_tenaga_ahli,
				a.pendaftaran_id as pendaftaran_id,
				c.nik as nik_anak,
				c.nama_lengkap as nama_lengkap_anak,
				d.nama_lengkap as observer,
				d.id_sdm as sdm_id,
				a.usia_anak as usia_anak,
				a.tgl_observasi as tgl_observasi,
				a.tgl_laporan_observasi as tgl_laporan_observasi,
				a.judul_laporan_observasi as judul_laporan_observasi,
				a.data_observasi_tenaga_ahli as data_observasi_tenaga_ahli

			FROM observasi_tenaga_ahli as a
			LEFT JOIN pendaftaran as b
			ON b.id_pendaftaran = a.pendaftaran_id
			LEFT JOIN biodata as c
			ON c.nik = b.anak_id
			LEFT JOIN sdm as d
			ON d.id_sdm = a.sdm_id 

			ORDER BY id_observasi_tenaga_ahli ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function observasi_by_id_pengguna($id_pengguna){
		$query = "
			SELECT 
				a.id_observasi_tenaga_ahli as id_observasi_tenaga_ahli,
				a.pendaftaran_id as pendaftaran_id,
				c.nik as nik_anak,
				c.nama_lengkap as nama_lengkap_anak,
				d.nama_lengkap as observer,
				d.id_sdm as sdm_id,
				a.usia_anak as usia_anak,
				a.tgl_observasi as tgl_observasi,
				a.tgl_laporan_observasi as tgl_laporan_observasi,
				a.judul_laporan_observasi as judul_laporan_observasi,
				a.data_observasi_tenaga_ahli as data_observasi_tenaga_ahli

			FROM observasi_tenaga_ahli as a
			LEFT JOIN pendaftaran as b
			ON b.id_pendaftaran = a.pendaftaran_id
			LEFT JOIN biodata as c
			ON c.nik = b.anak_id
			LEFT JOIN sdm as d
			ON d.id_sdm = a.sdm_id 

			WHERE 
				d.id_pengguna = '{$id_pengguna}' AND 
				a.data_observasi_tenaga_ahli is null

			ORDER BY id_observasi_tenaga_ahli ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function histori_by_id_pengguna($id_pengguna){
		$query = "
			SELECT 
				a.id_observasi_tenaga_ahli as id_observasi_tenaga_ahli,
				a.pendaftaran_id as pendaftaran_id,
				c.nik as nik_anak,
				c.nama_lengkap as nama_lengkap_anak,
				d.nama_lengkap as observer,
				d.id_sdm as sdm_id,
				a.usia_anak as usia_anak,
				a.tgl_observasi as tgl_observasi,
				a.tgl_laporan_observasi as tgl_laporan_observasi,
				a.judul_laporan_observasi as judul_laporan_observasi,
				a.data_observasi_tenaga_ahli as data_observasi_tenaga_ahli

			FROM observasi_tenaga_ahli as a
			LEFT JOIN pendaftaran as b
			ON b.id_pendaftaran = a.pendaftaran_id
			LEFT JOIN biodata as c
			ON c.nik = b.anak_id
			LEFT JOIN sdm as d
			ON d.id_sdm = a.sdm_id 

			WHERE 
				d.id_pengguna = '{$id_pengguna}' AND 
				a.data_observasi_tenaga_ahli != ''


			ORDER BY id_observasi_tenaga_ahli ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_observasi_tenaga_ahli($id_observasi_tenaga_ahli){
		$datasrc = $this->db->get_where('observasi_tenaga_ahli', array('id_observasi_tenaga_ahli' => $id_observasi_tenaga_ahli));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id($id_observasi_tenaga_ahli) {
		$this->db->select('
				a.id_observasi_tenaga_ahli as id_observasi_tenaga_ahli,
				a.pendaftaran_id as pendaftaran_id,
				c.nama_lengkap as nama_lengkap_anak,
				d.nama_lengkap as observer,
				d.id_sdm as sdm_id,
				a.usia_anak as usia_anak,
				a.tgl_observasi as tgl_observasi,
				a.tgl_laporan_observasi as tgl_laporan_observasi,
				a.judul_laporan_observasi as judul_laporan_observasi,
				a.data_observasi_tenaga_ahli as data_observasi_tenaga_ahli
		');
	    $this->db->from('observasi_tenaga_ahli a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'c.nik=b.anak_id', 'left');
	    $this->db->join('sdm d', 'd.id_sdm=a.sdm_id', 'left');
	    $this->db->where('id_observasi_tenaga_ahli', $id_observasi_tenaga_ahli);
		$datasrc = $this->db->get();
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id_pendaftaran($id_pendaftaran) {
		$this->db->select('
				a.id_observasi_tenaga_ahli as id_observasi_tenaga_ahli,
				a.pendaftaran_id as pendaftaran_id,
				c.nama_lengkap as nama_lengkap_anak,
				d.nama_lengkap as observer,
				d.id_sdm as sdm_id,
				a.usia_anak as usia_anak,
				a.tgl_observasi as tgl_observasi,
				a.tgl_laporan_observasi as tgl_laporan_observasi,
				a.judul_laporan_observasi as judul_laporan_observasi,
				a.data_observasi_tenaga_ahli as data_observasi_tenaga_ahli
		');
	    $this->db->from('observasi_tenaga_ahli a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'c.nik=b.anak_id', 'left');
	    $this->db->join('sdm d', 'd.id_sdm=a.sdm_id', 'left');
	    $this->db->where('id_pendaftaran', $id_pendaftaran);
		$datasrc = $this->db->get();
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_observasi_tenaga_ahlil_options($id_observasi_tenaga_ahli){
		$query = "
			SELECT a.id_observasi_tenaga_ahli AS id_observasi_tenaga_ahli,
				   a.usia_anak AS usia_anak,
				   a.tgl_observasi AS tgl_observasi,
				   a.tgl_laporan_observasi AS tgl_laporan_observasi,
				   a.judul_laporan_observasi AS judul_laporan_observasi,
				   a.data_observasi_tenaga_ahli AS data_observasi_tenaga_ahli,
				   b.id_pendaftaran AS id_pendaftaran,
				   c.id_sdm AS id_sdm,
		
			FROM observasi_tenaga_ahli AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN sdm 	AS c
				ON a.sdm_id = c.id_psdm
		
			WHERE a.id_observasi_tenaga_ahli = '{$id_observasi_tenaga_ahli}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}