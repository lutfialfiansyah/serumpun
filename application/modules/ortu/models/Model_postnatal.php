<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_postnatal extends CI_Model {

	public $id_postnatal 			='';
	public $pendaftaran_id			='';
	public $bayi_kuning				='';
	public $sering_biru				='';
	public $kejang 					='';
	public $lama_kejang				='';
	public $kejang_seluruhtubuh		='';
	public $sering_kejang			='';
	public $setelah_kejang			='';
	public $sakit_berat				='';

	public $asupan_id				='';
	public $asupan 					='';

	public $reflek_hisap			='';
	public $makan_bubur				='';
	public $makan_nasitim			='';
	public $makan_nasibiasa			='';
	public $kes_mengunyah			='';
	public $memilih_makanan			='';
	public $masak_buah				='';
	public $masak_sayur				='';
	public $masak_dagingikan		='';
	public $masalah_bak				='';
	public $masalah_bab				='';
	public $masalah_tidur			='';
	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_postnatal($id_postnatal){
		$datasrc = $this->db->get_where('postnatal', array('id_postnatal' => $id_postnatal));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('postnatal', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_biodata_options($id_postnatal){
		$query = "
			SELECT 	a.id_postnatal  AS id_postnatal,
					a.pendaftaran_id AS pendaftaran_id,
					a.bayi_kuning AS bayi_kuning,
					a.sering_biru AS sering_biru,
					a.kejang  AS kejang,
					a.lama_kejang AS lama_kejang,
					a.kejang_seluruhtubuh AS kejang_seluruhtubuh,
					a.sering_kejang AS sering_kejang,
					a.setelah_kejang AS setelah_kejang,
					a.sakit_berat AS sakit_berat,
					a.reflek_hisap AS reflek_hisap,
					a.makan_bubur AS makan_bubur,
					a.makan_nasitim AS makan_nasitim,
					a.makan_nasibiasa AS makan_nasibiasa,
					a.kes_mengunyah AS kes_mengunyah,
					a.memilih_makanan AS memilih_makanan,
					a.masak_buah AS masak_buah,
					a.masak_sayur AS masak_sayur,
					a.masak_dagingikan AS masak_dagingikan,
					a.masalah_bak AS masalah_bak,
					a.masalah_bab AS masalah_bab,

				   b.id_pendaftaran AS id_pendaftaran,

				   c.id_asupan AS id_asupan,
				   c.asupan AS asupan,

			FROM postnatal AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN asupan 	AS c
				ON a.asupan_id 	= c.id_asupan

			WHERE nik = '{$id_postnatal}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}