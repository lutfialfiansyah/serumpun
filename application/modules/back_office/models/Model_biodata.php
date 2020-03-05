<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_biodata extends CI_Model {
	
	public	$nama_lengkap 	= '';
	public	$jk 	  		= '';
	public	$foto 	  	  	= '';
	
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
	
	public function get_biodata_grup(){
		$query = "
			SELECT *
			FROM biodata
			ORDER BY nik ASC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_grup_biodata($nik){
		$datasrc = $this->db->get_where('biodata', array('nik' => $nik));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function update_pwd($current, $new, $retype){
		if ($new != $retype) return 'unmatch';
		
		$biodata = $this->session->userdata('biodata');
		if (password($current) != $biodata->password) return 'wrong';
		
		$this->db->update('biodata', array('password' => password($new)), array('nik' => $biodata->nik));
		return 'ok';
	}
	
	public function get_menu($nik = '') {
		$query = "
			SELECT m.*, ma.id AS id_menu_akses 
			FROM menu AS m 
			LEFT JOIN (SELECT * FROM menu_akses WHERE id_pengguna_grup = '{$id}') AS ma  
				ON ma.id_menu = m.id 
			WHERE m.id_menu_induk = 0
			ORDER BY m.id			
		";
		return $this->db->query($query);
	}
	
	public function get_submenu($id = '') {
		$query = "
			SELECT m.*, ma.id AS id_menu_akses 
			FROM menu AS m 
			LEFT JOIN (SELECT * FROM menu_akses WHERE id_pengguna_grup = '{$id}') AS ma 
				ON ma.id_menu = m.id 
			WHERE m.id_menu_induk > 0 
			ORDER BY m.id		
		";
		return $this->db->query($query);
	}
	
}
/* End of file Model_pengguna.php */
/* Location: ./application/modules/back_office/models/Model_pengguna.php */