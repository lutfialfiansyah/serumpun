<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_pengguna extends CI_Model {
	
	public	$id 	 	  		= '';
	public	$username  	  		= '';
	public	$password  	  		= '';
	public	$nama    	  		= '';
	public	$blokir	 	  		= '';
	public 	$id_pengguna_grup 	= '';
	
	public function get_pengguna(){
		$query = "
			SELECT *
			FROM pengguna
			ORDER BY id DESC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_pengguna($id){
		$datasrc = $this->db->get_where('pengguna', array('id' => $id));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
	public function get_pengguna_grup(){
		$query = "
			SELECT *
			FROM pengguna_grup
			ORDER BY id DESC
		";
		return $this->db->query($query)->result();
	}
	
	public function by_id_grup_pengguna($id){
		$datasrc = $this->db->get_where('pengguna_grup', array('id' => $id));
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function save()
    {
        $post 					= $this->input->post();
        $this->id 				= $post["id"]; 
        $this->username			= $post["username"];
        $this->password 		= $post["password"];
        $this->name 			= $post["name"];
        $this->blokir 			= $post["blokir"];
        $this->id_pengguna_grup = $post["id_pengguna_grup"];
        return $this->db->insert($this->pengguna, $this);
    }
	
	public function update_pwd($current, $new, $retype){
		if ($new != $retype) return 'unmatch';
		
		$pengguna = $this->session->userdata('pengguna');
		if (password($current) != $pengguna->password) return 'wrong';
		
		$this->db->update('pengguna', array('password' => password($new)), array('id' => $pengguna->id));
		return 'ok';
	}
	
}
/* End of file Model_pengguna.php */
/* Location: ./application/modules/administrator/models/Model_pengguna.php */