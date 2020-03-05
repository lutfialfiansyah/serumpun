<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_perinatal extends CI_Model {

	public $id_perinatal	 		= '';
	public $pendaftaran_id 		 	= '';
	public $usia_persalinan 		= '';

	public $persalinan_id 	    	= '';
	public $persalinan  	    	= '';

	public $induksi 				= '';
	public $penolong_id 			= '';
	public $penolong 	 			= '';

	public $komplikasi_id  			= '';
	public $komplikasi  			= '';

	public $konbayi_id 				= '';
	public $konbayi 				= '';

	public $kelainan_id 			= '';
	public $kelainan 	 			= '';

	public $terapi_id  				= '';
	public $terapi  				= '';

	public $bb_lahir 				= '';
	public $pb_lahir 				= '';
	public $lk_lahir 				= '';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_perinatal($id_perinatal){
		$datasrc = $this->db->get_where('perinatal', array('id_perinatal' => $id_perinatal));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('perinatal', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_biodata_options($id_perinatal){
		$query = "
			SELECT a.id_perinatal AS id_perinatal,
				   a.usia_persalinan AS usia_persalinan,
				   a.induksi AS induksi,
				   a.bb_lahir AS bb_lahir,
				   a.pb_lahir AS pb_lahir,
				   a.lk_lahir AS lk_lahir,

				   b.id_pendaftaran AS id_pendaftaran,

				   c.id_persalinan AS id_persalinan,
				   c.persalinan AS persalinan,

				   d.id_penolong AS id_penolong,
				   d.penolong AS penolong,

				   e.id_komplikasi AS id_komplikasi,
				   e.komplikasi AS komplikasi,

				   f.id_konbayi AS id_konbayi,
				   f.konbayi AS konbayi,

				   g.id_kelainan AS id_kelainan,
				   g.kelainan AS kelainan,

				   h.id_terapi AS id_terapi,
				   h.terapi AS terapi,

			FROM perinatal AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN persalinan 	AS c
				ON a.persalinan_id 	= c.id_persalinan
			LEFT JOIN penolong 		AS d
				ON a.penolong_id 	= d.id_penolong
			LEFT JOIN komplikasi 	AS e 
				ON a.komplikasi_id 	= e.id_komplikasi
			LEFT JOIN konbayi 		AS f
				ON a.konbayi_id 	= f.id_konbayi
			LEFT JOIN kelainan 		AS g 
				ON a.kelainan_id	= g.id_kelainan
			LEFT JOIN terapi 		AS h 
				ON a.terapi_id 		= h.id_terapi

			WHERE nik = '{$id_perinatal}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}