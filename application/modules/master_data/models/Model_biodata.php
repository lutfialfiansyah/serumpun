<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_biodata extends CI_Model {

	public	$nik = '';
	public	$nama_lengkap   = '';
	public	$jk   			= '';
	public	$foto   		= '';
	
	public function get_biodata(){
		$query = "
			SELECT *
			FROM biodata
			ORDER BY nik ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_biodata($nik){
		$datasrc = $this->db->get_where('biodata', array('nik' => $nik));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_biodata.php */