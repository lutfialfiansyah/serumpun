<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_siswa extends CI_Model {

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
	public 	$tenaga_ahli 			= '';


	
	public function get_diterima(){
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
				a.status_ortuwali AS status_ortuwali,

				t.no_induk AS no_induk
			FROM 
				`pendaftaran` AS a
			    LEFT JOIN `biodata` AS b 
			    ON a.anak_id = b.nik
			    LEFT JOIN `biodata` AS c 
			    ON a.ayah_id = c.nik
			    LEFT JOIN `biodata` AS d 
			    ON a.ibu_id = d.nik
			 --    LEFT JOIN `prenatal` AS e 
			 --    ON a.id_pendaftaran = e.pendaftaran_id
			 --    LEFT JOIN `perinatal` AS f 
			 --    ON a.id_pendaftaran = f.pendaftaran_id
			 --    LEFT JOIN `postnatal` AS g
			 --    ON a.id_pendaftaran = g.pendaftaran_id
			 --    LEFT JOIN `imunisasi` AS h
			 --    ON a.id_pendaftaran = h.pendaftaran_id
			 --    LEFT JOIN `psikomotorik` As i
			 --    ON a.id_pendaftaran = i.pendaftaran_id
			 --    LEFT JOIN `gambaran_anak`AS j
			 --    ON a.id_pendaftaran = j.pendaftaran_id
			 --    LEFT JOIN `kesehatan_keluarga` AS k
			 --    ON a.id_pendaftaran = k.pendaftaran_id
			 --    LEFT JOIN `diagnosa` AS l
			 --    ON a.id_pendaftaran = l.pendaftaran_id
				-- LEFT JOIN `tata_laksana_setelah_diagnosa` AS m
			 --    ON a.id_pendaftaran = m.pendaftaran_id
			 --    LEFT JOIN `kegiatan_rutin_anak` AS n
			 --    ON a.id_pendaftaran = n.pendaftaran_id
			 --    LEFT JOIN `kegiatan_tidak_rutin_anak` AS o
			 --    ON a.id_pendaftaran = o.pendaftaran_id
			 --    LEFT JOIN `rekam_medis` AS p
			 --    ON a.id_pendaftaran = p.pendaftaran_id
			    LEFT JOIN `kartu_keluarga` AS q
			    ON a.id_pendaftaran = q.pendaftaran_id
			    LEFT JOIN `observasi_tenaga_ahli` AS r
			    ON a.id_pendaftaran = r.pendaftaran_id
			    LEFT JOIN `siswa` AS s
			    ON a.id_pendaftaran = s.pendaftaran_id
			    LEFT JOIN `observasi_kepsek` AS t
			    ON s.no_induk = t.no_induk
			WHERE 
				a.status_anak = 'Diterima' AND
			    -- id_prenatal !=
			    -- id_perinatal !=
			    -- id_postnatal !=
			    -- id_imunisasi !=
			    -- id_psikomotorik != 
			    -- id_gambaran_anak !=
			    -- id_kesehatan_keluarga != 
			    -- id_diagnosa !=
			    -- id_tata_laksana_setelah_diagnosa !=
			    -- id_kegiatan_rutin_anak !=
			    -- id_kegiatan_tidak_rutin_anak != 
			    -- id_rekam_medis != 
			    id_kartu_keluarga != 
			    id_observasi_tenaga_ahli  !=
			    id_observasi_kepsek != ''
			GROUP BY a.id_pendaftaran
		";

		return $this->db->query($query)->result();
	}
	

	public function get_belum_observasi(){
		$query ="
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
				a.status_ortuwali AS status_ortuwali,

				r.id_observasi_tenaga_ahli AS id_observasi_tenaga_ahli 
			FROM 
				`pendaftaran` AS a
			    LEFT JOIN `biodata` AS b 
			    ON a.anak_id = b.nik
			    LEFT JOIN `biodata` AS c 
			    ON a.ayah_id = c.nik
			    LEFT JOIN `biodata` AS d 
			    ON a.ibu_id = d.nik
			    LEFT JOIN `rekam_medis` AS p
			    ON a.id_pendaftaran = p.pendaftaran_id
			    LEFT JOIN `kartu_keluarga` AS q
			    ON a.id_pendaftaran = q.pendaftaran_id
			    LEFT JOIN `observasi_tenaga_ahli` AS r
			    ON a.id_pendaftaran = r.pendaftaran_id
			WHERE 
				a.status_anak != 'Diterima' AND
			    q.id_kartu_keluarga != '' AND
			    r.id_observasi_tenaga_ahli is null
			GROUP BY a.id_pendaftaran
			ORDER BY a.id_pendaftaran DESC
		";
		return $this->db->query($query)->result();
	}
	
	public function get_siswa(){
		$query ="
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
			    LEFT JOIN `siswa` AS s
			    ON a.id_pendaftaran =  s.pendaftaran_id
			    LEFT JOIN `observasi_kepsek` AS t
			    ON s.no_induk = t.no_induk
			WHERE 
				a.status_anak != 'Diterima' 

			GROUP BY a.id_pendaftaran
		";
		return $this->db->query($query)->result();
	}

	public function get_belum_ppi(){

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
				a.status_ortuwali AS status_ortuwali,
				e.no_induk as no_induk
			FROM 
				`pendaftaran` AS a
			    LEFT JOIN `biodata` AS b 
			    ON a.anak_id = b.nik
			    LEFT JOIN `biodata` AS c 
			    ON a.ayah_id = c.nik
			    LEFT JOIN `biodata` AS d 
			    ON a.ibu_id = d.nik
				LEFT JOIN siswa e 
				ON a.id_pendaftaran = e.pendaftaran_id
			    LEFT JOIN `observasi_tenaga_ahli` AS r
			    ON a.id_pendaftaran = r.pendaftaran_id
			    LEFT JOIN `observasi_kepsek` AS s
			    ON e.no_induk = s.no_induk
			WHERE 
			    r.data_observasi_tenaga_ahli != ''
			GROUP BY a.id_pendaftaran
		";

		return $this->db->query($query)->result();
	}
	
	public function get_observasi_kepsek(){
		$query = "
			SELECT 
				a.id_observasi_kepsek as id_observasi_kepsek,
				a.pendaftaran_id as pendaftaran_id,
				a.kurikulum_id as kurikulum_id,
				d.kompetensi_inti as kompetensi_inti,
				d.kompetensi_dasar as kompetensi_dasar,
				a.kemampuan_saat_observasi as kemampuan_saat_observasi,
				a.program as program,
				a.tujuan as tujuan,
				c.nama_lengkap as nama_anak,
				e.no_induk as no_induk
			FROM observasi_kepsek a 
			LEFT JOIN pendaftaran b 
			ON a.pendaftaran_id = b.id_pendaftaran
			LEFT JOIN biodata c 
			ON b.anak_id = c.nik
			LEFT JOIN kurikulum d 
			ON a.kurikulum_id = d.id_kurikulum
			LEFT JOIN siswa e 
			ON a.pendaftaran_id = e.pendaftaran_id
			ORDER BY id_observasi_kepsek ASC
		";
		return $this->db->query($query)->result();
	}

	
	public function get_penerimaan_siswa(){
		$query ="
			SELECT 
				a.id_pendaftaran AS id_pendaftaran,
				
				c.nik AS nik_anak,
				c.nama_lengkap AS nama_lengkap_anak,
				c.jk AS jk_anak,
				c.foto AS foto_anak,
				a.anak_ke AS anak_ke,
				a.jum_saudara AS jum_saudara,

				d.nik AS nik_ayah,
				d.nama_lengkap AS nama_lengkap_ayah,
				d.jk AS jk_ayah,
				d.foto AS foto_ayah,

				e.nik AS nik_ibu,
				e.nama_lengkap AS nama_lengkap_ibu,
				e.jk AS jk_ibu,
				e.foto AS foto_ibu,
				a.status_anak AS status_anak,
				a.status_ortuwali AS status_ortuwali,

				b.no_induk AS no_induk
			FROM 
				`pendaftaran` AS a
				LEFT JOIN `siswa` AS b
				ON a.id_pendaftaran = b.pendaftaran_id
			    LEFT JOIN `biodata` AS c
			    ON a.anak_id = c.nik
			    LEFT JOIN `biodata` AS d 
			    ON a.ayah_id = d.nik
			    LEFT JOIN `biodata` AS e
			    ON a.ibu_id = e.nik
			    LEFT JOIN `observasi_tenaga_ahli` AS r
			    ON a.id_pendaftaran = r.pendaftaran_id
			    LEFT JOIN `observasi_kepsek` AS s
			    ON b.no_induk = s.no_induk
			    LEFT JOIN `siswa_kelas` AS t
			    ON b.no_induk = t.no_induk
			WHERE 
				a.status_anak = 'Diterima' AND
			    s.id_observasi_kepsek != '' AND
			    t.id_siswa_kelas is null

			GROUP BY a.id_pendaftaran
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
				a.status_ortuwali status_ortuwali,

				o.data_observasi_tenaga_ahli data_observasi_tenaga_ahli,
				p.no_induk no_induk
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
	    $this->db->join('observasi_tenaga_ahli o', 'a.id_pendaftaran=o.pendaftaran_id', 'left');
	    $this->db->join('siswa p', 'a.id_pendaftaran=p.pendaftaran_id', 'left');
	    $this->db->where('a.id_pendaftaran', $id_pendaftaran);
	    $datasrc = $this->db->get();    
	    return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}

	public function by_no_induk($no_induk) {
		$this->db->select('
				   a.id_siswa AS id_siswa,
				   a.no_induk AS no_induk,
				   b.id_pendaftaran AS id_pendaftaran,
				   c.nama_lengkap AS nama_lengkap,
				   c.nik AS id_anak
		');
	    $this->db->from('siswa a');
	    $this->db->join('pendaftaran b', 'a.pendaftaran_id=b.id_pendaftaran', 'left');
	    $this->db->join('biodata c', 'a.anak_id=c.nik', 'left');
	    $this->db->where('no_induk', $no_induk);
	    $datasrc = $this->db->get();    
		return $datasrc->num_rows() > 0 ? $datasrc->row() : $this;
	}
	
}
/* End of file Model_pendaftaran.php */
/* Location: ./application/modules/master_data/models/Model_pendaftaran.php */