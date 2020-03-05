<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_psikomotorik extends CI_Model {

	public $id_psikomotorik	 		= '';
	public $pendaftaran_id 			= '';
	public $tengkurap 				= '';
	public $balik_badan		 		= '';
	public $duduk					= '';
	public $merangkak				= '';
	public $tersenyum	 			= '';
	public $tertawa		 			= '';
	public $mengulang_kata			= '';
	public $mengucap_mamapapa		= '';
	public $meniru_kata 			= '';
	public $bicara_bermakna			= '';

	
	// public function get_kb(){
	// 	$query = "
	// 		SELECT *
	// 		FROM kb
	// 		ORDER BY id_kb ASC
	// 	";
	// 	return $this->db->query($query)->result();
	// }
	
	public function by_id_psikomotorik($id_psikomotorik){
		$datasrc = $this->db->get_where('psikomotorik', array('id_psikomotorik' => $id_psikomotorik));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_id_pendaftaran($id_pendaftaran){
		$datasrc = $this->db->get_where('psikomotorik', array('pendaftaran_id' => $id_pendaftaran));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}


	public function show_psikomotorik_options($id_psikomotorik){
		$query = "
			SELECT a.id_psikomotorik AS id_psikomotorik,
				   a.tengkurap AS tengkurap,
				   a.balik_badan AS balik_badan,
				   a.duduk AS duduk,
				   a.merangkak AS merangkak,
				   a.tersenyum AS tersenyum,
				   a.tertawa AS tertawa,
				   a.mengulang_kata AS mengulang_kata,
				   a.mengucap_mamapapa AS mengucap_mamapapa,
				   a.meniru_kata AS meniru_kata,
				   a.bicara_bermakna AS bicara_bermakna,

				   b.id_pendaftaran AS id_pendaftaran


			FROM prenatal AS a
			LEFT JOIN pendaftaran 	AS b
				ON a.pendaftaran_id = b.id_pendaftaran
			WHERE .id_psikomotorik = '{$id_psikomotorik}'
		";
		$query = $this->db->query($query)->row();
		return $query;
	}

	
}