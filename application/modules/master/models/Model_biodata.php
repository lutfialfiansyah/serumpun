<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Model_biodata extends CI_Model {
 
	public	$nik							= ''; 
	public	$nama_lengkap					= '';
	public	$nama_panggilan					= '';
	public	$tgl_lahir						= '';
	public	$jk								= '';
	public	$telp							= '';
	public	$email							= '';
	public	$foto							= '';
	public	$alamat							= '';
	public	$pengguna_id					= '';
	public	$username						= '';
	
 

	public function get_biodata_by_pengguna($pengguna_id){
		$query = "
			SELECT 
				a.nik AS nik,
				a.nama_lengkap AS nama_lengkap,
				a.nama_panggilan AS nama_panggilan, 
				a.tgl_lahir AS tgl_lahir,
				a.jk AS jk,
				b.goldarah AS goldarah,
				c.agama AS agama,
				a.telp AS telp,
				a.email AS email,
				a.foto AS foto,
				d.kelurahan AS kelurahan,
				a.alamat AS alamat,
				e.pendidikan AS pendidikan,
				f.pekerjaan AS pekerjaan,
				g.id AS pengguna_id
			FROM biodata AS a
			LEFT JOIN goldarah AS b
				ON b.id_goldarah = a.goldarah_id
			LEFT JOIN agama AS c
				ON c.id_agama = a.agama_id
			LEFT JOIN kelurahan AS d
				ON d.id_kelurahan = a.kelurahan_id
			LEFT JOIN pendidikan AS e
				ON e.id_pendidikan = a.pendidikan_id
			LEFT JOIN pekerjaan AS f
				ON f.id_pekerjaan = a.pekerjaan_id
			LEFT JOIN pengguna AS g
				ON g.id = a.pengguna_id 
			WHERE a.pengguna_id = '{$pengguna_id}'
		";
		return $this->db->query($query)->result();
	}

	public function get_biodata(){
		$query = "
			SELECT 
				a.nik AS nik,
				a.nama_lengkap AS nama_lengkap,
				a.nama_panggilan AS nama_panggilan, 
				a.tgl_lahir AS tgl_lahir,
				a.jk AS jk,
				b.goldarah AS goldarah,
				c.agama AS agama,
				a.telp AS telp,
				a.email AS email,
				a.foto AS foto,
				d.kelurahan AS kelurahan,
				a.alamat AS alamat,
				e.pendidikan AS pendidikan,
				f.pekerjaan AS pekerjaan,
				g.id AS pengguna_id,
				g.username AS username
			FROM biodata AS a
			LEFT JOIN goldarah AS b
				ON b.id_goldarah = a.goldarah_id
			LEFT JOIN agama AS c
				ON c.id_agama = a.agama_id
			LEFT JOIN kelurahan AS d
				ON d.id_kelurahan = a.kelurahan_id
			LEFT JOIN pendidikan AS e
				ON e.id_pendidikan = a.pendidikan_id
			LEFT JOIN pekerjaan AS f
				ON f.id_pekerjaan = a.pekerjaan_id
			LEFT JOIN pengguna AS g
				ON g.id = a.pengguna_id 
			ORDER BY nik ASC
		";
		return $this->db->query($query)->result();
	}

	
	public function by_nik($nik){
		$this->db->select('
				a.nik AS nik,
				a.nama_lengkap AS nama_lengkap,
				a.nama_panggilan AS nama_panggilan,
				a.tgl_lahir AS tgl_lahir,
				a.jk AS jk,
				a.goldarah_id AS goldarah_id,
				b.goldarah AS goldarah,
				a.agama_id AS agama_id,
				g.agama AS agama,
				a.telp AS telp,
				a.email AS email,
				a.foto AS foto,
				f.provinsi AS provinsi,
				f.id_provinsi AS id_provinsi,
				e.kabkot AS kabkot,
				e.id_kabkot AS id_kabkot,
				d.kecamatan AS kecamatan,
				d.id_kecamatan AS id_kecamatan,
				c.kelurahan AS kelurahan,
				c.id_kelurahan AS id_kelurahan,
				a.alamat AS alamat,
				a.pendidikan_id AS pendidikan_id,
				h.pendidikan AS pendidikan,
				a.pekerjaan_id AS pekerjaan_id,
				i.pekerjaan AS pekerjaan,
				j.id AS pengguna_id,
				j.nama AS pengguna
		');
	    $this->db->from('biodata a');
	    $this->db->join('goldarah b', 'a.goldarah_id=b.id_goldarah', 'left');
	    $this->db->join('kelurahan c', 'a.kelurahan_id=c.id_kelurahan', 'left');
	    $this->db->join('kecamatan d', 'c.kecamatan_id=d.id_kecamatan', 'left');
	    $this->db->join('kabkot e', 'd.kabkot_id=e.id_kabkot', 'left');
	    $this->db->join('provinsi f', 'e.provinsi_id=f.id_provinsi', 'left');
	    $this->db->join('agama g', 'a.agama_id=g.id_agama', 'left');
	    $this->db->join('pendidikan h', 'a.pendidikan_id=h.id_pendidikan', 'left');
	    $this->db->join('pekerjaan i', 'a.pekerjaan_id=i.id_pekerjaan', 'left');
	    $this->db->join('pengguna j', 'a.pengguna_id=j.id', 'left');
	    $this->db->where('nik', $nik);
		$datasrc = $this->db->get();
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function show_biodata_options($nik){
		$query = "
			SELECT b.nik AS nik,
				   b.nama_lengkap AS nama_lengkap,
				   b.nama_lengkap AS nama_panggilan,
				   b.tgl_lahir AS tgl_lahir,
				   b.jk AS jk,
				   g.goldarah AS goldarah,
				   b.agama_id AS agama,
				   b.telp AS telp,
				   b.email AS email,
				   b.foto AS foto,
				   prov.provinsi AS provinsi,
				   prov.id_provinsi AS id_provinsi,
				   kab.kabkot AS kabkot,
				   kab.id_kabkot AS id_kabkot,
				   kec.kecamatan AS kecamatan,
				   kec.id_kecamatan AS id_kecamatan,
				   kel.kelurahan AS kelurahan,
				   kel.id_kelurahan AS id_kelurahan,
				   b.alamat AS alamat,
				   pen.pendidikan AS pendidikan,
				   k.pekerjaan AS pekerjaan,
				   b.pengguna_id AS pengguna
			FROM biodata AS b
			LEFT JOIN goldarah AS g
			ON b.goldarah_id = g.id_goldarah
			LEFT JOIN agama AS a
			ON b.agama_id = a.id_agama
			LEFT JOIN kelurahan AS kel 
			ON b.kelurahan_id = kel.id_kelurahan
    		LEFT JOIN kecamatan AS kec 
    		ON kel.kecamatan_id = kec.id_kecamatan 
    		LEFT JOIN kabkot AS kab
    		ON kec.kabkot_id = kab.id_kabkot
    		LEFT JOIN provinsi AS prov
    		ON kab.provinsi_id = prov.id_provinsi
    		LEFT JOIN pengguna AS p
    		ON b.pengguna_id = p.id
    		LEFT JOIN pekerjaan AS k 
    		ON b.pekerjaan_id = k.id_pekerjaan 
    		LEFT JOIN pendidikan AS pen
    		ON b.pendidikan_id = pen.id_pendidikan

			WHERE nik = '{$nik}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
	function provinsi(){
		$this->db->order_by('provinsi','ASC');
		$provinces= $this->db->get('provinsi');
		return $provinces->result_array();
	}


	function kabupaten($provId){
		$kabupaten="<option value='0'>--- Pilih Kabupaten/Kota ---</pilih>";
		$this->db->order_by('kabkot','ASC');
		$kab= $this->db->get_where('kabkot',array('provinsi_id'=>$provId));
		foreach ($kab->result_array() as $data ){
			$kabupaten.= "<option value='$data[id_kabkot]'>$data[kabkot]</option>";}
		return $kabupaten;
	}

	function kecamatan($kabId){
		$kecamatan="<option value='0'>--- Pilih Kecamatan ---</pilih>";
		$this->db->order_by('kecamatan','ASC');
		$kec= $this->db->get_where('kecamatan',array('kabkot_id'=>$kabId));
		foreach ($kec->result_array() as $data ){
			$kecamatan.= "<option value='$data[id_kecamatan]'>$data[kecamatan]</option>";}
		return $kecamatan;
	}

	function kelurahan($kecId){
		$kelurahan="<option value='0'>--- Pilih Kelurahan ---</pilih>";
		$this->db->order_by('kelurahan','ASC');
		$kel= $this->db->get_where('kelurahan',array('kecamatan_id'=>$kecId));
		foreach ($kel->result_array() as $data ){
			$kelurahan.= "<option value='$data[id_kelurahan]'>$data[kelurahan]</option>";}
		return $kelurahan;
	}


	
}
/* End of file Model_biodata.php --  -- */