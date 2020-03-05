<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_cetak_pdf extends CI_Model {

	public	$id_pendaftaran 			= '';
	public	$anak_ke		 			= '';
	public	$jum_saudara	 			= '';
	public	$status_anak	 			= '';
	public	$status_ortuwali 			= '';

	public $nik_anak					= '';
	public $nama_lengkap_anak			= '';
	public $nama_panggilan_anak			= '';
	public $tgl_lahir_anak				= '';
	public $jk_anak						= '';
	public $telp_anak					= '';
	public $email_anak					= '';
	public $foto_anak					= '';
	public $alamat_anak					= '';
	public $goldarah_anak				= '';
	public $agama_anak					= '';
	public $kelurahan_anak				= '';
	public $kecamatan_anak				= '';
	public $kabkot_anak					= '';
	public $provinsi_anak				= '';
	public $pendidikan_anak				= '';
	public $pekerjaan_anak				= '';

	public $nik_ayah					= '';
	public $nama_lengkap_ayah			= '';
	public $nama_panggilan_ayah			= '';
	public $tgl_lahir_ayah				= '';
	public $jk_ayah						= '';
	public $telp_ayah					= '';
	public $email_ayah					= '';
	public $foto_ayah					= '';
	public $alamat_ayah					= '';
	public $goldarah_ayah				= '';
	public $agama_ayah					= '';
	public $kelurahan_ayah				= '';
	public $kecamatan_ayah				= '';
	public $kabkot_ayah					= '';
	public $provinsi_ayah				= '';
	public $pendidikan_ayah				= '';
	public $pekerjaan_ayah				= '';

	public $nik_ibu						= '';
	public $nama_lengkap_ibu			= '';
	public $nama_panggilan_ibu			= '';
	public $tgl_lahir_ibu				= '';
	public $jk_ibu						= '';
	public $telp_ibu					= '';
	public $email_ibu					= '';
	public $foto_ibu					= '';
	public $alamat_ibu					= '';
	public $goldarah_ibu				= '';
	public $agama_ibu					= '';
	public $kelurahan_ibu				= '';
	public $kecamatan_ibu				= '';
	public $kabkot_ibu					= '';
	public $provinsi_ibu				= '';
	public $pendidikan_ibu				= '';
	public $pekerjaan_ibu				= '';

	public $id_prenatal					= '';
	public $kehamilan					= '';
	public $periksa_kehamilan			= '';
	public $penyakit_ibu				= '';
	public $penyakit_ayah				= '';
	public $psikologis_ibu				= '';
	public $pemeriksa					= '';
	public $kebortu_id					= '';
	public $kb							= '';

	public $id_perinatal				= '';
	public $usia_persalinan				= '';
	public $induksi						= '';
	public $komplikasi					= '';
	public $kelainan					= '';
	public $terapi						= '';
	public $bb_lahir					= '';
	public $pb_lahir					= '';
	public $lk_lahir					= '';
	public $persalinan					= '';
	public $penolong					= '';
	public $konbayi						= '';

	public $id_postnatal				= '';
	public $bayi_kuning					= '';
	public $sering_biru					= '';
	public $kejang						= '';
	public $lama_kejang					= '';
	public $kejang_seluruhtubuh			= '';
	public $sering_kejang				= '';
	public $setelah_kejang				= '';
	public $sakit_berat					= '';
	public $reflek_hisap				= '';
	public $makan_bubur					= '';
	public $makan_nasitim				= '';
	public $makan_nasibiasa				= '';
	public $kes_mengunyah				= '';
	public $memilih_makanan				= '';
	public $masak_buah					= '';
	public $masak_sayur					= '';
	public $masak_dagingikan			= '';
	public $masalah_bak					= '';
	public $masalah_bab					= '';
	public $masalah_tidur				= '';
	public $asupan						= '';

	public $id_imunisasi				= '';
	public $data_imunisasi				= '';

	public $id_psikomotorik				= '';
	public $tengkurap					= '';
	public $balik_badan					= '';
	public $duduk						= '';
	public $merangkak					= '';
	public $tersenyum					= '';
	public $tertawa						= '';
	public $mengulang_kata				= '';
	public $mengucap_mamapapa			= '';
	public $meniru_kata					= '';
	public $bicara_bermakna				= '';

	public $id_kesehatan_keluarga		= '';
	public $data_kesehatan_keluarga		= '';

	public $id_diagnosa					= '';
	public $data_diagnosa				= '';

	public $id_tata_laksana_setelah_diagnosa		= '';
	public $data_tata_laksana_setelah_diagnosa		= '';

	public $id_gambaran_anak						= '';
	public $ket_anak								= '';

	public $id_kegiatan_tidak_rutin_anak			= '';
	public $data_kegiatan_tidak_rutin_anak			= '';
	public $pengasuh								= '';
	public $jum_pengasuh							= '';
	public $jum_art									= '';

	public $id_kegiatan_rutin_anak					= '';
	public $data_kegiatan_rutin_anak				= '';

	public $id_harapan								= '';
	public $ket_harapan								= '';

	public $id_rekam_medis							= '';
	public $file_rekam_medis						= '';

	public $id_kartu_keluarga						= '';
	public $file_kartu_keluarga						= '';

	public function get_allpendaftaran($id_pendaftaran){
		$query = $this->db->query("
		SELECT
				a.id_pendaftaran AS id_pendaftaran,
				a.anak_ke AS anak_ke,
				a.jum_saudara AS jum_saudara,
				a.status_anak AS status_anak,
				a.status_ortuwali AS status_ortuwali,
				
				b.nik AS nik_anak,
				b.nama_lengkap AS nama_lengkap_anak,
				b.nama_panggilan AS nama_panggilan_anak,
				b.tgl_lahir AS tgl_lahir_anak,
				b.jk AS jk_anak,
				b.telp AS telp_anak,
				b.email AS email_anak,
				b.foto AS foto_anak,
				b.alamat AS alamat_anak,
				e.goldarah AS goldarah_anak,
				h.agama AS agama_anak,
				k.kelurahan AS kelurahan_anak,
				l.kecamatan AS kecamatan_anak,
				m.kabkot AS kabkot_anak,
				n.provinsi AS provinsi_anak,
				w.pendidikan AS pendidikan_anak,
				z.pekerjaan AS pekerjaan_anak,

				c.nik AS nik_ayah,
				c.nama_lengkap AS nama_lengkap_ayah,
				c.nama_panggilan AS nama_panggilan_ayah,
				c.tgl_lahir AS tgl_lahir_ayah,
				c.jk AS jk_ayah,
				c.telp AS telp_ayah,
				c.email AS email_ayah,
				c.foto AS foto_ayah,
				c.alamat AS alamat_ayah,
				f.goldarah AS goldarah_ayah,
				i.agama AS agama_ayah,
				o.kelurahan AS kelurahan_ayah,
				p.kecamatan AS kecamatan_ayah,
				q.kabkot AS kabkot_ayah,
				r.provinsi AS provinsi_ayah,
				x.pendidikan AS pendidikan_ayah,
				aa.pekerjaan AS pekerjaan_ayah,

				d.nik AS nik_ibu,
				d.nama_lengkap AS nama_lengkap_ibu,
				d.nama_panggilan AS nama_panggilan_ibu,
				d.tgl_lahir AS tgl_lahir_ibu,
				d.jk AS jk_ibu,
				d.telp AS telp_ibu,
				d.email AS email_ibu,
				d.foto AS foto_ibu,
				d.alamat AS alamat_ibu,
				g.goldarah AS goldarah_ibu,
				j.agama AS agama_ibu,
				s.kelurahan AS kelurahan_ibu,
				t.kecamatan AS kecamatan_ibu,
				u.kabkot AS kabkot_ibu,
				v.provinsi AS provinsi_ibu,
				y.pendidikan AS pendidikan_ibu,
				ab.pekerjaan AS pekerjaan_ibu,

				ac.id_prenatal AS id_prenatal,
				ac.kehamilan AS kehamilan,
				ac.periksa_kehamilan AS periksa_kehamilan,
				ac.penyakit_ibu AS penyakit_ibu,
				ac.penyakit_ayah AS penyakit_ayah,
				ac.psikologis_ibu AS psikologis_ibu,
				ad.pemeriksa AS pemeriksa,
				ac.kebortu_id AS kebortu,
				af.kb AS kb,

				ag.id_perinatal AS id_perinatal,
				ag.usia_persalinan AS usia_persalinan,
				ag.induksi AS induksi,
				ag.komplikasi_id AS komplikasi,
				ag.kelainan_id AS kelainan,
				ag.terapi_id AS terapi,
				ag.bb_lahir AS bb_lahir,
				ag.pb_lahir AS pb_lahir,
				ag.lk_lahir AS lk_lahir,
				ah.persalinan AS persalinan,
				ai.penolong AS penolong,
				aj.konbayi AS konbayi,

				ak.id_postnatal AS id_postnatal,
				ak.bayi_kuning AS bayi_kuning,
				ak.sering_biru AS sering_biru,
				ak.kejang AS kejang,
				ak.lama_kejang AS lama_kejang,
				ak.kejang_seluruhtubuh AS kejang_seluruhtubuh,
				ak.sering_kejang AS sering_kejang,
				ak.setelah_kejang AS setelah_kejang,
				ak.sakit_berat AS sakit_berat,
				ak.reflek_hisap AS reflek_hisap,
				ak.makan_bubur AS makan_bubur,
				ak.makan_nasitim AS makan_nasitim,
				ak.makan_nasibiasa AS makan_nasibiasa,
				ak.kes_mengunyah AS kes_mengunyah,
				ak.memilih_makanan AS memilih_makanan,
				ak.masak_buah AS masak_buah,
				ak.masak_sayur AS masak_sayur,
				ak.masak_dagingikan AS masak_dagingikan,
				ak.masalah_bak AS masalah_bak,
				ak.masalah_bab AS masalah_bab,
				ak.masalah_tidur AS masalah_tidur,
				al.asupan AS asupan,

				am.id_imunisasi AS id_imunisasi,
				am.data_imunisasi AS data_imunisasi,

				an.id_psikomotorik AS id_psikomotorik,
				an.tengkurap AS tengkurap,
				an.balik_badan AS balik_badan,
				an.duduk AS duduk,
				an.merangkak AS merangkak,
				an.tersenyum AS tersenyum,
				an.tertawa AS tertawa,
				an.mengulang_kata AS mengulang_kata,
				an.mengucap_mamapapa AS mengucap_mamapapa,
				an.meniru_kata AS meniru_kata,
				an.bicara_bermakna AS bicara_bermakna,

				ao.id_kesehatan_keluarga AS id_kesehatan_keluarga,
				ao.data_kesehatan_keluarga AS data_kesehatan_keluarga,

				ap.id_diagnosa AS id_diagnosa,
				ap.data_diagnosa AS data_diagnosa,

				aq.id_tata_laksana_setelah_diagnosa AS id_tata_laksana_setelah_diagnosa,
				aq.data_tata_laksana_setelah_diagnosa AS data_tata_laksana_setelah_diagnosa,

				ar.id_gambaran_anak AS id_gambaran_anak,
				ar.ket_anak AS ket_anak,

				au.id_kegiatan_tidak_rutin_anak AS id_kegiatan_tidak_rutin_anak,
				au.data_kegiatan_tidak_rutin_anak AS data_kegiatan_tidak_rutin_anak,
				au.pengasuh AS pengasuh,
				au.jum_pengasuh AS jum_pengasuh,
				au.jum_art AS jum_art,

				av.id_kegiatan_rutin_anak AS id_kegiatan_rutin_anak,
				av.data_kegiatan_rutin_anak AS data_kegiatan_rutin_anak,

				aw.id_harapan AS id_harapan,
				aw.ket_harapan AS ket_harapan,

				ax.id_rekam_medis AS id_rekam_medis,
				ax.file_rekam_medis AS file_rekam_medis,

				ay.id_kartu_keluarga AS id_kartu_keluarga,
				ay.file_kartu_keluarga AS file_kartu_keluarga

			FROM pendaftaran a
			LEFT JOIN biodata b
				ON b.nik = a.anak_id
			LEFT JOIN biodata c
			 	ON c.nik = a.ayah_id
			LEFT JOIN biodata d
			 	ON d.nik = a.ibu_id
			LEFT JOIN goldarah e
				ON e.id_goldarah = b.goldarah_id
			LEFT JOIN goldarah f
				ON f.id_goldarah = c.goldarah_id
			LEFT JOIN goldarah g
				ON g.id_goldarah = d.goldarah_id
			LEFT JOIN agama h
				ON h.id_agama = b.agama_id
			LEFT JOIN agama i
				ON i.id_agama = c.agama_id
			LEFT JOIN agama j
				ON j.id_agama = d.agama_id
			LEFT JOIN kelurahan k
				ON k.id_kelurahan = b.kelurahan_id
			LEFT JOIN kecamatan l
				ON l.id_kecamatan = k.kecamatan_id
			LEFT JOIN kabkot m
				ON m.id_kabkot = l.kabkot_id
			LEFT JOIN provinsi n
				ON n.id_provinsi = m.provinsi_id
			LEFT JOIN kelurahan o
				ON o.id_kelurahan = c.kelurahan_id
			LEFT JOIN kecamatan p
				ON p.id_kecamatan = o.kecamatan_id
			LEFT JOIN kabkot q
				ON q.id_kabkot = p.kabkot_id
			LEFT JOIN provinsi r
				ON r.id_provinsi = q.provinsi_id
			LEFT JOIN kelurahan s
				ON s.id_kelurahan = d.kelurahan_id
			LEFT JOIN kecamatan t
				ON t.id_kecamatan = s.kecamatan_id
			LEFT JOIN kabkot u
				ON u.id_kabkot = t.kabkot_id
			LEFT JOIN provinsi v
				ON v.id_provinsi = u.provinsi_id
			LEFT JOIN pendidikan w 
				ON w.id_pendidikan = b.pendidikan_id
			LEFT JOIN pendidikan x 
				ON x.id_pendidikan = c.pendidikan_id
			LEFT JOIN pendidikan y
				ON y.id_pendidikan = d.pendidikan_id
			LEFT JOIN pekerjaan z 
				ON z.id_pekerjaan = b.pekerjaan_id
			LEFT JOIN pekerjaan aa
				ON aa.id_pekerjaan = c.pekerjaan_id
			LEFT JOIN pekerjaan ab
				ON ab.id_pekerjaan = d.pekerjaan_id
			LEFT JOIN prenatal ac 
				ON ac.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN pemeriksa ad 
				ON ad.id_pemeriksa = ac.pemeriksa_id
			LEFT JOIN kebortu ae
				ON ae.id_kebortu = ac.kebortu_id
			LEFT JOIN kb af
				ON  af.id_kb = ac.kb_id
			LEFT JOIN perinatal ag
				ON  ag.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN persalinan ah
				ON  ah.id_persalinan = ag.persalinan_id
			LEFT JOIN penolong ai
				ON  ai.id_penolong = ag.penolong_id
			LEFT JOIN konbayi aj
				ON  aj.id_konbayi = ag.konbayi_id
			LEFT JOIN postnatal ak
				ON  ak.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN asupan al
				ON  al.id_asupan = ak.asupan_id
			LEFT JOIN imunisasi am
				ON  am.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN psikomotorik an
				ON  an.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN kesehatan_keluarga ao
				ON  ao.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN diagnosa ap
				ON  ap.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN tata_laksana_setelah_diagnosa aq
				ON  aq.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN gambaran_anak ar
				ON  ar.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN kegiatan_tidak_rutin_anak au
				ON  au.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN kegiatan_rutin_anak av
				ON  av.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN harapan_ortu aw
				ON  aw.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN rekam_medis ax
				ON  ax.pendaftaran_id = a.id_pendaftaran
			LEFT JOIN kartu_keluarga ay
				ON  ay.pendaftaran_id = a.id_pendaftaran

			WHERE a.id_pendaftaran = '{$id_pendaftaran}'
			-- GROUP BY a.id_pendaftaran
		");
	}	
}
/* End of file Model_pendaftaran.php */
/* Location: ./application/modules/master_data/models/Model_pendaftaran.php */