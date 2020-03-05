

CREATE TABLE `agama` (
  `id_agama` int(2) NOT NULL AUTO_INCREMENT,
  `agama` char(9) NOT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO agama VALUES("1","Islam");
INSERT INTO agama VALUES("2","Kristen");
INSERT INTO agama VALUES("3","Katolik");
INSERT INTO agama VALUES("4","Hindu");
INSERT INTO agama VALUES("5","Budha");
INSERT INTO agama VALUES("6","Konghuchu");



CREATE TABLE `asupan` (
  `id_asupan` int(3) NOT NULL AUTO_INCREMENT,
  `asupan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_asupan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO asupan VALUES("1","ASI");
INSERT INTO asupan VALUES("2","ASI+susu formula");
INSERT INTO asupan VALUES("3","Susu formula");



CREATE TABLE `biodata` (
  `nik` char(18) NOT NULL,
  `nama_lengkap` varchar(70) NOT NULL,
  `nama_panggilan` varchar(10) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Laki-laki','Perempuan','','') NOT NULL,
  `goldarah_id` int(2) NOT NULL,
  `agama_id` int(2) NOT NULL,
  `telp` char(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(25) NOT NULL,
  `kelurahan_id` char(10) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan_id` int(3) NOT NULL,
  `pekerjaan_id` int(3) NOT NULL,
  `pengguna_id` varchar(5) NOT NULL,
  PRIMARY KEY (`nik`),
  KEY `goldarah_id` (`goldarah_id`),
  KEY `pendidikan_id` (`pendidikan_id`),
  KEY `pekerjaan_id` (`pekerjaan_id`),
  KEY `agama_id` (`agama_id`),
  KEY `kelurahan_id` (`kelurahan_id`) USING BTREE,
  KEY `pengguna_id` (`pengguna_id`),
  CONSTRAINT `biodata_ibfk_1` FOREIGN KEY (`goldarah_id`) REFERENCES `goldarah` (`id_goldarah`),
  CONSTRAINT `biodata_ibfk_2` FOREIGN KEY (`pendidikan_id`) REFERENCES `pendidikan` (`id_pendidikan`),
  CONSTRAINT `biodata_ibfk_3` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`id_agama`),
  CONSTRAINT `biodata_ibfk_4` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  CONSTRAINT `biodata_ibfk_5` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahan` (`id_kelurahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO biodata VALUES("321010113312135167","Aksana Cera","Aksana","2010-02-02","Perempuan","1","1","","","321010113312135167.jpg","3201242003","Kp. Bendungan Barat RT/RW. 03/02","1","3","113");
INSERT INTO biodata VALUES("321010113312136667","Ernesto Leonardo","Ernes","1999-02-21","Laki-laki","1","3","089734511876","ernesto@gmail.com","321010113312136667.jpg","3201242003","Kp. Bendungan Barat RT/RW. 03/02","7","69","113");
INSERT INTO biodata VALUES("321010113344556785","Nurul Fatimah","Nurul","1998-12-12","Perempuan","1","1","081334567222","nurulfatimah@gmail.com","321010113344556785.jpg","3201242003","Kp. Bendungan Barat Rt/RW.03/02","6","65","113");
INSERT INTO biodata VALUES("321234567898765678","Wowo Kamil","Wowo","2006-03-22","Laki-laki","1","3","","","321234567898765678.jpg","3201242003","Kp. Bendungan Barat RT/RW. 03/02","1","1","113");



CREATE TABLE `buku_penghubung` (
  `id_buku_penghubung` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(30) NOT NULL,
  `tgl_buku_penghubung` date NOT NULL,
  `hal` varchar(15) NOT NULL,
  `penilaian_id` int(2) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `kemandirian` varchar(200) NOT NULL,
  `informasi_guru` varchar(200) NOT NULL,
  `informasi_ortu` varchar(200) NOT NULL,
  PRIMARY KEY (`id_buku_penghubung`),
  KEY `penilaian` (`penilaian_id`),
  KEY `siswa_kelas_id` (`no_induk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO buku_penghubung VALUES("2","wowo","2020-02-27","popo","5","popo","popo","popo","popo");



CREATE TABLE `diagnosa` (
  `id_diagnosa` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `data_diagnosa` text,
  PRIMARY KEY (`id_diagnosa`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `pendaftaran_id_2` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO diagnosa VALUES("1","1","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Keadaan</center></th>
		                  <th style="background-color: #bac7a7"><center>Tahun</center></th>
		                  <th style="background-color: #bac7a7"><center>Tindakan</center></th>
		                  <th style="background-color: #bac7a7"><center>Keterangan</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
		               	<td>-</td>
		               	<td>-</td>
		               	<td>-</td>
		               	<td>-</td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
	                </tbody>
              </table>     
            
            ");
INSERT INTO diagnosa VALUES("2","2","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Keadaan</center></th>
		                  <th style="background-color: #bac7a7"><center>Tahun</center></th>
		                  <th style="background-color: #bac7a7"><center>Tindakan</center></th>
		                  <th style="background-color: #bac7a7"><center>Keterangan</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
		               	<td>-</td>
		               	<td>-</td>
		               	<td>-</td>
		               	<td>-</td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
	                </tbody>
              </table>     
            
            ");



CREATE TABLE `gambaran_anak` (
  `id_gambaran_anak` int(10) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `ket_anak` text NOT NULL,
  PRIMARY KEY (`id_gambaran_anak`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO gambaran_anak VALUES("1","1","                                                
          Alergi Debu dan Seafood            ");
INSERT INTO gambaran_anak VALUES("2","2","          Sulit melakukan sesuatu sendiri                                    
                      ");



CREATE TABLE `goldarah` (
  `id_goldarah` int(2) NOT NULL AUTO_INCREMENT,
  `goldarah` char(2) NOT NULL,
  PRIMARY KEY (`id_goldarah`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO goldarah VALUES("1","A");
INSERT INTO goldarah VALUES("2","B");
INSERT INTO goldarah VALUES("3","AB");
INSERT INTO goldarah VALUES("4","O");



CREATE TABLE `harapan_ortu` (
  `id_harapan` int(3) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `ket_harapan` text NOT NULL,
  PRIMARY KEY (`id_harapan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO harapan_ortu VALUES("1","1","                                              Mandiri melakukan sesuatu tanpa harus dibantu");
INSERT INTO harapan_ortu VALUES("2","2","              Bisa melakukan kegiatan sendiri                          ");



CREATE TABLE `hubungan` (
  `id_hubungan` int(3) NOT NULL AUTO_INCREMENT,
  `hubungan` varchar(25) NOT NULL,
  PRIMARY KEY (`id_hubungan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO hubungan VALUES("1","Ayah");
INSERT INTO hubungan VALUES("2","Orang tua ayah");
INSERT INTO hubungan VALUES("3","Saudara sekandung Ayah");
INSERT INTO hubungan VALUES("4","Ibu");
INSERT INTO hubungan VALUES("5","Orang tua ibu");
INSERT INTO hubungan VALUES("6","Saudara sekandung Ibu");



CREATE TABLE `imuni` (
  `id_imuni` int(11) NOT NULL AUTO_INCREMENT,
  `imuni` varchar(20) NOT NULL,
  PRIMARY KEY (`id_imuni`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO imuni VALUES("1","BCG");
INSERT INTO imuni VALUES("2","DPT");
INSERT INTO imuni VALUES("3","Campak");
INSERT INTO imuni VALUES("4","PCV");
INSERT INTO imuni VALUES("5","Hepatitis B");
INSERT INTO imuni VALUES("6","HIB");
INSERT INTO imuni VALUES("7","FLU");
INSERT INTO imuni VALUES("8","MMR");
INSERT INTO imuni VALUES("9","Tifoid");
INSERT INTO imuni VALUES("10","Polio");
INSERT INTO imuni VALUES("11","Rotavirus");



CREATE TABLE `imunisasi` (
  `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) DEFAULT NULL,
  `data_imunisasi` text,
  PRIMARY KEY (`id_imunisasi`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `imunisasi_id` (`data_imunisasi`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO imunisasi VALUES("1","1","
            
            <table border="1" width="100%" style="text-align: center;">
                  <thead>
                    <tr>
                      <th style="background-color: #bac7a7"><center>Jenis Imunisasi</center></th>
                      <th style="background-color: #bac7a7"><center>Usia Saat Imunisasi (Bulan)</center></th>
                    </tr>
                  </thead>
                  <tbody>
                   <tr>
                    <td>Campak</td>
                    <td><p>3</p></td>
                   </tr>
                   <tr>
                    <td>Polio</td>
                    <td>8</td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                  </tbody>
              </table> 
            
            ");
INSERT INTO imunisasi VALUES("2","2","
            
            <table border="1" width="100%" style="text-align: center;">
                  <thead>
                    <tr>
                      <th style="background-color: #bac7a7"><center>Jenis Imunisasi</center></th>
                      <th style="background-color: #bac7a7"><center>Usia Saat Imunisasi (Bulan)</center></th>
                    </tr>
                  </thead>
                  <tbody>
                   <tr>
                    <td>Polio</td>
                    <td>7</td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>
                    <td></td>
                   </tr>
                  </tbody>
              </table> 
            
            ");



CREATE TABLE `kabkot` (
  `id_kabkot` char(4) NOT NULL,
  `kabkot` varchar(45) NOT NULL,
  `provinsi_id` char(2) NOT NULL,
  PRIMARY KEY (`id_kabkot`),
  KEY `provinsi_id` (`provinsi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kabkot VALUES("3101","Kabupaten Administratif Kepulauan Seribu","31");
INSERT INTO kabkot VALUES("3171","Kota Administratif Jakarta Pusat","31");
INSERT INTO kabkot VALUES("3172","Kota Administratif Jakarta Utara","31");
INSERT INTO kabkot VALUES("3173","Kota Administratif Jakarta Barat","31");
INSERT INTO kabkot VALUES("3174","Kota Administratif Jakarta Selatan","31");
INSERT INTO kabkot VALUES("3175","Kota Administratif Jakarta Timur","31");
INSERT INTO kabkot VALUES("3201","Kabupaten Bogor","32");
INSERT INTO kabkot VALUES("3202","Kabupaten Sukabumi","32");
INSERT INTO kabkot VALUES("3203","Kabupaten Cianjur","32");
INSERT INTO kabkot VALUES("3204","Kabupaten Bandung","32");
INSERT INTO kabkot VALUES("3205","Kabupaten Garut","32");
INSERT INTO kabkot VALUES("3206","Kabupaten Tasikmalaya","32");
INSERT INTO kabkot VALUES("3207","Kabupaten Ciamis","32");
INSERT INTO kabkot VALUES("3208","Kabupaten Kuningan","32");
INSERT INTO kabkot VALUES("3209","Kabupaten Cirebon","32");
INSERT INTO kabkot VALUES("3210","Kabupaten Majalengka","32");
INSERT INTO kabkot VALUES("3211","Kabupaten Sumedang","32");
INSERT INTO kabkot VALUES("3212","Kabupaten Indramayu","32");
INSERT INTO kabkot VALUES("3213","Kabupaten Subang","32");
INSERT INTO kabkot VALUES("3214","Kabupaten Purwakarta","32");
INSERT INTO kabkot VALUES("3215","Kabupaten Karawang","32");
INSERT INTO kabkot VALUES("3216","Kabupaten Bekasi","32");
INSERT INTO kabkot VALUES("3217","Kabupaten Bandung Barat","32");
INSERT INTO kabkot VALUES("3218","Kabupaten Pangandaran","32");
INSERT INTO kabkot VALUES("3271","Kota Bogor","32");
INSERT INTO kabkot VALUES("3272","Kota Sukabumi","32");
INSERT INTO kabkot VALUES("3273","Kota Bandung","32");
INSERT INTO kabkot VALUES("3274","Kota Cirebon","32");
INSERT INTO kabkot VALUES("3275","Kota Bekasi","32");
INSERT INTO kabkot VALUES("3276","Kota Depok","32");
INSERT INTO kabkot VALUES("3277","Kota Cimahi","32");
INSERT INTO kabkot VALUES("3278","Kota Tasikmalaya","32");
INSERT INTO kabkot VALUES("3279","Kota Banjar","32");
INSERT INTO kabkot VALUES("3601","Kabupaten Pandeglang","36");
INSERT INTO kabkot VALUES("3602","Kabupaten Lebak","36");
INSERT INTO kabkot VALUES("3603","Kabupaten Tangerang","36");
INSERT INTO kabkot VALUES("3604","Kabupaten Serang","36");
INSERT INTO kabkot VALUES("3671","Kota Tangerang","36");
INSERT INTO kabkot VALUES("3672","Kota Cilegon","36");
INSERT INTO kabkot VALUES("3673","Kota Serang","36");
INSERT INTO kabkot VALUES("3674","Kota Tangerang Selatan","36");



CREATE TABLE `kartu_keluarga` (
  `id_kartu_keluarga` int(10) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `file_kartu_keluarga` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kartu_keluarga`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `pendaftaran_id_2` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO kartu_keluarga VALUES("1","20","123123123123123123","20_kartu-keluarga.pdf");
INSERT INTO kartu_keluarga VALUES("2","24","234234234234234234","24_kartu-keluarga.pdf");
INSERT INTO kartu_keluarga VALUES("5","21","887990809","21_rekam-medis.pdf");
INSERT INTO kartu_keluarga VALUES("7","1","320987658909876543","1_rekam-medis.pdf");
INSERT INTO kartu_keluarga VALUES("9","2","320987658909876543","2_rekam-medis.pdf");



CREATE TABLE `kb` (
  `id_kb` int(3) NOT NULL AUTO_INCREMENT,
  `kb` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kb`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO kb VALUES("1","IUD");
INSERT INTO kb VALUES("2","Kondom");
INSERT INTO kb VALUES("3","Hormonal(pil)");
INSERT INTO kb VALUES("4","Implan");
INSERT INTO kb VALUES("5","Suntik ");
INSERT INTO kb VALUES("6","Tubektomi");
INSERT INTO kb VALUES("7","Tidak Ada");



CREATE TABLE `kebortu` (
  `id_kebortu` int(3) NOT NULL AUTO_INCREMENT,
  `kebortu` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kebortu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO kebortu VALUES("1","Merokok");
INSERT INTO kebortu VALUES("2","Alkohol");
INSERT INTO kebortu VALUES("3","Obat");
INSERT INTO kebortu VALUES("4","Jamu");
INSERT INTO kebortu VALUES("5","Olahraga");
INSERT INTO kebortu VALUES("6","Konsumsi Vitamin");



CREATE TABLE `kecamatan` (
  `id_kecamatan` char(6) NOT NULL,
  `kecamatan` varchar(70) NOT NULL,
  `kabkot_id` char(4) NOT NULL,
  PRIMARY KEY (`id_kecamatan`),
  KEY `kabkot_id` (`kabkot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kecamatan VALUES("310101","Kepulauan Seribu Utara","3101");
INSERT INTO kecamatan VALUES("310102","Kepulauan Seribu Selatan","3101");
INSERT INTO kecamatan VALUES("317101","Gambir","3171");
INSERT INTO kecamatan VALUES("317102","Sawah Besar","3171");
INSERT INTO kecamatan VALUES("317103","Kemayoran","3171");
INSERT INTO kecamatan VALUES("317104","Senen","3171");
INSERT INTO kecamatan VALUES("317105","Cempaka Putih","3171");
INSERT INTO kecamatan VALUES("317106","Menteng","3171");
INSERT INTO kecamatan VALUES("317107","Tanah Abang","3171");
INSERT INTO kecamatan VALUES("317108","Johar Baru","3171");
INSERT INTO kecamatan VALUES("317201","Penjaringan","3172");
INSERT INTO kecamatan VALUES("317202","Tanjung Priok","3172");
INSERT INTO kecamatan VALUES("317203","Koja","3172");
INSERT INTO kecamatan VALUES("317204","Cilincing","3172");
INSERT INTO kecamatan VALUES("317205","Pademangan","3172");
INSERT INTO kecamatan VALUES("317206","Kelapa Gading","3172");
INSERT INTO kecamatan VALUES("317301","Cengkareng","3173");
INSERT INTO kecamatan VALUES("317302","Grogol Petamburan","3173");
INSERT INTO kecamatan VALUES("317303","Taman Sari","3173");
INSERT INTO kecamatan VALUES("317304","Tambora","3173");
INSERT INTO kecamatan VALUES("317305","Kebon Jeruk","3173");
INSERT INTO kecamatan VALUES("317306","Kalideres","3173");
INSERT INTO kecamatan VALUES("317307","Pal Merah (Palmerah)","3173");
INSERT INTO kecamatan VALUES("317308","Kembangan","3173");
INSERT INTO kecamatan VALUES("317401","Tebet","3174");
INSERT INTO kecamatan VALUES("317402","Setiabudi (Setia Budi)","3174");
INSERT INTO kecamatan VALUES("317403","Mampang Prapatan","3174");
INSERT INTO kecamatan VALUES("317404","Pasar Minggu","3174");
INSERT INTO kecamatan VALUES("317405","Kebayoran Lama","3174");
INSERT INTO kecamatan VALUES("317406","Cilandak","3174");
INSERT INTO kecamatan VALUES("317407","Kebayoran Baru","3174");
INSERT INTO kecamatan VALUES("317408","Pancoran","3174");
INSERT INTO kecamatan VALUES("317409","Jagakarsa","3174");
INSERT INTO kecamatan VALUES("317410","Pesanggrahan","3174");
INSERT INTO kecamatan VALUES("317501","Matraman","3175");
INSERT INTO kecamatan VALUES("317502","Pulogadung (Pulo Gadung)","3175");
INSERT INTO kecamatan VALUES("317503","Jatinegara","3175");
INSERT INTO kecamatan VALUES("317504","Kramatjati (Kramat Jati)","3175");
INSERT INTO kecamatan VALUES("317505","Pasar Rebo","3175");
INSERT INTO kecamatan VALUES("317506","Cakung","3175");
INSERT INTO kecamatan VALUES("317507","Duren Sawit","3175");
INSERT INTO kecamatan VALUES("317508","Makasar","3175");
INSERT INTO kecamatan VALUES("317509","Ciracas","3175");
INSERT INTO kecamatan VALUES("317510","Cipayung","3175");
INSERT INTO kecamatan VALUES("320101","Cibinong","3201");
INSERT INTO kecamatan VALUES("320102","Gunung Putri","3201");
INSERT INTO kecamatan VALUES("320103","Citeureup","3201");
INSERT INTO kecamatan VALUES("320104","Sukaraja","3201");
INSERT INTO kecamatan VALUES("320105","Babakan Madang","3201");
INSERT INTO kecamatan VALUES("320106","Jonggol","3201");
INSERT INTO kecamatan VALUES("320107","Cileungsi","3201");
INSERT INTO kecamatan VALUES("320108","Cariu","3201");
INSERT INTO kecamatan VALUES("320109","Sukamakmur","3201");
INSERT INTO kecamatan VALUES("320110","Parung","3201");
INSERT INTO kecamatan VALUES("320111","Gunung Sindur","3201");
INSERT INTO kecamatan VALUES("320112","Kemang","3201");
INSERT INTO kecamatan VALUES("320113","Bojong Gede (Bojonggede)","3201");
INSERT INTO kecamatan VALUES("320114","Leuwiliang","3201");
INSERT INTO kecamatan VALUES("320115","Ciampea","3201");
INSERT INTO kecamatan VALUES("320116","Cibungbulang","3201");
INSERT INTO kecamatan VALUES("320117","Pamijahan","3201");
INSERT INTO kecamatan VALUES("320118","Rumpin","3201");
INSERT INTO kecamatan VALUES("320119","Jasinga","3201");
INSERT INTO kecamatan VALUES("320120","Parung Panjang","3201");
INSERT INTO kecamatan VALUES("320121","Nanggung","3201");
INSERT INTO kecamatan VALUES("320122","Cigudeg","3201");
INSERT INTO kecamatan VALUES("320123","Tenjo","3201");
INSERT INTO kecamatan VALUES("320124","Ciawi","3201");
INSERT INTO kecamatan VALUES("320125","Cisarua","3201");
INSERT INTO kecamatan VALUES("320126","Megamendung","3201");
INSERT INTO kecamatan VALUES("320127","Caringin","3201");
INSERT INTO kecamatan VALUES("320128","Cijeruk","3201");
INSERT INTO kecamatan VALUES("320129","Ciomas","3201");
INSERT INTO kecamatan VALUES("320130","Dramaga","3201");
INSERT INTO kecamatan VALUES("320131","Tamansari","3201");
INSERT INTO kecamatan VALUES("320132","Klapanunggal","3201");
INSERT INTO kecamatan VALUES("320133","Ciseeng","3201");
INSERT INTO kecamatan VALUES("320134","Ranca Bungur","3201");
INSERT INTO kecamatan VALUES("320135","Sukajaya","3201");
INSERT INTO kecamatan VALUES("320136","Tanjungsari","3201");
INSERT INTO kecamatan VALUES("320137","Tajurhalang","3201");
INSERT INTO kecamatan VALUES("320138","Cigombong","3201");
INSERT INTO kecamatan VALUES("320139","Leuwisadeng","3201");
INSERT INTO kecamatan VALUES("320140","Tenjolaya","3201");
INSERT INTO kecamatan VALUES("320201","Palabuhanratu (Pelabuhanratu)","3202");
INSERT INTO kecamatan VALUES("320202","Simpenan","3202");
INSERT INTO kecamatan VALUES("320203","Cikakak","3202");
INSERT INTO kecamatan VALUES("320204","Bantargadung","3202");
INSERT INTO kecamatan VALUES("320205","Cisolok","3202");
INSERT INTO kecamatan VALUES("320206","Cikidang","3202");
INSERT INTO kecamatan VALUES("320207","Lengkong","3202");
INSERT INTO kecamatan VALUES("320208","Jampangtengah (Jampang Tengah)","3202");
INSERT INTO kecamatan VALUES("320209","Warungkiara","3202");
INSERT INTO kecamatan VALUES("320210","Cikembar","3202");
INSERT INTO kecamatan VALUES("320211","Cibadak","3202");
INSERT INTO kecamatan VALUES("320212","Nagrak","3202");
INSERT INTO kecamatan VALUES("320213","Parungkuda (Parung Kuda)","3202");
INSERT INTO kecamatan VALUES("320214","Bojonggenteng (Bojong Genteng)","3202");
INSERT INTO kecamatan VALUES("320215","Parakansalak (Parakan Salak)","3202");
INSERT INTO kecamatan VALUES("320216","Cicurug","3202");
INSERT INTO kecamatan VALUES("320217","Cidahu","3202");
INSERT INTO kecamatan VALUES("320218","Kalapanunggal (Kalapa Nunggal)","3202");
INSERT INTO kecamatan VALUES("320219","Kabandungan","3202");
INSERT INTO kecamatan VALUES("320220","Waluran","3202");
INSERT INTO kecamatan VALUES("320221","Jampangkulon (Jampang Kulon)","3202");
INSERT INTO kecamatan VALUES("320222","Ciemas","3202");
INSERT INTO kecamatan VALUES("320223","Kalibunder","3202");
INSERT INTO kecamatan VALUES("320224","Surade","3202");
INSERT INTO kecamatan VALUES("320225","Cibitung","3202");
INSERT INTO kecamatan VALUES("320226","Ciracap","3202");
INSERT INTO kecamatan VALUES("320227","Gunungguruh","3202");
INSERT INTO kecamatan VALUES("320228","Cicantayan","3202");
INSERT INTO kecamatan VALUES("320229","Cisaat","3202");
INSERT INTO kecamatan VALUES("320230","Kadudampit","3202");
INSERT INTO kecamatan VALUES("320231","Caringin","3202");
INSERT INTO kecamatan VALUES("320232","Sukabumi","3202");
INSERT INTO kecamatan VALUES("320233","Sukaraja","3202");
INSERT INTO kecamatan VALUES("320234","Kebonpedes","3202");
INSERT INTO kecamatan VALUES("320235","Cireunghas","3202");
INSERT INTO kecamatan VALUES("320236","Sukalarang","3202");
INSERT INTO kecamatan VALUES("320237","Pabuaran","3202");
INSERT INTO kecamatan VALUES("320238","Purabaya","3202");
INSERT INTO kecamatan VALUES("320239","Nyalindung","3202");
INSERT INTO kecamatan VALUES("320240","Gegerbitung (Geger Bitung)","3202");
INSERT INTO kecamatan VALUES("320241","Sagaranten","3202");
INSERT INTO kecamatan VALUES("320242","Curugkembar","3202");
INSERT INTO kecamatan VALUES("320243","Cidolog","3202");
INSERT INTO kecamatan VALUES("320244","Cidadap","3202");
INSERT INTO kecamatan VALUES("320245","Tegalbuleud","3202");
INSERT INTO kecamatan VALUES("320246","Cimanggu","3202");
INSERT INTO kecamatan VALUES("320247","Ciambar","3202");
INSERT INTO kecamatan VALUES("320301","Cianjur","3203");
INSERT INTO kecamatan VALUES("320302","Warungkondang","3203");
INSERT INTO kecamatan VALUES("320303","Cibeber","3203");
INSERT INTO kecamatan VALUES("320304","Cilaku","3203");
INSERT INTO kecamatan VALUES("320305","Ciranjang","3203");
INSERT INTO kecamatan VALUES("320306","Bojongpicung","3203");
INSERT INTO kecamatan VALUES("320307","Karangtengah","3203");
INSERT INTO kecamatan VALUES("320308","Mande","3203");
INSERT INTO kecamatan VALUES("320309","Sukaluyu","3203");
INSERT INTO kecamatan VALUES("320310","Pacet","3203");
INSERT INTO kecamatan VALUES("320311","Cugenang","3203");
INSERT INTO kecamatan VALUES("320312","Cikalongkulon","3203");
INSERT INTO kecamatan VALUES("320313","Sukaresmi","3203");
INSERT INTO kecamatan VALUES("320314","Sukanagara","3203");
INSERT INTO kecamatan VALUES("320315","Campaka","3203");
INSERT INTO kecamatan VALUES("320316","Takokak","3203");
INSERT INTO kecamatan VALUES("320317","Kadupandak","3203");
INSERT INTO kecamatan VALUES("320318","Pagelaran","3203");
INSERT INTO kecamatan VALUES("320319","Tanggeung","3203");
INSERT INTO kecamatan VALUES("320320","Cibinong","3203");
INSERT INTO kecamatan VALUES("320321","Sindangbarang","3203");
INSERT INTO kecamatan VALUES("320322","Agrabinta","3203");
INSERT INTO kecamatan VALUES("320323","Cidaun","3203");
INSERT INTO kecamatan VALUES("320324","Naringgul","3203");
INSERT INTO kecamatan VALUES("320325","Campakamulya (Campaka Mulya)","3203");
INSERT INTO kecamatan VALUES("320326","Cikadu","3203");
INSERT INTO kecamatan VALUES("320327","Gekbrong","3203");
INSERT INTO kecamatan VALUES("320328","Cipanas","3203");
INSERT INTO kecamatan VALUES("320329","Cijati","3203");
INSERT INTO kecamatan VALUES("320330","Leles","3203");
INSERT INTO kecamatan VALUES("320331","Haurwangi","3203");
INSERT INTO kecamatan VALUES("320332","Pasirkuda","3203");
INSERT INTO kecamatan VALUES("320405","Cileunyi","3204");
INSERT INTO kecamatan VALUES("320406","Cimenyan (Cimeunyan)","3204");
INSERT INTO kecamatan VALUES("320407","Cilengkrang","3204");
INSERT INTO kecamatan VALUES("320408","Bojongsoang","3204");
INSERT INTO kecamatan VALUES("320409","Margahayu","3204");
INSERT INTO kecamatan VALUES("320410","Margaasih","3204");
INSERT INTO kecamatan VALUES("320411","Katapang","3204");
INSERT INTO kecamatan VALUES("320412","Dayeuhkolot","3204");
INSERT INTO kecamatan VALUES("320413","Banjaran","3204");
INSERT INTO kecamatan VALUES("320414","Pameungpeuk","3204");
INSERT INTO kecamatan VALUES("320415","Pangalengan","3204");
INSERT INTO kecamatan VALUES("320416","Arjasari","3204");
INSERT INTO kecamatan VALUES("320417","Cimaung","3204");
INSERT INTO kecamatan VALUES("320425","Cicalengka","3204");
INSERT INTO kecamatan VALUES("320426","Nagreg","3204");
INSERT INTO kecamatan VALUES("320427","Cikancung","3204");
INSERT INTO kecamatan VALUES("320428","Rancaekek","3204");
INSERT INTO kecamatan VALUES("320429","Ciparay","3204");
INSERT INTO kecamatan VALUES("320430","Pacet","3204");
INSERT INTO kecamatan VALUES("320431","Kertasari","3204");
INSERT INTO kecamatan VALUES("320432","Baleendah","3204");
INSERT INTO kecamatan VALUES("320433","Majalaya","3204");
INSERT INTO kecamatan VALUES("320434","Solokanjeruk (Solokan Jeruk)","3204");
INSERT INTO kecamatan VALUES("320435","Paseh","3204");
INSERT INTO kecamatan VALUES("320436","Ibun","3204");
INSERT INTO kecamatan VALUES("320437","Soreang","3204");
INSERT INTO kecamatan VALUES("320438","Pasirjambu","3204");
INSERT INTO kecamatan VALUES("320439","Ciwidey","3204");
INSERT INTO kecamatan VALUES("320440","Rancabali (Ranca Bali)","3204");
INSERT INTO kecamatan VALUES("320444","Cangkuang","3204");
INSERT INTO kecamatan VALUES("320446","Kutawaringin","3204");
INSERT INTO kecamatan VALUES("320501","Garut Kota","3205");
INSERT INTO kecamatan VALUES("320502","Karangpawitan","3205");
INSERT INTO kecamatan VALUES("320503","Wanaraja","3205");
INSERT INTO kecamatan VALUES("320504","Tarogong Kaler","3205");
INSERT INTO kecamatan VALUES("320505","Tarogong Kidul","3205");
INSERT INTO kecamatan VALUES("320506","Banyuresmi","3205");
INSERT INTO kecamatan VALUES("320507","Samarang","3205");
INSERT INTO kecamatan VALUES("320508","Pasirwangi","3205");
INSERT INTO kecamatan VALUES("320509","Leles","3205");
INSERT INTO kecamatan VALUES("320510","Kadungora","3205");
INSERT INTO kecamatan VALUES("320511","Leuwigoong","3205");
INSERT INTO kecamatan VALUES("320512","Cibatu","3205");
INSERT INTO kecamatan VALUES("320513","Kersamanah","3205");
INSERT INTO kecamatan VALUES("320514","Malangbong","3205");
INSERT INTO kecamatan VALUES("320515","Sukawening","3205");
INSERT INTO kecamatan VALUES("320516","Karangtengah","3205");
INSERT INTO kecamatan VALUES("320517","Bayongbong","3205");
INSERT INTO kecamatan VALUES("320518","Cigedug","3205");
INSERT INTO kecamatan VALUES("320519","Cilawu","3205");
INSERT INTO kecamatan VALUES("320520","Cisurupan","3205");
INSERT INTO kecamatan VALUES("320521","Sukaresmi","3205");
INSERT INTO kecamatan VALUES("320522","Cikajang","3205");
INSERT INTO kecamatan VALUES("320523","Banjarwangi","3205");
INSERT INTO kecamatan VALUES("320524","Singajaya","3205");
INSERT INTO kecamatan VALUES("320525","Cihurip","3205");
INSERT INTO kecamatan VALUES("320526","Peundeuy","3205");
INSERT INTO kecamatan VALUES("320527","Pameungpeuk","3205");
INSERT INTO kecamatan VALUES("320528","Cisompet","3205");
INSERT INTO kecamatan VALUES("320529","Cibalong","3205");
INSERT INTO kecamatan VALUES("320530","Cikelet","3205");
INSERT INTO kecamatan VALUES("320531","Bungbulang","3205");
INSERT INTO kecamatan VALUES("320532","Mekarmukti","3205");
INSERT INTO kecamatan VALUES("320533","Pakenjeng","3205");
INSERT INTO kecamatan VALUES("320534","Pamulihan","3205");
INSERT INTO kecamatan VALUES("320535","Cisewu","3205");
INSERT INTO kecamatan VALUES("320536","Caringin","3205");
INSERT INTO kecamatan VALUES("320537","Talegong","3205");
INSERT INTO kecamatan VALUES("320538","Blubur Limbangan","3205");
INSERT INTO kecamatan VALUES("320539","Selaawi","3205");
INSERT INTO kecamatan VALUES("320540","Cibiuk","3205");
INSERT INTO kecamatan VALUES("320541","Pangatikan","3205");
INSERT INTO kecamatan VALUES("320542","Sucinaraja","3205");
INSERT INTO kecamatan VALUES("320601","Cipatujah","3206");
INSERT INTO kecamatan VALUES("320602","Karangnunggal","3206");
INSERT INTO kecamatan VALUES("320603","Cikalong","3206");
INSERT INTO kecamatan VALUES("320604","Pancatengah","3206");
INSERT INTO kecamatan VALUES("320605","Cikatomas","3206");
INSERT INTO kecamatan VALUES("320606","Cibalong","3206");
INSERT INTO kecamatan VALUES("320607","Parungponteng","3206");
INSERT INTO kecamatan VALUES("320608","Bantarkalong","3206");
INSERT INTO kecamatan VALUES("320609","Bojongasih","3206");
INSERT INTO kecamatan VALUES("320610","Culamega","3206");
INSERT INTO kecamatan VALUES("320611","Bojonggambir","3206");
INSERT INTO kecamatan VALUES("320612","Sodonghilir","3206");
INSERT INTO kecamatan VALUES("320613","Taraju","3206");
INSERT INTO kecamatan VALUES("320614","Salawu","3206");
INSERT INTO kecamatan VALUES("320615","Puspahiang","3206");
INSERT INTO kecamatan VALUES("320616","Tanjungjaya","3206");
INSERT INTO kecamatan VALUES("320617","Sukaraja","3206");
INSERT INTO kecamatan VALUES("320618","Salopa","3206");
INSERT INTO kecamatan VALUES("320619","Jatiwaras","3206");
INSERT INTO kecamatan VALUES("320620","Cineam","3206");
INSERT INTO kecamatan VALUES("320621","Karang Jaya","3206");
INSERT INTO kecamatan VALUES("320622","Manonjaya","3206");
INSERT INTO kecamatan VALUES("320623","Gunung Tanjung","3206");
INSERT INTO kecamatan VALUES("320624","Singaparna","3206");
INSERT INTO kecamatan VALUES("320625","Mangunreja","3206");
INSERT INTO kecamatan VALUES("320626","Sukarame","3206");
INSERT INTO kecamatan VALUES("320627","Cigalontang","3206");
INSERT INTO kecamatan VALUES("320628","Leuwisari","3206");
INSERT INTO kecamatan VALUES("320629","Padakembang","3206");
INSERT INTO kecamatan VALUES("320630","Sariwangi","3206");
INSERT INTO kecamatan VALUES("320631","Sukaratu","3206");
INSERT INTO kecamatan VALUES("320632","Cisayong","3206");
INSERT INTO kecamatan VALUES("320633","Sukahening","3206");
INSERT INTO kecamatan VALUES("320634","Rajapolah","3206");
INSERT INTO kecamatan VALUES("320635","Jamanis","3206");
INSERT INTO kecamatan VALUES("320636","Ciawi","3206");
INSERT INTO kecamatan VALUES("320637","Kadipaten","3206");
INSERT INTO kecamatan VALUES("320638","Pagerageung","3206");
INSERT INTO kecamatan VALUES("320639","Sukaresik","3206");
INSERT INTO kecamatan VALUES("320701","Ciamis","3207");
INSERT INTO kecamatan VALUES("320702","Cikoneng","3207");
INSERT INTO kecamatan VALUES("320703","Cijeungjing","3207");
INSERT INTO kecamatan VALUES("320704","Sadananya","3207");
INSERT INTO kecamatan VALUES("320705","Cidolog","3207");
INSERT INTO kecamatan VALUES("320706","Cihaurbeuti","3207");
INSERT INTO kecamatan VALUES("320707","Panumbangan","3207");
INSERT INTO kecamatan VALUES("320708","Panjalu","3207");
INSERT INTO kecamatan VALUES("320709","Kawali","3207");
INSERT INTO kecamatan VALUES("320710","Panawangan","3207");
INSERT INTO kecamatan VALUES("320711","Cipaku","3207");
INSERT INTO kecamatan VALUES("320712","Jatinagara","3207");
INSERT INTO kecamatan VALUES("320713","Rajadesa","3207");
INSERT INTO kecamatan VALUES("320714","Sukadana","3207");
INSERT INTO kecamatan VALUES("320715","Rancah","3207");
INSERT INTO kecamatan VALUES("320716","Tambaksari","3207");
INSERT INTO kecamatan VALUES("320717","Lakbok","3207");
INSERT INTO kecamatan VALUES("320718","Banjarsari","3207");
INSERT INTO kecamatan VALUES("320719","Pamarican","3207");
INSERT INTO kecamatan VALUES("320729","Cimaragas","3207");
INSERT INTO kecamatan VALUES("320730","Cisaga","3207");
INSERT INTO kecamatan VALUES("320731","Sindangkasih","3207");
INSERT INTO kecamatan VALUES("320732","Baregbeg","3207");
INSERT INTO kecamatan VALUES("320733","Sukamantri","3207");
INSERT INTO kecamatan VALUES("320734","Lumbung","3207");
INSERT INTO kecamatan VALUES("320735","Purwadadi","3207");
INSERT INTO kecamatan VALUES("320737","Banjaranyar","3207");
INSERT INTO kecamatan VALUES("320801","Kadugede","3208");
INSERT INTO kecamatan VALUES("320802","Ciniru","3208");
INSERT INTO kecamatan VALUES("320803","Subang","3208");
INSERT INTO kecamatan VALUES("320804","Ciwaru","3208");
INSERT INTO kecamatan VALUES("320805","Cibingbin","3208");
INSERT INTO kecamatan VALUES("320806","Luragung","3208");
INSERT INTO kecamatan VALUES("320807","Lebakwangi","3208");
INSERT INTO kecamatan VALUES("320808","Garawangi","3208");
INSERT INTO kecamatan VALUES("320809","Kuningan","3208");
INSERT INTO kecamatan VALUES("320810","Ciawigebang","3208");
INSERT INTO kecamatan VALUES("320811","Cidahu","3208");
INSERT INTO kecamatan VALUES("320812","Jalaksana","3208");
INSERT INTO kecamatan VALUES("320813","Cilimus","3208");
INSERT INTO kecamatan VALUES("320814","Mandirancan","3208");
INSERT INTO kecamatan VALUES("320815","Selajambe","3208");
INSERT INTO kecamatan VALUES("320816","Kramatmulya (Kramat Mulya)","3208");
INSERT INTO kecamatan VALUES("320817","Darma","3208");
INSERT INTO kecamatan VALUES("320818","Cigugur","3208");
INSERT INTO kecamatan VALUES("320819","Pasawahan","3208");
INSERT INTO kecamatan VALUES("320820","Nusaherang","3208");
INSERT INTO kecamatan VALUES("320821","Cipicung","3208");
INSERT INTO kecamatan VALUES("320822","Pancalang","3208");
INSERT INTO kecamatan VALUES("320823","Japara","3208");
INSERT INTO kecamatan VALUES("320824","Cimahi","3208");
INSERT INTO kecamatan VALUES("320825","Cilebak","3208");
INSERT INTO kecamatan VALUES("320826","Hantara","3208");
INSERT INTO kecamatan VALUES("320827","Kalimanggis","3208");
INSERT INTO kecamatan VALUES("320828","Cibeureum","3208");
INSERT INTO kecamatan VALUES("320829","Karang Kancana (Karangkancana)","3208");
INSERT INTO kecamatan VALUES("320830","Maleber","3208");
INSERT INTO kecamatan VALUES("320831","Sindang Agung (Sindangagung)","3208");
INSERT INTO kecamatan VALUES("320832","Cigandamekar","3208");
INSERT INTO kecamatan VALUES("320901","Waled","3209");
INSERT INTO kecamatan VALUES("320902","Ciledug","3209");
INSERT INTO kecamatan VALUES("320903","Losari","3209");
INSERT INTO kecamatan VALUES("320904","Pabedilan","3209");
INSERT INTO kecamatan VALUES("320905","Babakan","3209");
INSERT INTO kecamatan VALUES("320906","Karangsembung","3209");
INSERT INTO kecamatan VALUES("320907","Lemahabang","3209");
INSERT INTO kecamatan VALUES("320908","Susukan Lebak","3209");
INSERT INTO kecamatan VALUES("320909","Sedong","3209");
INSERT INTO kecamatan VALUES("320910","Astanajapura","3209");
INSERT INTO kecamatan VALUES("320911","Pangenan","3209");
INSERT INTO kecamatan VALUES("320912","Mundu","3209");
INSERT INTO kecamatan VALUES("320913","Beber","3209");
INSERT INTO kecamatan VALUES("320914","Talun (Cirebon Selatan)","3209");
INSERT INTO kecamatan VALUES("320915","Sumber","3209");
INSERT INTO kecamatan VALUES("320916","Dukupuntang","3209");
INSERT INTO kecamatan VALUES("320917","Palimanan","3209");
INSERT INTO kecamatan VALUES("320918","Plumbon","3209");
INSERT INTO kecamatan VALUES("320919","Weru","3209");
INSERT INTO kecamatan VALUES("320920","Kedawung","3209");
INSERT INTO kecamatan VALUES("320921","Gunung Jati (Cirebon Utara)","3209");
INSERT INTO kecamatan VALUES("320922","Kapetakan","3209");
INSERT INTO kecamatan VALUES("320923","Klangenan","3209");
INSERT INTO kecamatan VALUES("320924","Arjawinangun","3209");
INSERT INTO kecamatan VALUES("320925","Panguragan","3209");
INSERT INTO kecamatan VALUES("320926","Ciwaringin","3209");
INSERT INTO kecamatan VALUES("320927","Susukan","3209");
INSERT INTO kecamatan VALUES("320928","Gegesik","3209");
INSERT INTO kecamatan VALUES("320929","Kaliwedi","3209");
INSERT INTO kecamatan VALUES("320930","Gebang","3209");
INSERT INTO kecamatan VALUES("320931","Depok","3209");
INSERT INTO kecamatan VALUES("320932","Pasaleman","3209");
INSERT INTO kecamatan VALUES("320933","Pabuaran","3209");
INSERT INTO kecamatan VALUES("320934","Karangwareng","3209");
INSERT INTO kecamatan VALUES("320935","Tengah Tani","3209");
INSERT INTO kecamatan VALUES("320936","Plered","3209");
INSERT INTO kecamatan VALUES("320937","Gempol","3209");
INSERT INTO kecamatan VALUES("320938","Greged (Greget)","3209");
INSERT INTO kecamatan VALUES("320939","Suranenggala","3209");
INSERT INTO kecamatan VALUES("320940","Jamblang","3209");
INSERT INTO kecamatan VALUES("321001","Lemahsugih","3210");
INSERT INTO kecamatan VALUES("321002","Bantarujeg","3210");
INSERT INTO kecamatan VALUES("321003","Cikijing","3210");
INSERT INTO kecamatan VALUES("321004","Talaga","3210");
INSERT INTO kecamatan VALUES("321005","Argapura","3210");
INSERT INTO kecamatan VALUES("321006","Maja","3210");
INSERT INTO kecamatan VALUES("321007","Majalengka","3210");
INSERT INTO kecamatan VALUES("321008","Sukahaji","3210");
INSERT INTO kecamatan VALUES("321009","Rajagaluh","3210");
INSERT INTO kecamatan VALUES("321010","Leuwimunding","3210");
INSERT INTO kecamatan VALUES("321011","Jatiwangi","3210");
INSERT INTO kecamatan VALUES("321012","Dawuan","3210");
INSERT INTO kecamatan VALUES("321013","Kadipaten","3210");
INSERT INTO kecamatan VALUES("321014","Kertajati","3210");
INSERT INTO kecamatan VALUES("321015","Jatitujuh","3210");
INSERT INTO kecamatan VALUES("321016","Ligung","3210");
INSERT INTO kecamatan VALUES("321017","Sumberjaya","3210");
INSERT INTO kecamatan VALUES("321018","Panyingkiran","3210");
INSERT INTO kecamatan VALUES("321019","Palasah","3210");
INSERT INTO kecamatan VALUES("321020","Cigasong","3210");
INSERT INTO kecamatan VALUES("321021","Sindangwangi","3210");
INSERT INTO kecamatan VALUES("321022","Banjaran","3210");
INSERT INTO kecamatan VALUES("321023","Cingambul","3210");
INSERT INTO kecamatan VALUES("321024","Kasokandel","3210");
INSERT INTO kecamatan VALUES("321025","Sindang","3210");
INSERT INTO kecamatan VALUES("321026","Malausma","3210");
INSERT INTO kecamatan VALUES("321101","Wado","3211");
INSERT INTO kecamatan VALUES("321102","Jatinunggal","3211");
INSERT INTO kecamatan VALUES("321103","Darmaraja","3211");
INSERT INTO kecamatan VALUES("321104","Cibugel","3211");
INSERT INTO kecamatan VALUES("321105","Cisitu","3211");
INSERT INTO kecamatan VALUES("321106","Situraja","3211");
INSERT INTO kecamatan VALUES("321107","Conggeang","3211");
INSERT INTO kecamatan VALUES("321108","Paseh","3211");
INSERT INTO kecamatan VALUES("321109","Surian","3211");
INSERT INTO kecamatan VALUES("321110","Buahdua","3211");
INSERT INTO kecamatan VALUES("321111","Tanjungsari","3211");
INSERT INTO kecamatan VALUES("321112","Sukasari","3211");
INSERT INTO kecamatan VALUES("321113","Pamulihan","3211");
INSERT INTO kecamatan VALUES("321114","Cimanggung","3211");
INSERT INTO kecamatan VALUES("321115","Jatinangor","3211");
INSERT INTO kecamatan VALUES("321116","Rancakalong","3211");
INSERT INTO kecamatan VALUES("321117","Sumedang Selatan","3211");
INSERT INTO kecamatan VALUES("321118","Sumedang Utara","3211");
INSERT INTO kecamatan VALUES("321119","Ganeas","3211");
INSERT INTO kecamatan VALUES("321120","Tanjungkerta","3211");
INSERT INTO kecamatan VALUES("321121","Tanjungmedar","3211");
INSERT INTO kecamatan VALUES("321122","Cimalaka","3211");
INSERT INTO kecamatan VALUES("321123","Cisarua","3211");
INSERT INTO kecamatan VALUES("321124","Tomo","3211");
INSERT INTO kecamatan VALUES("321125","Ujungjaya","3211");
INSERT INTO kecamatan VALUES("321126","Jatigede","3211");
INSERT INTO kecamatan VALUES("321201","Haurgeulis","3212");
INSERT INTO kecamatan VALUES("321202","Kroya","3212");
INSERT INTO kecamatan VALUES("321203","Gabuswetan","3212");
INSERT INTO kecamatan VALUES("321204","Cikedung","3212");
INSERT INTO kecamatan VALUES("321205","Lelea","3212");
INSERT INTO kecamatan VALUES("321206","Bangodua","3212");
INSERT INTO kecamatan VALUES("321207","Widasari","3212");
INSERT INTO kecamatan VALUES("321208","Kertasemaya","3212");
INSERT INTO kecamatan VALUES("321209","Krangkeng","3212");
INSERT INTO kecamatan VALUES("321210","Karangampel","3212");
INSERT INTO kecamatan VALUES("321211","Juntinyuat","3212");
INSERT INTO kecamatan VALUES("321212","Sliyeg","3212");
INSERT INTO kecamatan VALUES("321213","Jatibarang","3212");
INSERT INTO kecamatan VALUES("321214","Balongan","3212");
INSERT INTO kecamatan VALUES("321215","Indramayu","3212");
INSERT INTO kecamatan VALUES("321216","Sindang","3212");
INSERT INTO kecamatan VALUES("321217","Cantigi","3212");
INSERT INTO kecamatan VALUES("321218","Lohbener","3212");
INSERT INTO kecamatan VALUES("321219","Arahan","3212");
INSERT INTO kecamatan VALUES("321220","Losarang","3212");
INSERT INTO kecamatan VALUES("321221","Kandanghaur","3212");
INSERT INTO kecamatan VALUES("321222","Bongas","3212");
INSERT INTO kecamatan VALUES("321223","Anjatan","3212");
INSERT INTO kecamatan VALUES("321224","Sukra","3212");
INSERT INTO kecamatan VALUES("321225","Gantar","3212");
INSERT INTO kecamatan VALUES("321226","Trisi/Terisi","3212");
INSERT INTO kecamatan VALUES("321227","Sukagumiwang","3212");
INSERT INTO kecamatan VALUES("321228","Kedokan Bunder","3212");
INSERT INTO kecamatan VALUES("321229","Pasekan","3212");
INSERT INTO kecamatan VALUES("321230","Tukdana","3212");
INSERT INTO kecamatan VALUES("321231","Patrol","3212");
INSERT INTO kecamatan VALUES("321301","Sagalaherang","3213");
INSERT INTO kecamatan VALUES("321302","Cisalak","3213");
INSERT INTO kecamatan VALUES("321303","Subang","3213");
INSERT INTO kecamatan VALUES("321304","Kalijati","3213");
INSERT INTO kecamatan VALUES("321305","Pabuaran","3213");
INSERT INTO kecamatan VALUES("321306","Purwadadi","3213");
INSERT INTO kecamatan VALUES("321307","Pagaden","3213");
INSERT INTO kecamatan VALUES("321308","Binong","3213");
INSERT INTO kecamatan VALUES("321309","Ciasem","3213");
INSERT INTO kecamatan VALUES("321310","Pusakanagara","3213");
INSERT INTO kecamatan VALUES("321311","Pamanukan","3213");
INSERT INTO kecamatan VALUES("321312","Jalancagak","3213");
INSERT INTO kecamatan VALUES("321313","Blanakan","3213");
INSERT INTO kecamatan VALUES("321314","Tanjungsiang","3213");
INSERT INTO kecamatan VALUES("321315","Compreng","3213");
INSERT INTO kecamatan VALUES("321316","Patokbeusi","3213");
INSERT INTO kecamatan VALUES("321317","Cibogo","3213");
INSERT INTO kecamatan VALUES("321318","Cipunagara","3213");
INSERT INTO kecamatan VALUES("321319","Cijambe","3213");
INSERT INTO kecamatan VALUES("321320","Cipeundeuy","3213");
INSERT INTO kecamatan VALUES("321321","Legonkulon","3213");
INSERT INTO kecamatan VALUES("321322","Cikaum","3213");
INSERT INTO kecamatan VALUES("321323","Serangpanjang","3213");
INSERT INTO kecamatan VALUES("321324","Sukasari","3213");
INSERT INTO kecamatan VALUES("321325","Tambakdahan","3213");
INSERT INTO kecamatan VALUES("321326","Kasomalang","3213");
INSERT INTO kecamatan VALUES("321327","Dawuan","3213");
INSERT INTO kecamatan VALUES("321328","Pagaden Barat","3213");
INSERT INTO kecamatan VALUES("321329","Ciater","3213");
INSERT INTO kecamatan VALUES("321330","Pusakajaya","3213");
INSERT INTO kecamatan VALUES("321401","Purwakarta","3214");
INSERT INTO kecamatan VALUES("321402","Campaka","3214");
INSERT INTO kecamatan VALUES("321403","Jatiluhur","3214");
INSERT INTO kecamatan VALUES("321404","Plered","3214");
INSERT INTO kecamatan VALUES("321405","Sukatani","3214");
INSERT INTO kecamatan VALUES("321406","Darangdan","3214");
INSERT INTO kecamatan VALUES("321407","Maniis","3214");
INSERT INTO kecamatan VALUES("321408","Tegalwaru (Tegal Waru)","3214");
INSERT INTO kecamatan VALUES("321409","Wanayasa","3214");
INSERT INTO kecamatan VALUES("321410","Pasawahan","3214");
INSERT INTO kecamatan VALUES("321411","Bojong","3214");
INSERT INTO kecamatan VALUES("321412","Babakancikao","3214");
INSERT INTO kecamatan VALUES("321413","Bungursari","3214");
INSERT INTO kecamatan VALUES("321414","Cibatu","3214");
INSERT INTO kecamatan VALUES("321415","Sukasari","3214");
INSERT INTO kecamatan VALUES("321416","Pondoksalam","3214");
INSERT INTO kecamatan VALUES("321417","Kiarapedes","3214");
INSERT INTO kecamatan VALUES("321501","Karawang Barat","3215");
INSERT INTO kecamatan VALUES("321502","Pangkalan","3215");
INSERT INTO kecamatan VALUES("321503","Telukjambe Timur","3215");
INSERT INTO kecamatan VALUES("321504","Ciampel","3215");
INSERT INTO kecamatan VALUES("321505","Klari","3215");
INSERT INTO kecamatan VALUES("321506","Rengasdengklok","3215");
INSERT INTO kecamatan VALUES("321507","Kutawaluya","3215");
INSERT INTO kecamatan VALUES("321508","Batujaya","3215");
INSERT INTO kecamatan VALUES("321509","Tirtajaya","3215");
INSERT INTO kecamatan VALUES("321510","Pedes","3215");
INSERT INTO kecamatan VALUES("321511","Cibuaya","3215");
INSERT INTO kecamatan VALUES("321512","Pakisjaya","3215");
INSERT INTO kecamatan VALUES("321513","Cikampek","3215");
INSERT INTO kecamatan VALUES("321514","Jatisari","3215");
INSERT INTO kecamatan VALUES("321515","Cilamaya Wetan","3215");
INSERT INTO kecamatan VALUES("321516","Tirtamulya","3215");
INSERT INTO kecamatan VALUES("321517","Telagasari (Talagasari)","3215");
INSERT INTO kecamatan VALUES("321518","Rawamerta","3215");
INSERT INTO kecamatan VALUES("321519","Lemahabang","3215");
INSERT INTO kecamatan VALUES("321520","Tempuran","3215");
INSERT INTO kecamatan VALUES("321521","Majalaya","3215");
INSERT INTO kecamatan VALUES("321522","Jayakerta","3215");
INSERT INTO kecamatan VALUES("321523","Cilamaya Kulon","3215");
INSERT INTO kecamatan VALUES("321524","Banyusari","3215");
INSERT INTO kecamatan VALUES("321525","Kota Baru (Kotabaru)","3215");
INSERT INTO kecamatan VALUES("321526","Karawang Timur","3215");
INSERT INTO kecamatan VALUES("321527","Telukjambe Barat","3215");
INSERT INTO kecamatan VALUES("321528","Tegalwaru","3215");
INSERT INTO kecamatan VALUES("321529","Purwasari","3215");
INSERT INTO kecamatan VALUES("321530","Cilebar","3215");
INSERT INTO kecamatan VALUES("321601","Tarumajaya","3216");
INSERT INTO kecamatan VALUES("321602","Babelan","3216");
INSERT INTO kecamatan VALUES("321603","Sukawangi","3216");
INSERT INTO kecamatan VALUES("321604","Tambelang","3216");
INSERT INTO kecamatan VALUES("321605","Tambun Utara","3216");
INSERT INTO kecamatan VALUES("321606","Tambun Selatan","3216");
INSERT INTO kecamatan VALUES("321607","Cibitung","3216");
INSERT INTO kecamatan VALUES("321608","Cikarang Barat","3216");
INSERT INTO kecamatan VALUES("321609","Cikarang Utara","3216");
INSERT INTO kecamatan VALUES("321610","Karang Bahagia (Karangbahagia)","3216");
INSERT INTO kecamatan VALUES("321611","Cikarang Timur","3216");
INSERT INTO kecamatan VALUES("321612","Kedung Waringin","3216");
INSERT INTO kecamatan VALUES("321613","Pebayuran","3216");
INSERT INTO kecamatan VALUES("321614","Sukakarya","3216");
INSERT INTO kecamatan VALUES("321615","Sukatani","3216");
INSERT INTO kecamatan VALUES("321616","Cabangbungin","3216");
INSERT INTO kecamatan VALUES("321617","Muaragembong (Muara Gembong)","3216");
INSERT INTO kecamatan VALUES("321618","Setu","3216");
INSERT INTO kecamatan VALUES("321619","Cikarang Selatan","3216");
INSERT INTO kecamatan VALUES("321620","Cikarang Pusat","3216");
INSERT INTO kecamatan VALUES("321621","Serang Baru","3216");
INSERT INTO kecamatan VALUES("321622","Cibarusah","3216");
INSERT INTO kecamatan VALUES("321623","Bojongmangu","3216");
INSERT INTO kecamatan VALUES("321701","Lembang","3217");
INSERT INTO kecamatan VALUES("321702","Parongpong","3217");
INSERT INTO kecamatan VALUES("321703","Cisarua","3217");
INSERT INTO kecamatan VALUES("321704","Cikalongwetan (Cikalong Wetan)","3217");
INSERT INTO kecamatan VALUES("321705","Cipeundeuy","3217");
INSERT INTO kecamatan VALUES("321706","Ngamprah","3217");
INSERT INTO kecamatan VALUES("321707","Cipatat","3217");
INSERT INTO kecamatan VALUES("321708","Padalarang","3217");
INSERT INTO kecamatan VALUES("321709","Batujajar","3217");
INSERT INTO kecamatan VALUES("321710","Cihampelas","3217");
INSERT INTO kecamatan VALUES("321711","Cililin","3217");
INSERT INTO kecamatan VALUES("321712","Cipongkor","3217");
INSERT INTO kecamatan VALUES("321713","Rongga","3217");
INSERT INTO kecamatan VALUES("321714","Sindangkerta","3217");
INSERT INTO kecamatan VALUES("321715","Gununghalu","3217");
INSERT INTO kecamatan VALUES("321716","Saguling","3217");
INSERT INTO kecamatan VALUES("321801","Parigi","3218");
INSERT INTO kecamatan VALUES("321802","Cijulang","3218");
INSERT INTO kecamatan VALUES("321803","Cimerak","3218");
INSERT INTO kecamatan VALUES("321804","Cigugur","3218");
INSERT INTO kecamatan VALUES("321805","Langkaplancar","3218");
INSERT INTO kecamatan VALUES("321806","Mangunjaya","3218");
INSERT INTO kecamatan VALUES("321807","Padaherang","3218");
INSERT INTO kecamatan VALUES("321808","Kalipucang","3218");
INSERT INTO kecamatan VALUES("321809","Pangandaran","3218");
INSERT INTO kecamatan VALUES("321810","Sidamulih","3218");
INSERT INTO kecamatan VALUES("327101","Bogor Selatan","3271");
INSERT INTO kecamatan VALUES("327102","Bogor Timur","3271");
INSERT INTO kecamatan VALUES("327103","Bogor Tengah","3271");
INSERT INTO kecamatan VALUES("327104","Bogor Barat","3271");
INSERT INTO kecamatan VALUES("327105","Bogor Utara","3271");
INSERT INTO kecamatan VALUES("327106","Tanah Sareal (Tanah Sereal)","3271");
INSERT INTO kecamatan VALUES("327201","Gunungpuyuh (Gunung Puyuh)","3272");
INSERT INTO kecamatan VALUES("327202","Cikole","3272");
INSERT INTO kecamatan VALUES("327203","Citamiang","3272");
INSERT INTO kecamatan VALUES("327204","Warudoyong","3272");
INSERT INTO kecamatan VALUES("327205","Baros","3272");
INSERT INTO kecamatan VALUES("327206","Lembursitu","3272");
INSERT INTO kecamatan VALUES("327207","Cibeureum","3272");
INSERT INTO kecamatan VALUES("327301","Sukasari","3273");
INSERT INTO kecamatan VALUES("327302","Coblong","3273");
INSERT INTO kecamatan VALUES("327303","Babakan Ciparay","3273");
INSERT INTO kecamatan VALUES("327304","Bojongloa Kaler","3273");
INSERT INTO kecamatan VALUES("327305","Andir","3273");
INSERT INTO kecamatan VALUES("327306","Cicendo","3273");
INSERT INTO kecamatan VALUES("327307","Sukajadi","3273");
INSERT INTO kecamatan VALUES("327308","Cidadap","3273");
INSERT INTO kecamatan VALUES("327309","Bandung Wetan","3273");
INSERT INTO kecamatan VALUES("327310","Astana Anyar","3273");
INSERT INTO kecamatan VALUES("327311","Regol","3273");
INSERT INTO kecamatan VALUES("327312","Batununggal","3273");
INSERT INTO kecamatan VALUES("327313","Lengkong","3273");
INSERT INTO kecamatan VALUES("327314","Cibeunying Kidul","3273");
INSERT INTO kecamatan VALUES("327315","Bandung Kulon","3273");
INSERT INTO kecamatan VALUES("327316","Kiaracondong","3273");
INSERT INTO kecamatan VALUES("327317","Bojongloa Kidul","3273");
INSERT INTO kecamatan VALUES("327318","Cibeunying Kaler","3273");
INSERT INTO kecamatan VALUES("327319","Sumur Bandung","3273");
INSERT INTO kecamatan VALUES("327320","Antapani (Cicadas)","3273");
INSERT INTO kecamatan VALUES("327321","Bandung Kidul","3273");
INSERT INTO kecamatan VALUES("327322","Buahbatu (Margacinta)","3273");
INSERT INTO kecamatan VALUES("327323","Rancasari","3273");
INSERT INTO kecamatan VALUES("327324","Arcamanik","3273");
INSERT INTO kecamatan VALUES("327325","Cibiru","3273");
INSERT INTO kecamatan VALUES("327326","Ujungberung (Ujung Berung)","3273");
INSERT INTO kecamatan VALUES("327327","Gedebage","3273");
INSERT INTO kecamatan VALUES("327328","Panyileukan","3273");
INSERT INTO kecamatan VALUES("327329","Cinambo","3273");
INSERT INTO kecamatan VALUES("327330","Mandalajati","3273");
INSERT INTO kecamatan VALUES("327401","Kejaksan","3274");
INSERT INTO kecamatan VALUES("327402","Lemah Wungkuk (Lemahwungkuk)","3274");
INSERT INTO kecamatan VALUES("327403","Harjamukti","3274");
INSERT INTO kecamatan VALUES("327404","Pekalipan","3274");
INSERT INTO kecamatan VALUES("327405","Kesambi","3274");
INSERT INTO kecamatan VALUES("327501","Bekasi Timur","3275");
INSERT INTO kecamatan VALUES("327502","Bekasi Barat","3275");
INSERT INTO kecamatan VALUES("327503","Bekasi Utara","3275");
INSERT INTO kecamatan VALUES("327504","Bekasi Selatan","3275");
INSERT INTO kecamatan VALUES("327505","Rawalumbu","3275");
INSERT INTO kecamatan VALUES("327506","Medansatria (Medan Satria)","3275");
INSERT INTO kecamatan VALUES("327507","Bantargebang (Bantar Gebang)","3275");
INSERT INTO kecamatan VALUES("327508","Pondokgede (Pondok Gede)","3275");
INSERT INTO kecamatan VALUES("327509","Jatiasih","3275");
INSERT INTO kecamatan VALUES("327510","Jatisampurna (Jati Sampurna)","3275");
INSERT INTO kecamatan VALUES("327511","Mustikajaya (Mustika Jaya)","3275");
INSERT INTO kecamatan VALUES("327512","Pondokmelati (Pondok Melati)","3275");
INSERT INTO kecamatan VALUES("327601","Pancoran Mas","3276");
INSERT INTO kecamatan VALUES("327602","Cimanggis","3276");
INSERT INTO kecamatan VALUES("327603","Sawangan","3276");
INSERT INTO kecamatan VALUES("327604","Limo","3276");
INSERT INTO kecamatan VALUES("327605","Sukmajaya","3276");
INSERT INTO kecamatan VALUES("327606","Beji","3276");
INSERT INTO kecamatan VALUES("327607","Cipayung","3276");
INSERT INTO kecamatan VALUES("327608","Cilodong","3276");
INSERT INTO kecamatan VALUES("327609","Cinere","3276");
INSERT INTO kecamatan VALUES("327610","Tapos","3276");
INSERT INTO kecamatan VALUES("327611","Bojongsari","3276");
INSERT INTO kecamatan VALUES("327701","Cimahi Selatan","3277");
INSERT INTO kecamatan VALUES("327702","Cimahi Tengah","3277");
INSERT INTO kecamatan VALUES("327703","Cimahi Utara","3277");
INSERT INTO kecamatan VALUES("327801","Cihideung","3278");
INSERT INTO kecamatan VALUES("327802","Cipedes","3278");
INSERT INTO kecamatan VALUES("327803","Tawang","3278");
INSERT INTO kecamatan VALUES("327804","Indihiang","3278");
INSERT INTO kecamatan VALUES("327805","Kawalu","3278");
INSERT INTO kecamatan VALUES("327806","Cibeureum","3278");
INSERT INTO kecamatan VALUES("327807","Tamansari","3278");
INSERT INTO kecamatan VALUES("327808","Mangkubumi","3278");
INSERT INTO kecamatan VALUES("327809","Bungursari","3278");
INSERT INTO kecamatan VALUES("327810","Purbaratu","3278");
INSERT INTO kecamatan VALUES("327901","Banjar","3279");
INSERT INTO kecamatan VALUES("327902","Pataruman","3279");
INSERT INTO kecamatan VALUES("327903","Purwaharja","3279");
INSERT INTO kecamatan VALUES("327904","Langensari","3279");
INSERT INTO kecamatan VALUES("360101","Sumur","3601");
INSERT INTO kecamatan VALUES("360102","Cimanggu","3601");
INSERT INTO kecamatan VALUES("360103","Cibaliung","3601");
INSERT INTO kecamatan VALUES("360104","Cikeusik","3601");
INSERT INTO kecamatan VALUES("360105","Cigeulis","3601");
INSERT INTO kecamatan VALUES("360106","Panimbang","3601");
INSERT INTO kecamatan VALUES("360107","Angsana","3601");
INSERT INTO kecamatan VALUES("360108","Munjul","3601");
INSERT INTO kecamatan VALUES("360109","Pagelaran","3601");
INSERT INTO kecamatan VALUES("360110","Bojong","3601");
INSERT INTO kecamatan VALUES("360111","Picung","3601");
INSERT INTO kecamatan VALUES("360112","Labuan","3601");
INSERT INTO kecamatan VALUES("360113","Menes","3601");
INSERT INTO kecamatan VALUES("360114","Saketi","3601");
INSERT INTO kecamatan VALUES("360115","Cipeucang","3601");
INSERT INTO kecamatan VALUES("360116","Jiput","3601");
INSERT INTO kecamatan VALUES("360117","Mandalawangi","3601");
INSERT INTO kecamatan VALUES("360118","Cimanuk","3601");
INSERT INTO kecamatan VALUES("360119","Kaduhejo","3601");
INSERT INTO kecamatan VALUES("360120","Banjar","3601");
INSERT INTO kecamatan VALUES("360121","Pandeglang","3601");
INSERT INTO kecamatan VALUES("360122","Cadasari","3601");
INSERT INTO kecamatan VALUES("360123","Cisata","3601");
INSERT INTO kecamatan VALUES("360124","Patia","3601");
INSERT INTO kecamatan VALUES("360125","Karang Tanjung","3601");
INSERT INTO kecamatan VALUES("360126","Cikeudal (Cikedal)","3601");
INSERT INTO kecamatan VALUES("360127","Cibitung","3601");
INSERT INTO kecamatan VALUES("360128","Carita","3601");
INSERT INTO kecamatan VALUES("360129","Sukaresmi","3601");
INSERT INTO kecamatan VALUES("360130","Mekarjaya","3601");
INSERT INTO kecamatan VALUES("360131","Sindangresmi","3601");
INSERT INTO kecamatan VALUES("360132","Pulosari","3601");
INSERT INTO kecamatan VALUES("360133","Koroncong","3601");
INSERT INTO kecamatan VALUES("360134","Majasari","3601");
INSERT INTO kecamatan VALUES("360135","Sobang","3601");
INSERT INTO kecamatan VALUES("360201","Malingping","3602");
INSERT INTO kecamatan VALUES("360202","Panggarangan","3602");
INSERT INTO kecamatan VALUES("360203","Bayah","3602");
INSERT INTO kecamatan VALUES("360204","Cipanas","3602");
INSERT INTO kecamatan VALUES("360205","Muncang","3602");
INSERT INTO kecamatan VALUES("360206","Leuwidamar","3602");
INSERT INTO kecamatan VALUES("360207","Bojongmanik","3602");
INSERT INTO kecamatan VALUES("360208","Gunungkencana (Gunung Kencana)","3602");
INSERT INTO kecamatan VALUES("360209","Banjarsari","3602");
INSERT INTO kecamatan VALUES("360210","Cileles","3602");
INSERT INTO kecamatan VALUES("360211","Cimarga","3602");
INSERT INTO kecamatan VALUES("360212","Sajira","3602");
INSERT INTO kecamatan VALUES("360213","Maja","3602");
INSERT INTO kecamatan VALUES("360214","Rangkasbitung","3602");
INSERT INTO kecamatan VALUES("360215","Warunggunung","3602");
INSERT INTO kecamatan VALUES("360216","Cijaku","3602");
INSERT INTO kecamatan VALUES("360217","Cikulur","3602");
INSERT INTO kecamatan VALUES("360218","Cibadak","3602");
INSERT INTO kecamatan VALUES("360219","Cibeber","3602");
INSERT INTO kecamatan VALUES("360220","Cilograng","3602");
INSERT INTO kecamatan VALUES("360221","Wanasalam","3602");
INSERT INTO kecamatan VALUES("360222","Sobang","3602");
INSERT INTO kecamatan VALUES("360223","Curug bitung (Curugbitung)","3602");
INSERT INTO kecamatan VALUES("360224","Kalanganyar","3602");
INSERT INTO kecamatan VALUES("360225","Lebakgedong","3602");
INSERT INTO kecamatan VALUES("360226","Cihara","3602");
INSERT INTO kecamatan VALUES("360227","Cirinten","3602");
INSERT INTO kecamatan VALUES("360228","Cigemlong (Cigemblong)","3602");
INSERT INTO kecamatan VALUES("360301","Balaraja","3603");
INSERT INTO kecamatan VALUES("360302","Jayanti","3603");
INSERT INTO kecamatan VALUES("360303","Tigaraksa","3603");
INSERT INTO kecamatan VALUES("360304","Jambe","3603");
INSERT INTO kecamatan VALUES("360305","Cisoka","3603");
INSERT INTO kecamatan VALUES("360306","Kresek","3603");
INSERT INTO kecamatan VALUES("360307","Kronjo","3603");
INSERT INTO kecamatan VALUES("360308","Mauk","3603");
INSERT INTO kecamatan VALUES("360309","Kemiri","3603");
INSERT INTO kecamatan VALUES("360310","Sukadiri","3603");
INSERT INTO kecamatan VALUES("360311","Rajeg","3603");
INSERT INTO kecamatan VALUES("360312","Pasar Kemis","3603");
INSERT INTO kecamatan VALUES("360313","Teluknaga","3603");
INSERT INTO kecamatan VALUES("360314","Kosambi","3603");
INSERT INTO kecamatan VALUES("360315","Pakuhaji","3603");
INSERT INTO kecamatan VALUES("360316","Sepatan","3603");
INSERT INTO kecamatan VALUES("360317","Curug","3603");
INSERT INTO kecamatan VALUES("360318","Cikupa","3603");
INSERT INTO kecamatan VALUES("360319","Panongan","3603");
INSERT INTO kecamatan VALUES("360320","Legok","3603");
INSERT INTO kecamatan VALUES("360322","Pagedangan","3603");
INSERT INTO kecamatan VALUES("360323","Cisauk","3603");
INSERT INTO kecamatan VALUES("360327","Sukamulya","3603");
INSERT INTO kecamatan VALUES("360328","Kelapa Dua","3603");
INSERT INTO kecamatan VALUES("360329","Sindang Jaya","3603");
INSERT INTO kecamatan VALUES("360330","Sepatan Timur","3603");
INSERT INTO kecamatan VALUES("360331","Solear","3603");
INSERT INTO kecamatan VALUES("360332","Gunung Kaler","3603");
INSERT INTO kecamatan VALUES("360333","Mekar Baru","3603");
INSERT INTO kecamatan VALUES("360405","Kramatwatu","3604");
INSERT INTO kecamatan VALUES("360406","Waringinkurung (Waringin Kurung)","3604");
INSERT INTO kecamatan VALUES("360407","Bojonegara","3604");
INSERT INTO kecamatan VALUES("360408","Pulo Ampel","3604");
INSERT INTO kecamatan VALUES("360409","Ciruas","3604");
INSERT INTO kecamatan VALUES("360411","Kragilan","3604");
INSERT INTO kecamatan VALUES("360412","Pontang","3604");
INSERT INTO kecamatan VALUES("360413","Tirtayasa","3604");
INSERT INTO kecamatan VALUES("360414","Tanara","3604");
INSERT INTO kecamatan VALUES("360415","Cikande","3604");
INSERT INTO kecamatan VALUES("360416","Kibin","3604");
INSERT INTO kecamatan VALUES("360417","Carenang (Cerenang)","3604");
INSERT INTO kecamatan VALUES("360418","Binuang","3604");
INSERT INTO kecamatan VALUES("360419","Petir","3604");
INSERT INTO kecamatan VALUES("360420","Tunjung Teja","3604");
INSERT INTO kecamatan VALUES("360422","Baros","3604");
INSERT INTO kecamatan VALUES("360423","Cikeusal","3604");
INSERT INTO kecamatan VALUES("360424","Pamarayan","3604");
INSERT INTO kecamatan VALUES("360425","Kopo","3604");
INSERT INTO kecamatan VALUES("360426","Jawilan","3604");
INSERT INTO kecamatan VALUES("360427","Ciomas","3604");
INSERT INTO kecamatan VALUES("360428","Pabuaran","3604");
INSERT INTO kecamatan VALUES("360429","Padarincang","3604");
INSERT INTO kecamatan VALUES("360430","Anyar","3604");
INSERT INTO kecamatan VALUES("360431","Cinangka","3604");
INSERT INTO kecamatan VALUES("360432","Mancak","3604");
INSERT INTO kecamatan VALUES("360433","Gunung Sari (Gunungsari)","3604");
INSERT INTO kecamatan VALUES("360434","Bandung","3604");
INSERT INTO kecamatan VALUES("360435","Lebak Wangi","3604");
INSERT INTO kecamatan VALUES("367101","Tangerang","3671");
INSERT INTO kecamatan VALUES("367102","Jatiuwung","3671");
INSERT INTO kecamatan VALUES("367103","Batuceper","3671");
INSERT INTO kecamatan VALUES("367104","Benda","3671");
INSERT INTO kecamatan VALUES("367105","Cipondoh","3671");
INSERT INTO kecamatan VALUES("367106","Ciledug","3671");
INSERT INTO kecamatan VALUES("367107","Karawaci","3671");
INSERT INTO kecamatan VALUES("367108","Periuk","3671");
INSERT INTO kecamatan VALUES("367109","Cibodas","3671");
INSERT INTO kecamatan VALUES("367110","Neglasari","3671");
INSERT INTO kecamatan VALUES("367111","Pinang (Penang)","3671");
INSERT INTO kecamatan VALUES("367112","Karang Tengah","3671");
INSERT INTO kecamatan VALUES("367113","Larangan","3671");
INSERT INTO kecamatan VALUES("367201","Cibeber","3672");
INSERT INTO kecamatan VALUES("367202","Cilegon","3672");
INSERT INTO kecamatan VALUES("367203","Pulomerak","3672");
INSERT INTO kecamatan VALUES("367204","Ciwandan","3672");
INSERT INTO kecamatan VALUES("367205","Jombang","3672");
INSERT INTO kecamatan VALUES("367206","Gerogol","3672");
INSERT INTO kecamatan VALUES("367207","Purwakarta","3672");
INSERT INTO kecamatan VALUES("367208","Citangkil","3672");
INSERT INTO kecamatan VALUES("367301","Serang","3673");
INSERT INTO kecamatan VALUES("367302","Kasemen","3673");
INSERT INTO kecamatan VALUES("367303","Walantaka","3673");
INSERT INTO kecamatan VALUES("367304","Curug","3673");
INSERT INTO kecamatan VALUES("367305","Cipocok Jaya","3673");
INSERT INTO kecamatan VALUES("367306","Taktakan","3673");
INSERT INTO kecamatan VALUES("367401","Serpong","3674");
INSERT INTO kecamatan VALUES("367402","Serpong Utara","3674");
INSERT INTO kecamatan VALUES("367403","Pondok Aren","3674");
INSERT INTO kecamatan VALUES("367404","Ciputat","3674");
INSERT INTO kecamatan VALUES("367405","Ciputat Timur","3674");
INSERT INTO kecamatan VALUES("367406","Pamulang","3674");
INSERT INTO kecamatan VALUES("367407","Setu","3674");



CREATE TABLE `kegiatan_rutin_anak` (
  `id_kegiatan_rutin_anak` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `data_kegiatan_rutin_anak` text,
  PRIMARY KEY (`id_kegiatan_rutin_anak`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO kegiatan_rutin_anak VALUES("1","1","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Pukul (00.00 - 00.00)</center></th>
		                  <th style="background-color: #bac7a7"><center>Kegiatan</center></th>
		                  <th style="background-color: #bac7a7"><center>Keterangan (Mandiri/Sedikit Dibantu/Dibantu Penuh Oleh..)</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
		               	<td>07.00 - 07.30</td>
		               	<td>Sarapan</td>
		               	<td>Mandiri</td>
		               </tr>
		               <tr>
		               	<td>08.00 - 08.30</td>
		               	<td>Mandi</td>
		               	<td>Sedikit Dibantu</td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
	                </tbody>
              </table>     
                        ");
INSERT INTO kegiatan_rutin_anak VALUES("2","2","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Pukul (00.00 - 00.00)</center></th>
		                  <th style="background-color: #bac7a7"><center>Kegiatan</center></th>
		                  <th style="background-color: #bac7a7"><center>Keterangan (Mandiri/Sedikit Dibantu/Dibantu Penuh Oleh..)</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
		               	<td>07.00 - 07.30</td>
		               	<td>Sarapan</td>
		               	<td>Mandiri</td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
		               <tr>
		               	<td></td>
		               	<td></td>
		               	<td></td>
		               </tr>
	                </tbody>
              </table>     
                        ");



CREATE TABLE `kegiatan_tidak_rutin_anak` (
  `id_kegiatan_tidak_rutin_anak` int(11) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `data_kegiatan_tidak_rutin_anak` text,
  `pengasuh` enum('Ya','Tidak','','') NOT NULL,
  `jum_pengasuh` char(3) NOT NULL,
  `jum_art` char(3) NOT NULL,
  PRIMARY KEY (`id_kegiatan_tidak_rutin_anak`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO kegiatan_tidak_rutin_anak VALUES("1","1","            
            <table border="1" width="100%" style="text-align: center;">
				                <thead>
					                <tr>
					                  <th style="background-color: #bac7a7"><center>Hari</center></th>
					                  <th style="background-color: #bac7a7"><center>Pukul (00.00 - 00.00)</center></th>
					                  <th style="background-color: #bac7a7"><center>Frekuensi (Dalam 1 Bulan)</center></th>
					                  <th style="background-color: #bac7a7"><center>Kegiatan</center></th>
					                  <th style="background-color: #bac7a7"><center>Keterangan</center></th>
					                </tr>
				                </thead>
				                <tbody>
					               <tr>
					               	<td>Minggu</td>
					               	<td>07.00 - 07.30</td>
					               	<td>4</td>
					               	<td>Berenang</td>
					               	<td>-</td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
				                </tbody>
			              </table>     
                  			            ","Tidak","-","1");
INSERT INTO kegiatan_tidak_rutin_anak VALUES("2","2","            
            <table border="1" width="100%" style="text-align: center;">
				                <thead>
					                <tr>
					                  <th style="background-color: #bac7a7"><center>Hari</center></th>
					                  <th style="background-color: #bac7a7"><center>Pukul (00.00 - 00.00)</center></th>
					                  <th style="background-color: #bac7a7"><center>Frekuensi (Dalam 1 Bulan)</center></th>
					                  <th style="background-color: #bac7a7"><center>Kegiatan</center></th>
					                  <th style="background-color: #bac7a7"><center>Keterangan</center></th>
					                </tr>
				                </thead>
				                <tbody>
					               <tr>
					               	<td>Minggu</td>
					               	<td>07.00 - 07.30</td>
					               	<td>4</td>
					               	<td>Berenang</td>
					               	<td>-</td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
					               <tr>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               	<td></td>
					               </tr>
				                </tbody>
			              </table>     
                  			            ","Tidak","-","1");



CREATE TABLE `kelainan` (
  `id_kelainan` int(3) NOT NULL AUTO_INCREMENT,
  `kelainan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kelainan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO kelainan VALUES("1","Kuning");
INSERT INTO kelainan VALUES("2","Kebiruan");
INSERT INTO kelainan VALUES("3","Kejang");
INSERT INTO kelainan VALUES("4","Tidak Ada");



CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `semester` enum('Semester 1','Semester 2','','') NOT NULL,
  `tipe_kelas` enum('Reguler','Semi Reguler','','') NOT NULL,
  `koordinator` int(11) NOT NULL,
  `pembimbing1` int(11) NOT NULL,
  `pembimbing2` int(11) NOT NULL,
  `pembimbing3` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `koordinator` (`koordinator`),
  KEY `pembimbing1` (`pembimbing1`),
  KEY `pembimbing2` (`pembimbing2`),
  KEY `pembimbing3` (`pembimbing3`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO kelas VALUES("0","ANGGUR","2020/2021","Semester 1","Reguler","1","1","1","1");
INSERT INTO kelas VALUES("4","APEL","2020/2021","Semester 1","Reguler","1","1","1","1");



CREATE TABLE `kelurahan` (
  `id_kelurahan` char(10) NOT NULL,
  `kelurahan` varchar(70) NOT NULL,
  `kecamatan_id` char(6) NOT NULL,
  PRIMARY KEY (`id_kelurahan`),
  KEY `kecamatan_id` (`kecamatan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kelurahan VALUES("3101011001","Pulau Panggang","310101");
INSERT INTO kelurahan VALUES("3101011002","Pulau Kelapa","310101");
INSERT INTO kelurahan VALUES("3101011003","Pulau Harapan","310101");
INSERT INTO kelurahan VALUES("3101021001","Pulau Untung Jawa","310102");
INSERT INTO kelurahan VALUES("3101021002","Pulau Tidung","310102");
INSERT INTO kelurahan VALUES("3101021003","Pulau Pari","310102");
INSERT INTO kelurahan VALUES("3171011001","Gambir","317101");
INSERT INTO kelurahan VALUES("3171011002","Cideng","317101");
INSERT INTO kelurahan VALUES("3171011003","Petojo Utara","317101");
INSERT INTO kelurahan VALUES("3171011004","Petojo Selatan","317101");
INSERT INTO kelurahan VALUES("3171011005","Kebon Kelapa","317101");
INSERT INTO kelurahan VALUES("3171011006","Duri Pulo","317101");
INSERT INTO kelurahan VALUES("3171021001","Pasar Baru","317102");
INSERT INTO kelurahan VALUES("3171021002","Karang Anyar","317102");
INSERT INTO kelurahan VALUES("3171021003","Kartini","317102");
INSERT INTO kelurahan VALUES("3171021004","Gunung Sahari Utara","317102");
INSERT INTO kelurahan VALUES("3171021005","Mangga Dua Selatan","317102");
INSERT INTO kelurahan VALUES("3171031001","Kemayoran","317103");
INSERT INTO kelurahan VALUES("3171031002","Kebon Kosong","317103");
INSERT INTO kelurahan VALUES("3171031003","Harapan Mulia (Harapan Mulya)","317103");
INSERT INTO kelurahan VALUES("3171031004","Serdang","317103");
INSERT INTO kelurahan VALUES("3171031005","Gunung Sahari Selatan","317103");
INSERT INTO kelurahan VALUES("3171031006","Cempaka Baru","317103");
INSERT INTO kelurahan VALUES("3171031007","Sumur Batu","317103");
INSERT INTO kelurahan VALUES("3171031008","Utan Panjang","317103");
INSERT INTO kelurahan VALUES("3171041001","Senen","317104");
INSERT INTO kelurahan VALUES("3171041002","Kenari","317104");
INSERT INTO kelurahan VALUES("3171041003","Paseban","317104");
INSERT INTO kelurahan VALUES("3171041004","Kramat","317104");
INSERT INTO kelurahan VALUES("3171041005","Kwitang","317104");
INSERT INTO kelurahan VALUES("3171041006","Bungur","317104");
INSERT INTO kelurahan VALUES("3171051001","Cempaka Putih Timur","317105");
INSERT INTO kelurahan VALUES("3171051002","Cempaka Putih Barat","317105");
INSERT INTO kelurahan VALUES("3171051003","Rawasari","317105");
INSERT INTO kelurahan VALUES("3171061001","Menteng","317106");
INSERT INTO kelurahan VALUES("3171061002","Pegangsaan","317106");
INSERT INTO kelurahan VALUES("3171061003","Cikini","317106");
INSERT INTO kelurahan VALUES("3171061004","Gondangdia","317106");
INSERT INTO kelurahan VALUES("3171061005","Kebon Sirih","317106");
INSERT INTO kelurahan VALUES("3171071001","Gelora","317107");
INSERT INTO kelurahan VALUES("3171071002","Bendungan Hilir","317107");
INSERT INTO kelurahan VALUES("3171071003","Karet Tengsin","317107");
INSERT INTO kelurahan VALUES("3171071004","Petamburan","317107");
INSERT INTO kelurahan VALUES("3171071005","Kebon Melati","317107");
INSERT INTO kelurahan VALUES("3171071006","Kebon Kacang","317107");
INSERT INTO kelurahan VALUES("3171071007","Kampung Bali","317107");
INSERT INTO kelurahan VALUES("3171081001","Johar Baru","317108");
INSERT INTO kelurahan VALUES("3171081002","Kampung Rawa","317108");
INSERT INTO kelurahan VALUES("3171081003","Galur","317108");
INSERT INTO kelurahan VALUES("3171081004","Tanah Tinggi","317108");
INSERT INTO kelurahan VALUES("3172011001","Penjaringan","317201");
INSERT INTO kelurahan VALUES("3172011002","Kamal Muara","317201");
INSERT INTO kelurahan VALUES("3172011003","Kapuk Muara","317201");
INSERT INTO kelurahan VALUES("3172011004","Pejagalan","317201");
INSERT INTO kelurahan VALUES("3172011005","Pluit","317201");
INSERT INTO kelurahan VALUES("3172021001","Tanjung Priok","317202");
INSERT INTO kelurahan VALUES("3172021002","Sunter Jaya","317202");
INSERT INTO kelurahan VALUES("3172021003","Papanggo","317202");
INSERT INTO kelurahan VALUES("3172021004","Sungai Bambu","317202");
INSERT INTO kelurahan VALUES("3172021005","Kebon Bawang","317202");
INSERT INTO kelurahan VALUES("3172021006","Sunter Agung","317202");
INSERT INTO kelurahan VALUES("3172021007","Warakas","317202");
INSERT INTO kelurahan VALUES("3172031001","Koja (Utara, Selatan)","317203");
INSERT INTO kelurahan VALUES("3172031002","Tugu Utara","317203");
INSERT INTO kelurahan VALUES("3172031003","Lagoa","317203");
INSERT INTO kelurahan VALUES("3172031004","Rawa Badak Utara","317203");
INSERT INTO kelurahan VALUES("3172031005","Tugu Selatan","317203");
INSERT INTO kelurahan VALUES("3172031006","Rawa Badak Selatan","317203");
INSERT INTO kelurahan VALUES("3172041001","Cilincing","317204");
INSERT INTO kelurahan VALUES("3172041002","Sukapura","317204");
INSERT INTO kelurahan VALUES("3172041003","Marunda","317204");
INSERT INTO kelurahan VALUES("3172041004","Kalibaru (Kali Baru)","317204");
INSERT INTO kelurahan VALUES("3172041005","Semper Timur","317204");
INSERT INTO kelurahan VALUES("3172041006","Rorotan","317204");
INSERT INTO kelurahan VALUES("3172041007","Semper Barat","317204");
INSERT INTO kelurahan VALUES("3172051001","Pademangan Timur","317205");
INSERT INTO kelurahan VALUES("3172051002","Pademangan Barat","317205");
INSERT INTO kelurahan VALUES("3172051003","Ancol","317205");
INSERT INTO kelurahan VALUES("3172061001","Kelapa Gading Timur","317206");
INSERT INTO kelurahan VALUES("3172061002","Pegangsaan Dua","317206");
INSERT INTO kelurahan VALUES("3172061003","Kelapa Gading Barat","317206");
INSERT INTO kelurahan VALUES("3173011001","Cengkareng Barat","317301");
INSERT INTO kelurahan VALUES("3173011002","Duri Kosambi","317301");
INSERT INTO kelurahan VALUES("3173011003","Rawa Buaya","317301");
INSERT INTO kelurahan VALUES("3173011004","Kedaung Kali Angke","317301");
INSERT INTO kelurahan VALUES("3173011005","Kapuk","317301");
INSERT INTO kelurahan VALUES("3173011006","Cengkareng Timur","317301");
INSERT INTO kelurahan VALUES("3173021001","Grogol","317302");
INSERT INTO kelurahan VALUES("3173021002","Tanjung Duren Utara","317302");
INSERT INTO kelurahan VALUES("3173021003","Tomang","317302");
INSERT INTO kelurahan VALUES("3173021004","Jelambar","317302");
INSERT INTO kelurahan VALUES("3173021005","Tanjung Duren Selatan","317302");
INSERT INTO kelurahan VALUES("3173021006","Jelambar Baru","317302");
INSERT INTO kelurahan VALUES("3173021007","Wijaya Kusuma","317302");
INSERT INTO kelurahan VALUES("3173031001","Taman Sari","317303");
INSERT INTO kelurahan VALUES("3173031002","Krukut","317303");
INSERT INTO kelurahan VALUES("3173031003","Maphar","317303");
INSERT INTO kelurahan VALUES("3173031004","Tangki","317303");
INSERT INTO kelurahan VALUES("3173031005","Mangga Besar","317303");
INSERT INTO kelurahan VALUES("3173031006","Keagungan","317303");
INSERT INTO kelurahan VALUES("3173031007","Glodok","317303");
INSERT INTO kelurahan VALUES("3173031008","Pinangsia","317303");
INSERT INTO kelurahan VALUES("3173041001","Tambora","317304");
INSERT INTO kelurahan VALUES("3173041002","Kali Anyar","317304");
INSERT INTO kelurahan VALUES("3173041003","Duri Utara","317304");
INSERT INTO kelurahan VALUES("3173041004","Tanah Sereal","317304");
INSERT INTO kelurahan VALUES("3173041005","Krendang","317304");
INSERT INTO kelurahan VALUES("3173041006","Jembatan Besi","317304");
INSERT INTO kelurahan VALUES("3173041007","Angke","317304");
INSERT INTO kelurahan VALUES("3173041008","Jembatan Lima","317304");
INSERT INTO kelurahan VALUES("3173041009","Pekojan","317304");
INSERT INTO kelurahan VALUES("3173041010","Roa Malaka","317304");
INSERT INTO kelurahan VALUES("3173041011","Duri Selatan","317304");
INSERT INTO kelurahan VALUES("3173051001","Kebon Jeruk","317305");
INSERT INTO kelurahan VALUES("3173051002","Sukabumi Utara (Ilir)","317305");
INSERT INTO kelurahan VALUES("3173051003","Sukabumi Selatan (Udik)","317305");
INSERT INTO kelurahan VALUES("3173051004","Kelapa Dua","317305");
INSERT INTO kelurahan VALUES("3173051005","Duri Kepa","317305");
INSERT INTO kelurahan VALUES("3173051006","Kedoya Utara","317305");
INSERT INTO kelurahan VALUES("3173051007","Kedoya Selatan","317305");
INSERT INTO kelurahan VALUES("3173061001","Kalideres","317306");
INSERT INTO kelurahan VALUES("3173061002","Semanan","317306");
INSERT INTO kelurahan VALUES("3173061003","Tegal Alur","317306");
INSERT INTO kelurahan VALUES("3173061004","Kamal","317306");
INSERT INTO kelurahan VALUES("3173061005","Pegadungan","317306");
INSERT INTO kelurahan VALUES("3173071001","Palmerah","317307");
INSERT INTO kelurahan VALUES("3173071002","Slipi","317307");
INSERT INTO kelurahan VALUES("3173071003","Kota Bambu Utara","317307");
INSERT INTO kelurahan VALUES("3173071004","Jatipulo","317307");
INSERT INTO kelurahan VALUES("3173071005","Kemanggisan","317307");
INSERT INTO kelurahan VALUES("3173071006","Kota Bambu Selatan","317307");
INSERT INTO kelurahan VALUES("3173081001","Kembangan Utara","317308");
INSERT INTO kelurahan VALUES("3173081002","Meruya Utara (Ilir)","317308");
INSERT INTO kelurahan VALUES("3173081003","Meruya Selatan (Udik)","317308");
INSERT INTO kelurahan VALUES("3173081004","Srengseng","317308");
INSERT INTO kelurahan VALUES("3173081005","Joglo","317308");
INSERT INTO kelurahan VALUES("3173081006","Kembangan Selatan","317308");
INSERT INTO kelurahan VALUES("3174011001","Tebet Timur","317401");
INSERT INTO kelurahan VALUES("3174011002","Tebet Barat","317401");
INSERT INTO kelurahan VALUES("3174011003","Menteng Dalam","317401");
INSERT INTO kelurahan VALUES("3174011004","Kebon Baru","317401");
INSERT INTO kelurahan VALUES("3174011005","Bukit Duri","317401");
INSERT INTO kelurahan VALUES("3174011006","Manggarai Selatan","317401");
INSERT INTO kelurahan VALUES("3174011007","Manggarai","317401");
INSERT INTO kelurahan VALUES("3174021001","Setia Budi (Setiabudi)","317402");
INSERT INTO kelurahan VALUES("3174021002","Karet Semanggi","317402");
INSERT INTO kelurahan VALUES("3174021003","Karet Kuningan","317402");
INSERT INTO kelurahan VALUES("3174021004","Karet","317402");
INSERT INTO kelurahan VALUES("3174021005","Menteng Atas","317402");
INSERT INTO kelurahan VALUES("3174021006","Pasar Manggis","317402");
INSERT INTO kelurahan VALUES("3174021007","Guntur","317402");
INSERT INTO kelurahan VALUES("3174021008","Kuningan Timur","317402");
INSERT INTO kelurahan VALUES("3174031001","Mampang Prapatan","317403");
INSERT INTO kelurahan VALUES("3174031002","Bangka","317403");
INSERT INTO kelurahan VALUES("3174031003","Pela Mampang","317403");
INSERT INTO kelurahan VALUES("3174031004","Tegal Parang","317403");
INSERT INTO kelurahan VALUES("3174031005","Kuningan Barat","317403");
INSERT INTO kelurahan VALUES("3174041001","Pasar Minggu","317404");
INSERT INTO kelurahan VALUES("3174041002","Jati Padang","317404");
INSERT INTO kelurahan VALUES("3174041003","Cilandak Timur","317404");
INSERT INTO kelurahan VALUES("3174041004","Ragunan","317404");
INSERT INTO kelurahan VALUES("3174041005","Pejaten Timur","317404");
INSERT INTO kelurahan VALUES("3174041006","Pejaten Barat","317404");
INSERT INTO kelurahan VALUES("3174041007","Kebagusan","317404");
INSERT INTO kelurahan VALUES("3174051001","Kebayoran Lama Utara","317405");
INSERT INTO kelurahan VALUES("3174051002","Pondok Pinang","317405");
INSERT INTO kelurahan VALUES("3174051003","Cipulir","317405");
INSERT INTO kelurahan VALUES("3174051004","Grogol Utara","317405");
INSERT INTO kelurahan VALUES("3174051005","Grogol Selatan","317405");
INSERT INTO kelurahan VALUES("3174051006","Kebayoran Lama Selatan","317405");
INSERT INTO kelurahan VALUES("3174061001","Cilandak Barat","317406");
INSERT INTO kelurahan VALUES("3174061002","Lebak Bulus","317406");
INSERT INTO kelurahan VALUES("3174061003","Pondok Labu","317406");
INSERT INTO kelurahan VALUES("3174061004","Gandaria Selatan","317406");
INSERT INTO kelurahan VALUES("3174061005","Cipete Selatan","317406");
INSERT INTO kelurahan VALUES("3174071001","Melawai","317407");
INSERT INTO kelurahan VALUES("3174071002","Gunung","317407");
INSERT INTO kelurahan VALUES("3174071003","Kramat Pela","317407");
INSERT INTO kelurahan VALUES("3174071004","Selong","317407");
INSERT INTO kelurahan VALUES("3174071005","Rawa Barat","317407");
INSERT INTO kelurahan VALUES("3174071006","Senayan","317407");
INSERT INTO kelurahan VALUES("3174071007","Pulo","317407");
INSERT INTO kelurahan VALUES("3174071008","Petogogan","317407");
INSERT INTO kelurahan VALUES("3174071009","Gandaria Utara","317407");
INSERT INTO kelurahan VALUES("3174071010","Cipete Utara","317407");
INSERT INTO kelurahan VALUES("3174081001","Pancoran","317408");
INSERT INTO kelurahan VALUES("3174081002","Kalibata","317408");
INSERT INTO kelurahan VALUES("3174081003","Rawajati (Rawa Jati)","317408");
INSERT INTO kelurahan VALUES("3174081004","Duren Tiga","317408");
INSERT INTO kelurahan VALUES("3174081005","Pengadegan","317408");
INSERT INTO kelurahan VALUES("3174081006","Cikoko","317408");
INSERT INTO kelurahan VALUES("3174091001","Jagakarsa","317409");
INSERT INTO kelurahan VALUES("3174091002","Srengseng Sawah","317409");
INSERT INTO kelurahan VALUES("3174091003","Ciganjur","317409");
INSERT INTO kelurahan VALUES("3174091004","Lenteng Agung","317409");
INSERT INTO kelurahan VALUES("3174091005","Tanjung Barat","317409");
INSERT INTO kelurahan VALUES("3174091006","Cipedak","317409");
INSERT INTO kelurahan VALUES("3174101001","Pesanggrahan","317410");
INSERT INTO kelurahan VALUES("3174101002","Bintaro","317410");
INSERT INTO kelurahan VALUES("3174101003","Petukangan Utara","317410");
INSERT INTO kelurahan VALUES("3174101004","Petukangan Selatan","317410");
INSERT INTO kelurahan VALUES("3174101005","Ulujami","317410");
INSERT INTO kelurahan VALUES("3175011001","Pisangan Baru","317501");
INSERT INTO kelurahan VALUES("3175011002","Utan Kayu Utara","317501");
INSERT INTO kelurahan VALUES("3175011003","Kayu Manis","317501");
INSERT INTO kelurahan VALUES("3175011004","Palmeriam (Pal Meriam)","317501");
INSERT INTO kelurahan VALUES("3175011005","Kebon Manggis","317501");
INSERT INTO kelurahan VALUES("3175011006","Utan Kayu Selatan","317501");
INSERT INTO kelurahan VALUES("3175021001","Pulo Gadung","317502");
INSERT INTO kelurahan VALUES("3175021002","Pisangan Timur","317502");
INSERT INTO kelurahan VALUES("3175021003","Cipinang","317502");
INSERT INTO kelurahan VALUES("3175021004","Jatinegara Kaum","317502");
INSERT INTO kelurahan VALUES("3175021005","Rawamangun","317502");
INSERT INTO kelurahan VALUES("3175021006","Kayu Putih","317502");
INSERT INTO kelurahan VALUES("3175021007","Jati","317502");
INSERT INTO kelurahan VALUES("3175031001","Kampung Melayu","317503");
INSERT INTO kelurahan VALUES("3175031002","Bidara Cina (Bidaracina)","317503");
INSERT INTO kelurahan VALUES("3175031003","Bali Mester","317503");
INSERT INTO kelurahan VALUES("3175031004","Rawa Bunga","317503");
INSERT INTO kelurahan VALUES("3175031005","Cipinang Cempedak","317503");
INSERT INTO kelurahan VALUES("3175031006","Cipinang Muara","317503");
INSERT INTO kelurahan VALUES("3175031007","Cipinang Besar Selatan","317503");
INSERT INTO kelurahan VALUES("3175031008","Cipinang Besar Utara","317503");
INSERT INTO kelurahan VALUES("3175041001","Kramatjati (Kramat Jati)","317504");
INSERT INTO kelurahan VALUES("3175041002","Tengah (Kampung Tengah)","317504");
INSERT INTO kelurahan VALUES("3175041003","Dukuh","317504");
INSERT INTO kelurahan VALUES("3175041004","Batu Ampar (Batuampar)","317504");
INSERT INTO kelurahan VALUES("3175041005","Balekambang","317504");
INSERT INTO kelurahan VALUES("3175041006","Cililitan","317504");
INSERT INTO kelurahan VALUES("3175041007","Cawang","317504");
INSERT INTO kelurahan VALUES("3175051001","Gedong","317505");
INSERT INTO kelurahan VALUES("3175051002","Baru","317505");
INSERT INTO kelurahan VALUES("3175051003","Cijantung","317505");
INSERT INTO kelurahan VALUES("3175051004","Kalisari","317505");
INSERT INTO kelurahan VALUES("3175051005","Pekayon","317505");
INSERT INTO kelurahan VALUES("3175061001","Jatinegara","317506");
INSERT INTO kelurahan VALUES("3175061002","Rawa Terate","317506");
INSERT INTO kelurahan VALUES("3175061003","Penggilingan","317506");
INSERT INTO kelurahan VALUES("3175061004","Cakung Timur","317506");
INSERT INTO kelurahan VALUES("3175061005","Pulo Gebang","317506");
INSERT INTO kelurahan VALUES("3175061006","Ujung Menteng","317506");
INSERT INTO kelurahan VALUES("3175061007","Cakung Barat","317506");
INSERT INTO kelurahan VALUES("3175071001","Duren Sawit","317507");
INSERT INTO kelurahan VALUES("3175071002","Pondok Bambu","317507");
INSERT INTO kelurahan VALUES("3175071003","Klender","317507");
INSERT INTO kelurahan VALUES("3175071004","Pondok Kelapa","317507");
INSERT INTO kelurahan VALUES("3175071005","Malaka Sari","317507");
INSERT INTO kelurahan VALUES("3175071006","Malaka Jaya","317507");
INSERT INTO kelurahan VALUES("3175071007","Pondok Kopi","317507");
INSERT INTO kelurahan VALUES("3175081001","Makasar","317508");
INSERT INTO kelurahan VALUES("3175081002","Pinangranti (Pinang Ranti)","317508");
INSERT INTO kelurahan VALUES("3175081003","Kebon Pala","317508");
INSERT INTO kelurahan VALUES("3175081004","Halim Perdana Kusuma (Halim Perdana Kusumah)","317508");
INSERT INTO kelurahan VALUES("3175081005","Cipinang Melayu","317508");
INSERT INTO kelurahan VALUES("3175091001","Ciracas","317509");
INSERT INTO kelurahan VALUES("3175091002","Cibubur","317509");
INSERT INTO kelurahan VALUES("3175091003","Kelapa Dua Wetan","317509");
INSERT INTO kelurahan VALUES("3175091004","Susukan","317509");
INSERT INTO kelurahan VALUES("3175091005","Rambutan","317509");
INSERT INTO kelurahan VALUES("3175101001","Cipayung","317510");
INSERT INTO kelurahan VALUES("3175101002","Cilangkap","317510");
INSERT INTO kelurahan VALUES("3175101003","Pondok Ranggon (Pondok Rangon)","317510");
INSERT INTO kelurahan VALUES("3175101004","Munjul","317510");
INSERT INTO kelurahan VALUES("3175101005","Setu","317510");
INSERT INTO kelurahan VALUES("3175101006","Bambu Apus","317510");
INSERT INTO kelurahan VALUES("3175101007","Lubang Buaya","317510");
INSERT INTO kelurahan VALUES("3175101008","Ceger","317510");
INSERT INTO kelurahan VALUES("3201011001","Pondok Rajeg","320101");
INSERT INTO kelurahan VALUES("3201011002","Karadenan","320101");
INSERT INTO kelurahan VALUES("3201011003","Harapanjaya (Harapan Jaya)","320101");
INSERT INTO kelurahan VALUES("3201011004","Nanggewer","320101");
INSERT INTO kelurahan VALUES("3201011005","Nanggewer Mekar","320101");
INSERT INTO kelurahan VALUES("3201011006","Cibinong","320101");
INSERT INTO kelurahan VALUES("3201011007","Pakansari","320101");
INSERT INTO kelurahan VALUES("3201011008","Tengah","320101");
INSERT INTO kelurahan VALUES("3201011009","Sukahati","320101");
INSERT INTO kelurahan VALUES("3201011010","Ciriung","320101");
INSERT INTO kelurahan VALUES("3201011011","Cirimekar","320101");
INSERT INTO kelurahan VALUES("3201011012","Pabuaran","320101");
INSERT INTO kelurahan VALUES("3201011013","Pabuaran Mekar","320101");
INSERT INTO kelurahan VALUES("3201022001","Wanaherang","320102");
INSERT INTO kelurahan VALUES("3201022002","Bojong Kulur","320102");
INSERT INTO kelurahan VALUES("3201022003","Ciangsana","320102");
INSERT INTO kelurahan VALUES("3201022004","Gunung Putri","320102");
INSERT INTO kelurahan VALUES("3201022005","Bojong Nangka","320102");
INSERT INTO kelurahan VALUES("3201022006","Tlajung Udik","320102");
INSERT INTO kelurahan VALUES("3201022007","Cicadas","320102");
INSERT INTO kelurahan VALUES("3201022008","Cikeas Udik","320102");
INSERT INTO kelurahan VALUES("3201022009","Nagrak (Nagrag)","320102");
INSERT INTO kelurahan VALUES("3201022010","Karanggan","320102");
INSERT INTO kelurahan VALUES("3201031006","Puspanegara","320103");
INSERT INTO kelurahan VALUES("3201031007","Karang Asem Barat","320103");
INSERT INTO kelurahan VALUES("3201032001","Puspasari","320103");
INSERT INTO kelurahan VALUES("3201032002","Citeureup","320103");
INSERT INTO kelurahan VALUES("3201032003","Leuwinutug","320103");
INSERT INTO kelurahan VALUES("3201032004","Tajur","320103");
INSERT INTO kelurahan VALUES("3201032005","Sanja","320103");
INSERT INTO kelurahan VALUES("3201032008","Karang Asem Timur","320103");
INSERT INTO kelurahan VALUES("3201032009","Tarikolot","320103");
INSERT INTO kelurahan VALUES("3201032010","Gunungsari (Gunung Sari)","320103");
INSERT INTO kelurahan VALUES("3201032011","Tangkil","320103");
INSERT INTO kelurahan VALUES("3201032012","Sukahati","320103");
INSERT INTO kelurahan VALUES("3201032013","Hambalang","320103");
INSERT INTO kelurahan VALUES("3201032014","Pasirmukti (Pasir Mukti)","320103");
INSERT INTO kelurahan VALUES("3201042001","Gununggeulis (Gunung Geulis)","320104");
INSERT INTO kelurahan VALUES("3201042002","Cilebut Timur","320104");
INSERT INTO kelurahan VALUES("3201042003","Cilebut Barat","320104");
INSERT INTO kelurahan VALUES("3201042004","Cibanon","320104");
INSERT INTO kelurahan VALUES("3201042005","Nagrak","320104");
INSERT INTO kelurahan VALUES("3201042006","Sukatani","320104");
INSERT INTO kelurahan VALUES("3201042007","Sukaraja","320104");
INSERT INTO kelurahan VALUES("3201042008","Cikeas","320104");
INSERT INTO kelurahan VALUES("3201042009","Pasir Jambu","320104");
INSERT INTO kelurahan VALUES("3201042010","Cimandala","320104");
INSERT INTO kelurahan VALUES("3201042011","Cijujung","320104");
INSERT INTO kelurahan VALUES("3201042012","Cadasngampar (Cadas Ngampar)","320104");
INSERT INTO kelurahan VALUES("3201042013","Pasirlaja","320104");
INSERT INTO kelurahan VALUES("3201052001","Cijayanti","320105");
INSERT INTO kelurahan VALUES("3201052002","Sumurbatu (Sumur Batu)","320105");
INSERT INTO kelurahan VALUES("3201052003","Sentul","320105");
INSERT INTO kelurahan VALUES("3201052004","Karangtengah (Karang Tengah)","320105");
INSERT INTO kelurahan VALUES("3201052005","Cipambuan","320105");
INSERT INTO kelurahan VALUES("3201052006","Kadumanggu (Kadumangu)","320105");
INSERT INTO kelurahan VALUES("3201052007","Citaringgul","320105");
INSERT INTO kelurahan VALUES("3201052008","Babakan Madang","320105");
INSERT INTO kelurahan VALUES("3201052009","Bojong Koneng","320105");
INSERT INTO kelurahan VALUES("3201062001","Sukamaju","320106");
INSERT INTO kelurahan VALUES("3201062002","Sirnagalih","320106");
INSERT INTO kelurahan VALUES("3201062003","Singajaya","320106");
INSERT INTO kelurahan VALUES("3201062004","Sukasirna","320106");
INSERT INTO kelurahan VALUES("3201062005","Sukanegara","320106");
INSERT INTO kelurahan VALUES("3201062006","Sukamanah","320106");
INSERT INTO kelurahan VALUES("3201062007","Weninggalih","320106");
INSERT INTO kelurahan VALUES("3201062008","Cibodas","320106");
INSERT INTO kelurahan VALUES("3201062009","Jonggol","320106");
INSERT INTO kelurahan VALUES("3201062010","Bendungan","320106");
INSERT INTO kelurahan VALUES("3201062011","Singasari","320106");
INSERT INTO kelurahan VALUES("3201062012","Balekambang","320106");
INSERT INTO kelurahan VALUES("3201062013","Sukajaya","320106");
INSERT INTO kelurahan VALUES("3201062014","Sukagalih","320106");
INSERT INTO kelurahan VALUES("3201072001","Pasirangin (Pasir Angin)","320107");
INSERT INTO kelurahan VALUES("3201072002","Mekarsari","320107");
INSERT INTO kelurahan VALUES("3201072003","Mampir","320107");
INSERT INTO kelurahan VALUES("3201072004","Dayeuh","320107");
INSERT INTO kelurahan VALUES("3201072005","Gandoang","320107");
INSERT INTO kelurahan VALUES("3201072006","Jatisari","320107");
INSERT INTO kelurahan VALUES("3201072007","Cileungsi Kidul","320107");
INSERT INTO kelurahan VALUES("3201072008","Cipeucang","320107");
INSERT INTO kelurahan VALUES("3201072009","Situsari (Setu Sari)","320107");
INSERT INTO kelurahan VALUES("3201072010","Cipenjo","320107");
INSERT INTO kelurahan VALUES("3201072011","Limusnunggal (Limus Nunggal)","320107");
INSERT INTO kelurahan VALUES("3201072012","Cileungsi","320107");
INSERT INTO kelurahan VALUES("3201082001","Karyamekar (Karya Mekar)","320108");
INSERT INTO kelurahan VALUES("3201082002","Babakanraden (Babakan Raden)","320108");
INSERT INTO kelurahan VALUES("3201082003","Cikutamahi","320108");
INSERT INTO kelurahan VALUES("3201082004","Kutamekar (Kuta Mekar)","320108");
INSERT INTO kelurahan VALUES("3201082005","Cariu","320108");
INSERT INTO kelurahan VALUES("3201082006","Mekarwangi","320108");
INSERT INTO kelurahan VALUES("3201082007","Bantarkuning (Bantar Kuning)","320108");
INSERT INTO kelurahan VALUES("3201082008","Sukajadi","320108");
INSERT INTO kelurahan VALUES("3201082009","Tegalpanjang (Tegal Panjang)","320108");
INSERT INTO kelurahan VALUES("3201082010","Cibatutiga (Cibatu Tiga)","320108");
INSERT INTO kelurahan VALUES("3201092001","Wargajaya","320109");
INSERT INTO kelurahan VALUES("3201092002","Pabuaran","320109");
INSERT INTO kelurahan VALUES("3201092003","Sukadamai","320109");
INSERT INTO kelurahan VALUES("3201092004","Sukawangi","320109");
INSERT INTO kelurahan VALUES("3201092005","Cibadak","320109");
INSERT INTO kelurahan VALUES("3201092006","Sukaresmi","320109");
INSERT INTO kelurahan VALUES("3201092007","Sukamulya","320109");
INSERT INTO kelurahan VALUES("3201092008","Sukaharja","320109");
INSERT INTO kelurahan VALUES("3201092009","Sirnajaya","320109");
INSERT INTO kelurahan VALUES("3201092010","Sukamakmur","320109");
INSERT INTO kelurahan VALUES("3201102001","Parung","320110");
INSERT INTO kelurahan VALUES("3201102002","Iwul","320110");
INSERT INTO kelurahan VALUES("3201102003","Bojongsempu (Bojong Sempu)","320110");
INSERT INTO kelurahan VALUES("3201102004","Waru","320110");
INSERT INTO kelurahan VALUES("3201102005","Cogreg","320110");
INSERT INTO kelurahan VALUES("3201102006","Pamegarsari (Pamagersari)","320110");
INSERT INTO kelurahan VALUES("3201102007","Warujaya","320110");
INSERT INTO kelurahan VALUES("3201102008","Bojongindah (Bojong Indah)","320110");
INSERT INTO kelurahan VALUES("3201102009","Jabonmekar (Jabon Mekar)","320110");
INSERT INTO kelurahan VALUES("3201112001","Cidokom","320111");
INSERT INTO kelurahan VALUES("3201112002","Padurenan","320111");
INSERT INTO kelurahan VALUES("3201112003","Pengasinan","320111");
INSERT INTO kelurahan VALUES("3201112004","Curug","320111");
INSERT INTO kelurahan VALUES("3201112005","Gunungsindur (Gunung Sindur)","320111");
INSERT INTO kelurahan VALUES("3201112006","Jampang","320111");
INSERT INTO kelurahan VALUES("3201112007","Cibadung","320111");
INSERT INTO kelurahan VALUES("3201112008","Cibinong","320111");
INSERT INTO kelurahan VALUES("3201112009","Rawakalong","320111");
INSERT INTO kelurahan VALUES("3201112010","Pabuaran","320111");
INSERT INTO kelurahan VALUES("3201121006","Atang Senjaya","320112");
INSERT INTO kelurahan VALUES("3201122001","Bojong","320112");
INSERT INTO kelurahan VALUES("3201122002","Parakanjaya (Parakan Jaya)","320112");
INSERT INTO kelurahan VALUES("3201122003","Kemang","320112");
INSERT INTO kelurahan VALUES("3201122004","Pabuaran","320112");
INSERT INTO kelurahan VALUES("3201122005","Semplak Barat","320112");
INSERT INTO kelurahan VALUES("3201122007","Jampang","320112");
INSERT INTO kelurahan VALUES("3201122008","Pondok Udik","320112");
INSERT INTO kelurahan VALUES("3201122009","Tegal","320112");
INSERT INTO kelurahan VALUES("3201131007","Pabuaran","320113");
INSERT INTO kelurahan VALUES("3201132001","Bojongbaru (Bojong Baru)","320113");
INSERT INTO kelurahan VALUES("3201132002","Cimanggis","320113");
INSERT INTO kelurahan VALUES("3201132003","Susukan","320113");
INSERT INTO kelurahan VALUES("3201132004","Ragajaya","320113");
INSERT INTO kelurahan VALUES("3201132005","Kedungwaringin (Kedung Waringin)","320113");
INSERT INTO kelurahan VALUES("3201132006","Waringinjaya (Waringin Jaya)","320113");
INSERT INTO kelurahan VALUES("3201132008","Rawapanjang (Rawa Panjang)","320113");
INSERT INTO kelurahan VALUES("3201132009","Bojonggede (Bojong Gede)","320113");
INSERT INTO kelurahan VALUES("3201142001","Leuwiliang","320114");
INSERT INTO kelurahan VALUES("3201142002","Purasari","320114");
INSERT INTO kelurahan VALUES("3201142003","Karyasari","320114");
INSERT INTO kelurahan VALUES("3201142004","Pabangbon","320114");
INSERT INTO kelurahan VALUES("3201142005","Karacak","320114");
INSERT INTO kelurahan VALUES("3201142006","Barengkok","320114");
INSERT INTO kelurahan VALUES("3201142007","Leuwimekar","320114");
INSERT INTO kelurahan VALUES("3201142008","Puraseda","320114");
INSERT INTO kelurahan VALUES("3201142009","Cibeber I (Cibeber 1)","320114");
INSERT INTO kelurahan VALUES("3201142010","Cibeber II (Cibeber 2)","320114");
INSERT INTO kelurahan VALUES("3201142011","Karehkel","320114");
INSERT INTO kelurahan VALUES("3201152001","Ciampea","320115");
INSERT INTO kelurahan VALUES("3201152002","Cinangka","320115");
INSERT INTO kelurahan VALUES("3201152003","Cihideungudik (Cihideung Udik)","320115");
INSERT INTO kelurahan VALUES("3201152004","Bojongjengkol (Bojong Jengkol)","320115");
INSERT INTO kelurahan VALUES("3201152005","Tegalwaru (Tegal Waru)","320115");
INSERT INTO kelurahan VALUES("3201152006","Cibuntu","320115");
INSERT INTO kelurahan VALUES("3201152007","Cicadas","320115");
INSERT INTO kelurahan VALUES("3201152008","Cibadak","320115");
INSERT INTO kelurahan VALUES("3201152009","Bojongrangkas (Bojong Rangkas)","320115");
INSERT INTO kelurahan VALUES("3201152010","Cihideunghilir (Cihideung Ilir)","320115");
INSERT INTO kelurahan VALUES("3201152011","Cibanteng","320115");
INSERT INTO kelurahan VALUES("3201152012","Benteng","320115");
INSERT INTO kelurahan VALUES("3201152013","Ciampea Udik","320115");
INSERT INTO kelurahan VALUES("3201162001","Situ Udik","320116");
INSERT INTO kelurahan VALUES("3201162002","Situ Ilir","320116");
INSERT INTO kelurahan VALUES("3201162003","Cemplang","320116");
INSERT INTO kelurahan VALUES("3201162004","Cibatok I (Cibatok 1)","320116");
INSERT INTO kelurahan VALUES("3201162005","Ciaruteun Udik","320116");
INSERT INTO kelurahan VALUES("3201162006","Leuweungkolot (Leuweung Kolot)","320116");
INSERT INTO kelurahan VALUES("3201162007","Cimanggu I (Cimanggu 1)","320116");
INSERT INTO kelurahan VALUES("3201162008","Cimanggu II (Cimanggu 2)","320116");
INSERT INTO kelurahan VALUES("3201162009","Dukuh","320116");
INSERT INTO kelurahan VALUES("3201162010","Cijujung","320116");
INSERT INTO kelurahan VALUES("3201162011","Ciaruteun Ilir","320116");
INSERT INTO kelurahan VALUES("3201162012","Cibatok II (Cibatok 2)","320116");
INSERT INTO kelurahan VALUES("3201162013","Sukamaju","320116");
INSERT INTO kelurahan VALUES("3201162014","Galuga","320116");
INSERT INTO kelurahan VALUES("3201162015","Girimulya","320116");
INSERT INTO kelurahan VALUES("3201172001","Purwabakti","320117");
INSERT INTO kelurahan VALUES("3201172002","Cibunian","320117");
INSERT INTO kelurahan VALUES("3201172003","Cibitungwetan (Cibitung Wetan)","320117");
INSERT INTO kelurahan VALUES("3201172004","Gunungmenyan (Gunung Menyan)","320117");
INSERT INTO kelurahan VALUES("3201172005","Gunungbunder II (Gunung Bunder 2)","320117");
INSERT INTO kelurahan VALUES("3201172006","Pasarean","320117");
INSERT INTO kelurahan VALUES("3201172007","Cimayang","320117");
INSERT INTO kelurahan VALUES("3201172008","Pamijahan","320117");
INSERT INTO kelurahan VALUES("3201172009","Cibening","320117");
INSERT INTO kelurahan VALUES("3201172010","Gunungbunder I (Gunung Bunder 1)","320117");
INSERT INTO kelurahan VALUES("3201172011","Cibitung Kulon","320117");
INSERT INTO kelurahan VALUES("3201172012","Gunung Picung","320117");
INSERT INTO kelurahan VALUES("3201172013","Ciasihan","320117");
INSERT INTO kelurahan VALUES("3201172014","Gunungsari (Gunung Sari)","320117");
INSERT INTO kelurahan VALUES("3201172015","Ciasmara","320117");
INSERT INTO kelurahan VALUES("3201182001","Rumpin","320118");
INSERT INTO kelurahan VALUES("3201182002","Leuwibatu","320118");
INSERT INTO kelurahan VALUES("3201182003","Cidokom","320118");
INSERT INTO kelurahan VALUES("3201182004","Gobang","320118");
INSERT INTO kelurahan VALUES("3201182005","Cibodas","320118");
INSERT INTO kelurahan VALUES("3201182006","Rabak","320118");
INSERT INTO kelurahan VALUES("3201182007","Kampungsawah (Kampung Sawah)","320118");
INSERT INTO kelurahan VALUES("3201182008","Cipinang","320118");
INSERT INTO kelurahan VALUES("3201182009","Sukasari","320118");
INSERT INTO kelurahan VALUES("3201182010","Tamansari (Taman Sari)","320118");
INSERT INTO kelurahan VALUES("3201182011","Kertajaya (Kerta Jaya)","320118");
INSERT INTO kelurahan VALUES("3201182012","Sukamulya","320118");
INSERT INTO kelurahan VALUES("3201182013","Mekarsari (Mekar Sari)","320118");
INSERT INTO kelurahan VALUES("3201182014","Mekarjaya","320118");
INSERT INTO kelurahan VALUES("3201192001","Curug","320119");
INSERT INTO kelurahan VALUES("3201192002","Pangradin","320119");
INSERT INTO kelurahan VALUES("3201192003","Kalongsawah","320119");
INSERT INTO kelurahan VALUES("3201192004","Sipak","320119");
INSERT INTO kelurahan VALUES("3201192005","Jasinga","320119");
INSERT INTO kelurahan VALUES("3201192006","Koleang","320119");
INSERT INTO kelurahan VALUES("3201192007","Cikopomayak","320119");
INSERT INTO kelurahan VALUES("3201192008","Setu","320119");
INSERT INTO kelurahan VALUES("3201192009","Barengkok","320119");
INSERT INTO kelurahan VALUES("3201192010","Bagoang","320119");
INSERT INTO kelurahan VALUES("3201192011","Pangaur","320119");
INSERT INTO kelurahan VALUES("3201192012","Pamagersari","320119");
INSERT INTO kelurahan VALUES("3201192013","Jugala Jaya","320119");
INSERT INTO kelurahan VALUES("3201192014","Tegalwangi","320119");
INSERT INTO kelurahan VALUES("3201192015","Neglasari","320119");
INSERT INTO kelurahan VALUES("3201192016","Wirajaya","320119");
INSERT INTO kelurahan VALUES("3201202001","Jagabaya","320120");
INSERT INTO kelurahan VALUES("3201202002","Gorowong","320120");
INSERT INTO kelurahan VALUES("3201202003","Dago","320120");
INSERT INTO kelurahan VALUES("3201202004","Pingku","320120");
INSERT INTO kelurahan VALUES("3201202005","Cikuda","320120");
INSERT INTO kelurahan VALUES("3201202006","Parungpanjang","320120");
INSERT INTO kelurahan VALUES("3201202007","Lumpang","320120");
INSERT INTO kelurahan VALUES("3201202008","Cibunar","320120");
INSERT INTO kelurahan VALUES("3201202009","Jagabita","320120");
INSERT INTO kelurahan VALUES("3201202010","Gintungcilejet (Gintung Cilejet)","320120");
INSERT INTO kelurahan VALUES("3201202011","Kabasiran","320120");
INSERT INTO kelurahan VALUES("3201212001","Malasari","320121");
INSERT INTO kelurahan VALUES("3201212002","Curugbitung (Curug Bitung)","320121");
INSERT INTO kelurahan VALUES("3201212003","Cisarua","320121");
INSERT INTO kelurahan VALUES("3201212004","Bantarkaret (Bantar Karet)","320121");
INSERT INTO kelurahan VALUES("3201212005","Hambaro","320121");
INSERT INTO kelurahan VALUES("3201212006","Kalongliud (Kalong Liud)","320121");
INSERT INTO kelurahan VALUES("3201212007","Nanggung","320121");
INSERT INTO kelurahan VALUES("3201212008","Parakanmuncang (Parakan Muncang)","320121");
INSERT INTO kelurahan VALUES("3201212009","Pangkaljaya (Pangkal Jaya)","320121");
INSERT INTO kelurahan VALUES("3201212010","Sukaluyu","320121");
INSERT INTO kelurahan VALUES("3201212011","Batu Tulis","320121");
INSERT INTO kelurahan VALUES("3201222001","Sukamaju","320122");
INSERT INTO kelurahan VALUES("3201222002","Cigudeg","320122");
INSERT INTO kelurahan VALUES("3201222003","Bunar","320122");
INSERT INTO kelurahan VALUES("3201222004","Banyuresmi (Banyu Resmi)","320122");
INSERT INTO kelurahan VALUES("3201222005","Cintamanik","320122");
INSERT INTO kelurahan VALUES("3201222006","Argapura","320122");
INSERT INTO kelurahan VALUES("3201222007","Bangunjaya","320122");
INSERT INTO kelurahan VALUES("3201222008","Rengasjajar","320122");
INSERT INTO kelurahan VALUES("3201222009","Batujajar (Batu Jajar)","320122");
INSERT INTO kelurahan VALUES("3201222010","Wargajaya","320122");
INSERT INTO kelurahan VALUES("3201222011","Sukaraksa","320122");
INSERT INTO kelurahan VALUES("3201222012","Banyuwangi (Banyu Wangi)","320122");
INSERT INTO kelurahan VALUES("3201222013","Banyuasih (Banyu Asih)","320122");
INSERT INTO kelurahan VALUES("3201222014","Mekarjaya","320122");
INSERT INTO kelurahan VALUES("3201222015","Tegallega","320122");
INSERT INTO kelurahan VALUES("3201232001","Tapos","320123");
INSERT INTO kelurahan VALUES("3201232002","Ciomas","320123");
INSERT INTO kelurahan VALUES("3201232003","Batok","320123");
INSERT INTO kelurahan VALUES("3201232004","Babakan","320123");
INSERT INTO kelurahan VALUES("3201232005","Tenjo","320123");
INSERT INTO kelurahan VALUES("3201232006","Cilaku","320123");
INSERT INTO kelurahan VALUES("3201232007","Singabraja","320123");
INSERT INTO kelurahan VALUES("3201232008","Singabangsa","320123");
INSERT INTO kelurahan VALUES("3201232009","Bojong","320123");
INSERT INTO kelurahan VALUES("3201242001","Cileungsi","320124");
INSERT INTO kelurahan VALUES("3201242002","Citapen","320124");
INSERT INTO kelurahan VALUES("3201242003","Cibedug","320124");
INSERT INTO kelurahan VALUES("3201242004","Jambuluwuk (Jambu Luwuk)","320124");
INSERT INTO kelurahan VALUES("3201242005","Banjarsari (Banjar Sari)","320124");
INSERT INTO kelurahan VALUES("3201242006","Teluk Pinang","320124");
INSERT INTO kelurahan VALUES("3201242007","Banjar Waru","320124");
INSERT INTO kelurahan VALUES("3201242008","Bendungan","320124");
INSERT INTO kelurahan VALUES("3201242009","Pandan Sari (Pandansari)","320124");
INSERT INTO kelurahan VALUES("3201242010","Bojong Murni","320124");
INSERT INTO kelurahan VALUES("3201242011","Banjar Wangi","320124");
INSERT INTO kelurahan VALUES("3201242012","Ciawi","320124");
INSERT INTO kelurahan VALUES("3201242013","Bitungsari (Bitung Sari)","320124");
INSERT INTO kelurahan VALUES("3201251010","Cisarua","320125");
INSERT INTO kelurahan VALUES("3201252001","Batulayang (Batu Layang)","320125");
INSERT INTO kelurahan VALUES("3201252002","Jogjogan","320125");
INSERT INTO kelurahan VALUES("3201252003","Cibeureum","320125");
INSERT INTO kelurahan VALUES("3201252004","Cilember","320125");
INSERT INTO kelurahan VALUES("3201252005","Citeko","320125");
INSERT INTO kelurahan VALUES("3201252006","Tugu Selatan","320125");
INSERT INTO kelurahan VALUES("3201252007","Leuwimalang","320125");
INSERT INTO kelurahan VALUES("3201252008","Kopo","320125");
INSERT INTO kelurahan VALUES("3201252009","Tugu Utara","320125");
INSERT INTO kelurahan VALUES("3201262001","Sukamaju","320126");
INSERT INTO kelurahan VALUES("3201262002","Kuta","320126");
INSERT INTO kelurahan VALUES("3201262003","Gadog","320126");
INSERT INTO kelurahan VALUES("3201262004","Sukakarya","320126");
INSERT INTO kelurahan VALUES("3201262005","Megamendung","320126");
INSERT INTO kelurahan VALUES("3201262006","Cipayung (Cipayung Datar)","320126");
INSERT INTO kelurahan VALUES("3201262007","Sukamanah","320126");
INSERT INTO kelurahan VALUES("3201262008","Sukagalih","320126");
INSERT INTO kelurahan VALUES("3201262009","Cipayung Girang","320126");
INSERT INTO kelurahan VALUES("3201262010","Sukamahi","320126");
INSERT INTO kelurahan VALUES("3201262011","Sukaresmi","320126");
INSERT INTO kelurahan VALUES("3201262012","Pasir Angin","320126");
INSERT INTO kelurahan VALUES("3201272001","Pasir Muncang","320127");
INSERT INTO kelurahan VALUES("3201272002","Cimande Hilir","320127");
INSERT INTO kelurahan VALUES("3201272003","Ciderum","320127");
INSERT INTO kelurahan VALUES("3201272004","Caringin","320127");
INSERT INTO kelurahan VALUES("3201272005","Ciherang Pondok","320127");
INSERT INTO kelurahan VALUES("3201272006","Cinagara","320127");
INSERT INTO kelurahan VALUES("3201272007","Cimande","320127");
INSERT INTO kelurahan VALUES("3201272008","Pancawati","320127");
INSERT INTO kelurahan VALUES("3201272009","Muara Jaya (Muarajaya)","320127");
INSERT INTO kelurahan VALUES("3201272010","Basir Buncir (Pasir Buncir)","320127");
INSERT INTO kelurahan VALUES("3201272011","Lemah Duhur","320127");
INSERT INTO kelurahan VALUES("3201272012","Tangkil","320127");
INSERT INTO kelurahan VALUES("3201282001","Cijeruk","320128");
INSERT INTO kelurahan VALUES("3201282002","Cipelang","320128");
INSERT INTO kelurahan VALUES("3201282003","Warung Menteng","320128");
INSERT INTO kelurahan VALUES("3201282004","Tajur Halang","320128");
INSERT INTO kelurahan VALUES("3201282005","Cipicung","320128");
INSERT INTO kelurahan VALUES("3201282006","Cibalung","320128");
INSERT INTO kelurahan VALUES("3201282007","Sukaharja","320128");
INSERT INTO kelurahan VALUES("3201282008","Palasari","320128");
INSERT INTO kelurahan VALUES("3201282009","Tanjungsari (Tanjung Sari)","320128");
INSERT INTO kelurahan VALUES("3201291003","Padasuka","320129");
INSERT INTO kelurahan VALUES("3201292001","Mekarjaya","320129");
INSERT INTO kelurahan VALUES("3201292002","Sukaharja","320129");
INSERT INTO kelurahan VALUES("3201292004","Parakan","320129");
INSERT INTO kelurahan VALUES("3201292005","Ciomas","320129");
INSERT INTO kelurahan VALUES("3201292006","Pagelaran","320129");
INSERT INTO kelurahan VALUES("3201292007","Sukamakmur","320129");
INSERT INTO kelurahan VALUES("3201292008","Ciapus","320129");
INSERT INTO kelurahan VALUES("3201292009","Kota Batu","320129");
INSERT INTO kelurahan VALUES("3201292010","Laladon","320129");
INSERT INTO kelurahan VALUES("3201292011","Ciomas Rahayu","320129");
INSERT INTO kelurahan VALUES("3201302001","Sukadamai","320130");
INSERT INTO kelurahan VALUES("3201302002","Ciherang","320130");
INSERT INTO kelurahan VALUES("3201302003","Sinarsari (Sinar Sari)","320130");
INSERT INTO kelurahan VALUES("3201302004","Sukawening","320130");
INSERT INTO kelurahan VALUES("3201302005","Petir","320130");
INSERT INTO kelurahan VALUES("3201302006","Purwasari","320130");
INSERT INTO kelurahan VALUES("3201302007","Cikarawang","320130");
INSERT INTO kelurahan VALUES("3201302008","Babakan","320130");
INSERT INTO kelurahan VALUES("3201302009","Dramaga","320130");
INSERT INTO kelurahan VALUES("3201302010","Neglasari","320130");
INSERT INTO kelurahan VALUES("3201312001","Sukamantri","320131");
INSERT INTO kelurahan VALUES("3201312002","Sirnagalih","320131");
INSERT INTO kelurahan VALUES("3201312003","Pasireurih","320131");
INSERT INTO kelurahan VALUES("3201312004","Tamansari","320131");
INSERT INTO kelurahan VALUES("3201312005","Sukaluyu","320131");
INSERT INTO kelurahan VALUES("3201312006","Sukaresmi","320131");
INSERT INTO kelurahan VALUES("3201312007","Sukajaya","320131");
INSERT INTO kelurahan VALUES("3201312008","Sukajadi","320131");
INSERT INTO kelurahan VALUES("3201322001","Klapanunggal","320132");
INSERT INTO kelurahan VALUES("3201322002","Bojong","320132");
INSERT INTO kelurahan VALUES("3201322003","Nambo","320132");
INSERT INTO kelurahan VALUES("3201322004","Lulut","320132");
INSERT INTO kelurahan VALUES("3201322005","Cikahuripan","320132");
INSERT INTO kelurahan VALUES("3201322006","Kembang Kuning","320132");
INSERT INTO kelurahan VALUES("3201322007","Bantar Jati","320132");
INSERT INTO kelurahan VALUES("3201322008","Leuwikaret","320132");
INSERT INTO kelurahan VALUES("3201322009","Ligarmukti","320132");
INSERT INTO kelurahan VALUES("3201332001","Putat Nutug","320133");
INSERT INTO kelurahan VALUES("3201332002","Ciseeng","320133");
INSERT INTO kelurahan VALUES("3201332003","Parigi Mekar","320133");
INSERT INTO kelurahan VALUES("3201332004","Cibentang","320133");
INSERT INTO kelurahan VALUES("3201332005","Cibeuteung Udik","320133");
INSERT INTO kelurahan VALUES("3201332006","Karihkil","320133");
INSERT INTO kelurahan VALUES("3201332007","Babakan","320133");
INSERT INTO kelurahan VALUES("3201332008","Cihoe (Cihowe)","320133");
INSERT INTO kelurahan VALUES("3201332009","Cibeuteung Muara","320133");
INSERT INTO kelurahan VALUES("3201332010","Kuripan","320133");
INSERT INTO kelurahan VALUES("3201342001","Bantarjaya","320134");
INSERT INTO kelurahan VALUES("3201342002","Bantarsari","320134");
INSERT INTO kelurahan VALUES("3201342003","Pasirgaok","320134");
INSERT INTO kelurahan VALUES("3201342004","Rancabungur","320134");
INSERT INTO kelurahan VALUES("3201342005","Mekarsari","320134");
INSERT INTO kelurahan VALUES("3201342006","Candali","320134");
INSERT INTO kelurahan VALUES("3201342007","Cimulang","320134");
INSERT INTO kelurahan VALUES("3201352001","Cisarua","320135");
INSERT INTO kelurahan VALUES("3201352002","Kiarasari","320135");
INSERT INTO kelurahan VALUES("3201352003","Sukajaya","320135");
INSERT INTO kelurahan VALUES("3201352004","Sipayung","320135");
INSERT INTO kelurahan VALUES("3201352005","Cileuksa","320135");
INSERT INTO kelurahan VALUES("3201352006","Kiarapandak (Kiara Pandak)","320135");
INSERT INTO kelurahan VALUES("3201352007","Harkatjaya","320135");
INSERT INTO kelurahan VALUES("3201352008","Sukamulih","320135");
INSERT INTO kelurahan VALUES("3201352009","Pasir Madang","320135");
INSERT INTO kelurahan VALUES("3201352010","Urug","320135");
INSERT INTO kelurahan VALUES("3201352011","Jayaraharja","320135");
INSERT INTO kelurahan VALUES("3201362001","Tanjungsari","320136");
INSERT INTO kelurahan VALUES("3201362002","Selawangi","320136");
INSERT INTO kelurahan VALUES("3201362003","Tanjungrasa","320136");
INSERT INTO kelurahan VALUES("3201362004","Antajaya","320136");
INSERT INTO kelurahan VALUES("3201362005","Pasir Tanjung","320136");
INSERT INTO kelurahan VALUES("3201362006","Cibadak","320136");
INSERT INTO kelurahan VALUES("3201362007","Sukarasa","320136");
INSERT INTO kelurahan VALUES("3201362008","Sirnasari","320136");
INSERT INTO kelurahan VALUES("3201362009","Buanajaya","320136");
INSERT INTO kelurahan VALUES("3201362010","Sirnarasa","320136");
INSERT INTO kelurahan VALUES("3201372001","Tajurhalang (Tajur Halang)","320137");
INSERT INTO kelurahan VALUES("3201372002","Citayam","320137");
INSERT INTO kelurahan VALUES("3201372003","Sasak Panjang","320137");
INSERT INTO kelurahan VALUES("3201372004","Nanggerang","320137");
INSERT INTO kelurahan VALUES("3201372005","Sukmajaya","320137");
INSERT INTO kelurahan VALUES("3201372006","Tonjong","320137");
INSERT INTO kelurahan VALUES("3201372007","Kalisuren","320137");
INSERT INTO kelurahan VALUES("3201382001","Cigombong","320138");
INSERT INTO kelurahan VALUES("3201382002","Watesjaya","320138");
INSERT INTO kelurahan VALUES("3201382003","Ciburuy","320138");
INSERT INTO kelurahan VALUES("3201382004","Srogol","320138");
INSERT INTO kelurahan VALUES("3201382005","Cisalada","320138");
INSERT INTO kelurahan VALUES("3201382006","Tugujaya","320138");
INSERT INTO kelurahan VALUES("3201382007","Pasirjaya (Pasir Jaya)","320138");
INSERT INTO kelurahan VALUES("3201382008","Ciburayut","320138");
INSERT INTO kelurahan VALUES("3201382009","Ciadeg","320138");
INSERT INTO kelurahan VALUES("3201392001","Leuwisadeng","320139");
INSERT INTO kelurahan VALUES("3201392002","Babakan Sadeng","320139");
INSERT INTO kelurahan VALUES("3201392003","Sadeng Kolot (Sadengkolot)","320139");
INSERT INTO kelurahan VALUES("3201392004","Wangunjaya (Wangun Jaya)","320139");
INSERT INTO kelurahan VALUES("3201392005","Kalong I (Kalong 1)","320139");
INSERT INTO kelurahan VALUES("3201392006","Kalong II (Kalong 2)","320139");
INSERT INTO kelurahan VALUES("3201392007","Sadeng","320139");
INSERT INTO kelurahan VALUES("3201392008","Sibanteng","320139");
INSERT INTO kelurahan VALUES("3201402001","Tapos I","320140");
INSERT INTO kelurahan VALUES("3201402002","Tapos II","320140");
INSERT INTO kelurahan VALUES("3201402003","Cibitung Tengah","320140");
INSERT INTO kelurahan VALUES("3201402004","Situdaun","320140");
INSERT INTO kelurahan VALUES("3201402005","Cinangneng","320140");
INSERT INTO kelurahan VALUES("3201402006","Gunung Malang (Gunungmalang)","320140");
INSERT INTO kelurahan VALUES("3201402007","Gunung Mulya","320140");
INSERT INTO kelurahan VALUES("3202011001","Palabuhanratu (Pelabuhanratu)","320201");
INSERT INTO kelurahan VALUES("3202012002","Tonjong","320201");
INSERT INTO kelurahan VALUES("3202012003","Citepus","320201");
INSERT INTO kelurahan VALUES("3202012004","Buniwangi","320201");
INSERT INTO kelurahan VALUES("3202012005","Cibodas","320201");
INSERT INTO kelurahan VALUES("3202012006","Pasirsuren","320201");
INSERT INTO kelurahan VALUES("3202012007","Cikadu","320201");
INSERT INTO kelurahan VALUES("3202012008","Citarik","320201");
INSERT INTO kelurahan VALUES("3202012009","Cimanggu","320201");
INSERT INTO kelurahan VALUES("3202012010","Jayanti","320201");
INSERT INTO kelurahan VALUES("3202022001","Cidadap","320202");
INSERT INTO kelurahan VALUES("3202022002","Loji","320202");
INSERT INTO kelurahan VALUES("3202022003","Kertajaya","320202");
INSERT INTO kelurahan VALUES("3202022004","Cihaur","320202");
INSERT INTO kelurahan VALUES("3202022005","Cibuntu","320202");
INSERT INTO kelurahan VALUES("3202022006","Mekarasih","320202");
INSERT INTO kelurahan VALUES("3202022007","Sangrawayang","320202");
INSERT INTO kelurahan VALUES("3202032001","Cikakak","320203");
INSERT INTO kelurahan VALUES("3202032002","Cimaja","320203");
INSERT INTO kelurahan VALUES("3202032003","Ridogalih","320203");
INSERT INTO kelurahan VALUES("3202032004","Sukamaju","320203");
INSERT INTO kelurahan VALUES("3202032005","Cileungsing","320203");
INSERT INTO kelurahan VALUES("3202032006","Margalaksana","320203");
INSERT INTO kelurahan VALUES("3202032007","Sirnarasa","320203");
INSERT INTO kelurahan VALUES("3202032008","Gandasoli","320203");
INSERT INTO kelurahan VALUES("3202032009","Cirendang","320203");
INSERT INTO kelurahan VALUES("3202042001","Bantargadung","320204");
INSERT INTO kelurahan VALUES("3202042002","Mangunjaya","320204");
INSERT INTO kelurahan VALUES("3202042003","Bojonggaling","320204");
INSERT INTO kelurahan VALUES("3202042004","Limusnunggal","320204");
INSERT INTO kelurahan VALUES("3202042005","Bantargebang","320204");
INSERT INTO kelurahan VALUES("3202042006","Buanajaya","320204");
INSERT INTO kelurahan VALUES("3202042007","Boyong Sari","320204");
INSERT INTO kelurahan VALUES("3202052001","Cisolok","320205");
INSERT INTO kelurahan VALUES("3202052002","Pasir Baru","320205");
INSERT INTO kelurahan VALUES("3202052003","Cikahuripan","320205");
INSERT INTO kelurahan VALUES("3202052004","Cikelat","320205");
INSERT INTO kelurahan VALUES("3202052005","Caringin","320205");
INSERT INTO kelurahan VALUES("3202052006","Gunungkaramat","320205");
INSERT INTO kelurahan VALUES("3202052007","Gunungtanjung","320205");
INSERT INTO kelurahan VALUES("3202052008","Karangpapak","320205");
INSERT INTO kelurahan VALUES("3202052009","Sirnaresmi","320205");
INSERT INTO kelurahan VALUES("3202052010","Cicadas","320205");
INSERT INTO kelurahan VALUES("3202052011","Wanajaya","320205");
INSERT INTO kelurahan VALUES("3202052012","Wangunsari","320205");
INSERT INTO kelurahan VALUES("3202052013","Sukarame","320205");
INSERT INTO kelurahan VALUES("3202062001","Cikidang","320206");
INSERT INTO kelurahan VALUES("3202062002","Cikiray","320206");
INSERT INTO kelurahan VALUES("3202062003","Gunungmalang","320206");
INSERT INTO kelurahan VALUES("3202062004","Pangkalan","320206");
INSERT INTO kelurahan VALUES("3202062005","Cicareuh","320206");
INSERT INTO kelurahan VALUES("3202062006","Taman Sari","320206");
INSERT INTO kelurahan VALUES("3202062007","Bumi Sari","320206");
INSERT INTO kelurahan VALUES("3202062008","Sampora","320206");
INSERT INTO kelurahan VALUES("3202062009","Nangkakoneng","320206");
INSERT INTO kelurahan VALUES("3202062010","Mekarnangka","320206");
INSERT INTO kelurahan VALUES("3202062011","Cijambe","320206");
INSERT INTO kelurahan VALUES("3202062012","Cikarae Thoyyibah","320206");
INSERT INTO kelurahan VALUES("3202072001","Lengkong","320207");
INSERT INTO kelurahan VALUES("3202072002","Cilangkap","320207");
INSERT INTO kelurahan VALUES("3202072003","Tegallega","320207");
INSERT INTO kelurahan VALUES("3202072004","Neglasari","320207");
INSERT INTO kelurahan VALUES("3202072005","Langkapjaya","320207");
INSERT INTO kelurahan VALUES("3202082001","Jampangtengah (Jampang Tengah)","320208");
INSERT INTO kelurahan VALUES("3202082002","Padabeunghar","320208");
INSERT INTO kelurahan VALUES("3202082003","Bantarpanjang","320208");
INSERT INTO kelurahan VALUES("3202082004","Bojongjengkol (Bojong Jengkol)","320208");
INSERT INTO kelurahan VALUES("3202082005","Nangerang","320208");
INSERT INTO kelurahan VALUES("3202082006","Tanjungsari","320208");
INSERT INTO kelurahan VALUES("3202082007","Sindangresmi","320208");
INSERT INTO kelurahan VALUES("3202082008","Panumbangan","320208");
INSERT INTO kelurahan VALUES("3202082009","Cijulang","320208");
INSERT INTO kelurahan VALUES("3202082010","Bantaragung (Bantar Agung)","320208");
INSERT INTO kelurahan VALUES("3202082011","Bojongtipar","320208");
INSERT INTO kelurahan VALUES("3202092001","Warungkiara","320209");
INSERT INTO kelurahan VALUES("3202092002","Bojongkerta","320209");
INSERT INTO kelurahan VALUES("3202092003","Girijaya","320209");
INSERT INTO kelurahan VALUES("3202092004","Bantarkalong","320209");
INSERT INTO kelurahan VALUES("3202092005","Hegarmanah","320209");
INSERT INTO kelurahan VALUES("3202092006","Ubrug","320209");
INSERT INTO kelurahan VALUES("3202092007","Sirnajaya","320209");
INSERT INTO kelurahan VALUES("3202092008","Sukaharja","320209");
INSERT INTO kelurahan VALUES("3202092009","Kertamukti","320209");
INSERT INTO kelurahan VALUES("3202092010","Mekarjaya","320209");
INSERT INTO kelurahan VALUES("3202092011","Damarraja","320209");
INSERT INTO kelurahan VALUES("3202092012","Tarisi","320209");
INSERT INTO kelurahan VALUES("3202102001","Cikembar","320210");
INSERT INTO kelurahan VALUES("3202102002","Parakanlima","320210");
INSERT INTO kelurahan VALUES("3202102003","Bojong","320210");
INSERT INTO kelurahan VALUES("3202102004","Cimanggu","320210");
INSERT INTO kelurahan VALUES("3202102005","Bojongkembar","320210");
INSERT INTO kelurahan VALUES("3202102006","Sukamaju","320210");
INSERT INTO kelurahan VALUES("3202102007","Cibatu","320210");
INSERT INTO kelurahan VALUES("3202102008","Kertaraharja","320210");
INSERT INTO kelurahan VALUES("3202102009","Sukamulya","320210");
INSERT INTO kelurahan VALUES("3202102010","Bojongraharja","320210");
INSERT INTO kelurahan VALUES("3202111001","Cibadak","320211");
INSERT INTO kelurahan VALUES("3202112002","Sekarwangi","320211");
INSERT INTO kelurahan VALUES("3202112003","Pamuruyan","320211");
INSERT INTO kelurahan VALUES("3202112004","Karangtengah","320211");
INSERT INTO kelurahan VALUES("3202112005","Neglasari","320211");
INSERT INTO kelurahan VALUES("3202112006","Warnajati","320211");
INSERT INTO kelurahan VALUES("3202112007","Tenjojaya","320211");
INSERT INTO kelurahan VALUES("3202112008","Ciheulang Tonggoh","320211");
INSERT INTO kelurahan VALUES("3202112009","Sukasirna","320211");
INSERT INTO kelurahan VALUES("3202112010","Batununggal","320211");
INSERT INTO kelurahan VALUES("3202122001","Kalaparea","320212");
INSERT INTO kelurahan VALUES("3202122002","Pawenang","320212");
INSERT INTO kelurahan VALUES("3202122003","Nagrak Utara","320212");
INSERT INTO kelurahan VALUES("3202122004","Cisarua","320212");
INSERT INTO kelurahan VALUES("3202122009","Balekambang","320212");
INSERT INTO kelurahan VALUES("3202122010","Babakan Panjang","320212");
INSERT INTO kelurahan VALUES("3202122011","Darmareja","320212");
INSERT INTO kelurahan VALUES("3202122012","Cihanyawar","320212");
INSERT INTO kelurahan VALUES("3202122013","Nagrak Selatan","320212");
INSERT INTO kelurahan VALUES("3202122014","Girijaya","320212");
INSERT INTO kelurahan VALUES("3202132001","Parungkuda (Parung Kuda)","320213");
INSERT INTO kelurahan VALUES("3202132002","Palasari Hilir","320213");
INSERT INTO kelurahan VALUES("3202132003","Kompa","320213");
INSERT INTO kelurahan VALUES("3202132004","Pondokkaso Landeuh (Pondok Kaso Landeuh)","320213");
INSERT INTO kelurahan VALUES("3202132005","Sundawenang","320213");
INSERT INTO kelurahan VALUES("3202132006","Bojongkokosan (Bojong Kokosan)","320213");
INSERT INTO kelurahan VALUES("3202132007","Langensari","320213");
INSERT INTO kelurahan VALUES("3202132008","Babakanjaya","320213");
INSERT INTO kelurahan VALUES("3202142001","Bojonggenteng (Bojong Genteng)","320214");
INSERT INTO kelurahan VALUES("3202142002","Cibodas","320214");
INSERT INTO kelurahan VALUES("3202142003","Berekah","320214");
INSERT INTO kelurahan VALUES("3202142004","Cipanengah","320214");
INSERT INTO kelurahan VALUES("3202142005","Bojonggaling (Bojong Galing / Galih)","320214");
INSERT INTO kelurahan VALUES("3202152001","Parakan Salak (Parakansalak)","320215");
INSERT INTO kelurahan VALUES("3202152002","Bojong Longok (Bojonglongok)","320215");
INSERT INTO kelurahan VALUES("3202152003","Sukakersa","320215");
INSERT INTO kelurahan VALUES("3202152004","Sukatani","320215");
INSERT INTO kelurahan VALUES("3202152005","Bojongasih","320215");
INSERT INTO kelurahan VALUES("3202152006","Lebaksari","320215");
INSERT INTO kelurahan VALUES("3202161001","Cicurug","320216");
INSERT INTO kelurahan VALUES("3202162002","Nyangkowek","320216");
INSERT INTO kelurahan VALUES("3202162003","Tenjolaya","320216");
INSERT INTO kelurahan VALUES("3202162004","Benda","320216");
INSERT INTO kelurahan VALUES("3202162005","Pasawahan","320216");
INSERT INTO kelurahan VALUES("3202162006","Cisaat","320216");
INSERT INTO kelurahan VALUES("3202162007","Purwasari","320216");
INSERT INTO kelurahan VALUES("3202162008","Caringin","320216");
INSERT INTO kelurahan VALUES("3202162009","Tenjoayu","320216");
INSERT INTO kelurahan VALUES("3202162010","Kutajaya","320216");
INSERT INTO kelurahan VALUES("3202162011","Mekarsari","320216");
INSERT INTO kelurahan VALUES("3202162012","Bangbayang","320216");
INSERT INTO kelurahan VALUES("3202162013","Nanggerang","320216");
INSERT INTO kelurahan VALUES("3202172001","Pondokaso Tonggoh (Pondok Kaso Tonggoh)","320217");
INSERT INTO kelurahan VALUES("3202172002","Babakanpari (Babakan Pari)","320217");
INSERT INTO kelurahan VALUES("3202172003","Pondokaso Tengah (Pondok Kaso Tengah)","320217");
INSERT INTO kelurahan VALUES("3202172004","Cidahu","320217");
INSERT INTO kelurahan VALUES("3202172005","Tangkil","320217");
INSERT INTO kelurahan VALUES("3202172006","Jayabakti","320217");
INSERT INTO kelurahan VALUES("3202172007","Girijaya","320217");
INSERT INTO kelurahan VALUES("3202172008","Pasirdoton","320217");
INSERT INTO kelurahan VALUES("3202182001","Kalapanunggal (Kalapa Nunggal)","320218");
INSERT INTO kelurahan VALUES("3202182002","Palasari Girang","320218");
INSERT INTO kelurahan VALUES("3202182003","Pulosari","320218");
INSERT INTO kelurahan VALUES("3202182004","Makasari","320218");
INSERT INTO kelurahan VALUES("3202182005","Kadununggal","320218");
INSERT INTO kelurahan VALUES("3202182006","Walang Sari (Walangsari)","320218");
INSERT INTO kelurahan VALUES("3202182007","Gunungendut (Gunung Endut)","320218");
INSERT INTO kelurahan VALUES("3202192001","Kabandungan","320219");
INSERT INTO kelurahan VALUES("3202192002","Cipeuteuy","320219");
INSERT INTO kelurahan VALUES("3202192003","Cihamerang","320219");
INSERT INTO kelurahan VALUES("3202192004","Tugubandung","320219");
INSERT INTO kelurahan VALUES("3202192005","Mekarjaya","320219");
INSERT INTO kelurahan VALUES("3202192006","Cianaga","320219");
INSERT INTO kelurahan VALUES("3202202001","Waluran","320220");
INSERT INTO kelurahan VALUES("3202202002","Sukamukti","320220");
INSERT INTO kelurahan VALUES("3202202003","Caringinnunggal (Caringin Nunggal)","320220");
INSERT INTO kelurahan VALUES("3202202004","Mekarmukti (Mekar Mukti)","320220");
INSERT INTO kelurahan VALUES("3202202005","Mangunjaya","320220");
INSERT INTO kelurahan VALUES("3202202006","Waluran Mandiri","320220");
INSERT INTO kelurahan VALUES("3202211001","Jampangkulon (Jampang Kulon)","320221");
INSERT INTO kelurahan VALUES("3202212002","Bojonggenteng (Bojong Genteng)","320221");
INSERT INTO kelurahan VALUES("3202212003","Cikarang","320221");
INSERT INTO kelurahan VALUES("3202212005","Bojongsari","320221");
INSERT INTO kelurahan VALUES("3202212007","Nagraksari","320221");
INSERT INTO kelurahan VALUES("3202212008","Mekarjaya","320221");
INSERT INTO kelurahan VALUES("3202212009","Tanjung","320221");
INSERT INTO kelurahan VALUES("3202212011","Ciparay","320221");
INSERT INTO kelurahan VALUES("3202212013","Padajaya","320221");
INSERT INTO kelurahan VALUES("3202212014","Karanganyar","320221");
INSERT INTO kelurahan VALUES("3202212016","Cikaranggeusan","320221");
INSERT INTO kelurahan VALUES("3202222001","Ciemas","320222");
INSERT INTO kelurahan VALUES("3202222002","Cibenda","320222");
INSERT INTO kelurahan VALUES("3202222003","Ciwaru","320222");
INSERT INTO kelurahan VALUES("3202222004","Mekarjaya","320222");
INSERT INTO kelurahan VALUES("3202222005","Girimukti","320222");
INSERT INTO kelurahan VALUES("3202222006","Tamanjaya","320222");
INSERT INTO kelurahan VALUES("3202222007","Mandrajaya","320222");
INSERT INTO kelurahan VALUES("3202222008","Sidamulya","320222");
INSERT INTO kelurahan VALUES("3202222009","Mekarsakti","320222");
INSERT INTO kelurahan VALUES("3202232001","Kalibunder","320223");
INSERT INTO kelurahan VALUES("3202232002","Bojong","320223");
INSERT INTO kelurahan VALUES("3202232003","Cimahpar","320223");
INSERT INTO kelurahan VALUES("3202232004","Sekarsari","320223");
INSERT INTO kelurahan VALUES("3202232005","Sukaluyu","320223");
INSERT INTO kelurahan VALUES("3202232006","Balekambang","320223");
INSERT INTO kelurahan VALUES("3202232007","Mekarwangi","320223");
INSERT INTO kelurahan VALUES("3202241013","Surade","320224");
INSERT INTO kelurahan VALUES("3202242001","Jagamukti","320224");
INSERT INTO kelurahan VALUES("3202242002","Citanglar","320224");
INSERT INTO kelurahan VALUES("3202242003","Wanasari","320224");
INSERT INTO kelurahan VALUES("3202242005","Sirnasari","320224");
INSERT INTO kelurahan VALUES("3202242006","Kadaleman","320224");
INSERT INTO kelurahan VALUES("3202242007","Gunungsungging (Gunung Sungging)","320224");
INSERT INTO kelurahan VALUES("3202242008","Cipeundeuy","320224");
INSERT INTO kelurahan VALUES("3202242009","Pasiripis","320224");
INSERT INTO kelurahan VALUES("3202242010","Buniwangi","320224");
INSERT INTO kelurahan VALUES("3202242011","Sukatani","320224");
INSERT INTO kelurahan VALUES("3202242012","Kademangan","320224");
INSERT INTO kelurahan VALUES("3202252001","Talagamurni","320225");
INSERT INTO kelurahan VALUES("3202252002","Banyumurni","320225");
INSERT INTO kelurahan VALUES("3202252003","Cibitung","320225");
INSERT INTO kelurahan VALUES("3202252004","Cidahu","320225");
INSERT INTO kelurahan VALUES("3202252005","Cibodas","320225");
INSERT INTO kelurahan VALUES("3202252006","Banyuwangi","320225");
INSERT INTO kelurahan VALUES("3202262001","Ciracap","320226");
INSERT INTO kelurahan VALUES("3202262002","Cikangkung","320226");
INSERT INTO kelurahan VALUES("3202262003","Gunungbatu","320226");
INSERT INTO kelurahan VALUES("3202262004","Purwasedar","320226");
INSERT INTO kelurahan VALUES("3202262005","Pasirpanjang","320226");
INSERT INTO kelurahan VALUES("3202262006","Mekarsari","320226");
INSERT INTO kelurahan VALUES("3202262007","Ujung Genteng (Ujunggenteng)","320226");
INSERT INTO kelurahan VALUES("3202262008","Pangumbahan","320226");
INSERT INTO kelurahan VALUES("3202272001","Cikujang","320227");
INSERT INTO kelurahan VALUES("3202272002","Gunungguruh","320227");
INSERT INTO kelurahan VALUES("3202272003","Cibentang","320227");
INSERT INTO kelurahan VALUES("3202272004","Sirnaresmi","320227");
INSERT INTO kelurahan VALUES("3202272005","Kebonmanggu","320227");
INSERT INTO kelurahan VALUES("3202272006","Cibolang","320227");
INSERT INTO kelurahan VALUES("3202272007","Mangkalaya","320227");
INSERT INTO kelurahan VALUES("3202282001","Cicantayan","320228");
INSERT INTO kelurahan VALUES("3202282002","Lembursawah","320228");
INSERT INTO kelurahan VALUES("3202282003","Cijalingan","320228");
INSERT INTO kelurahan VALUES("3202282004","Cisande","320228");
INSERT INTO kelurahan VALUES("3202282005","Cimahi","320228");
INSERT INTO kelurahan VALUES("3202282006","Hegarmanah","320228");
INSERT INTO kelurahan VALUES("3202282007","Sikadamai (Sukadamai)","320228");
INSERT INTO kelurahan VALUES("3202282008","Cimanggis","320228");
INSERT INTO kelurahan VALUES("3202292001","Gunungjaya","320229");
INSERT INTO kelurahan VALUES("3202292002","Sukasari","320229");
INSERT INTO kelurahan VALUES("3202292003","Sukamanah","320229");
INSERT INTO kelurahan VALUES("3202292004","Cisaat","320229");
INSERT INTO kelurahan VALUES("3202292005","Nagrak","320229");
INSERT INTO kelurahan VALUES("3202292006","Babakan","320229");
INSERT INTO kelurahan VALUES("3202292007","Sukamantri","320229");
INSERT INTO kelurahan VALUES("3202292008","Cibatu","320229");
INSERT INTO kelurahan VALUES("3202292009","Selajambe","320229");
INSERT INTO kelurahan VALUES("3202292010","Padaasih","320229");
INSERT INTO kelurahan VALUES("3202292011","Cibolang Kaler","320229");
INSERT INTO kelurahan VALUES("3202292012","Kutasirna","320229");
INSERT INTO kelurahan VALUES("3202292013","Sukaresmi","320229");
INSERT INTO kelurahan VALUES("3202302001","Kadudampit","320230");
INSERT INTO kelurahan VALUES("3202302002","Citamiang","320230");
INSERT INTO kelurahan VALUES("3202302003","Muaradua","320230");
INSERT INTO kelurahan VALUES("3202302004","Gedepangrango (Gede Pangrango)","320230");
INSERT INTO kelurahan VALUES("3202302005","Sukamanis","320230");
INSERT INTO kelurahan VALUES("3202302006","Undrusbinangun (Undrus Binangun)","320230");
INSERT INTO kelurahan VALUES("3202302007","Cipetir","320230");
INSERT INTO kelurahan VALUES("3202302008","Sukamaju","320230");
INSERT INTO kelurahan VALUES("3202302009","Cikahuripan","320230");
INSERT INTO kelurahan VALUES("3202312001","Caringin Wetan","320231");
INSERT INTO kelurahan VALUES("3202312002","Sukamulya","320231");
INSERT INTO kelurahan VALUES("3202312003","Caringin Kulon","320231");
INSERT INTO kelurahan VALUES("3202312004","Seuseupan","320231");
INSERT INTO kelurahan VALUES("3202312005","Cijengkol","320231");
INSERT INTO kelurahan VALUES("3202312006","Mekarjaya","320231");
INSERT INTO kelurahan VALUES("3202312007","Talaga","320231");
INSERT INTO kelurahan VALUES("3202312008","Cikembang","320231");
INSERT INTO kelurahan VALUES("3202312009","Pasir Datar Indah","320231");
INSERT INTO kelurahan VALUES("3202322001","Parungseah","320232");
INSERT INTO kelurahan VALUES("3202322002","Sundajayagirang (Sundajaya Girang)","320232");
INSERT INTO kelurahan VALUES("3202322003","Karawang","320232");
INSERT INTO kelurahan VALUES("3202322004","Warnasari","320232");
INSERT INTO kelurahan VALUES("3202322005","Sukajaya","320232");
INSERT INTO kelurahan VALUES("3202322006","Perbawati","320232");
INSERT INTO kelurahan VALUES("3202332001","Pasirhalang","320233");
INSERT INTO kelurahan VALUES("3202332002","Selawi (Selaawi)","320233");
INSERT INTO kelurahan VALUES("3202332003","Langensari","320233");
INSERT INTO kelurahan VALUES("3202332004","Sukaraja","320233");
INSERT INTO kelurahan VALUES("3202332005","Limbangan","320233");
INSERT INTO kelurahan VALUES("3202332006","Cisarua","320233");
INSERT INTO kelurahan VALUES("3202332007","Sukamekar","320233");
INSERT INTO kelurahan VALUES("3202332008","Selawangi","320233");
INSERT INTO kelurahan VALUES("3202332009","Margaluyu","320233");
INSERT INTO kelurahan VALUES("3202342001","Kebonpedes","320234");
INSERT INTO kelurahan VALUES("3202342002","Cikaret","320234");
INSERT INTO kelurahan VALUES("3202342003","Bojongsawah","320234");
INSERT INTO kelurahan VALUES("3202342004","Sasagaran","320234");
INSERT INTO kelurahan VALUES("3202342005","Jambenenggang","320234");
INSERT INTO kelurahan VALUES("3202352001","Cireunghas","320235");
INSERT INTO kelurahan VALUES("3202352002","Cipurut","320235");
INSERT INTO kelurahan VALUES("3202352003","Bencoy","320235");
INSERT INTO kelurahan VALUES("3202352004","Cikurutug","320235");
INSERT INTO kelurahan VALUES("3202352005","Tegalpanjang","320235");
INSERT INTO kelurahan VALUES("3202362001","Sukalarang","320236");
INSERT INTO kelurahan VALUES("3202362002","Sukamaju","320236");
INSERT INTO kelurahan VALUES("3202362003","Cimangkok","320236");
INSERT INTO kelurahan VALUES("3202362004","Titisan","320236");
INSERT INTO kelurahan VALUES("3202362005","Semplak","320236");
INSERT INTO kelurahan VALUES("3202362006","Prianganjaya","320236");
INSERT INTO kelurahan VALUES("3202372001","Pabuaran","320237");
INSERT INTO kelurahan VALUES("3202372002","Ciwalat","320237");
INSERT INTO kelurahan VALUES("3202372003","Sirnasari","320237");
INSERT INTO kelurahan VALUES("3202372004","Bantarsari","320237");
INSERT INTO kelurahan VALUES("3202372005","Sukajaya","320237");
INSERT INTO kelurahan VALUES("3202372006","Cibadak","320237");
INSERT INTO kelurahan VALUES("3202372007","Lembur Sawah","320237");
INSERT INTO kelurahan VALUES("3202382001","Purabaya","320238");
INSERT INTO kelurahan VALUES("3202382002","Neglasari","320238");
INSERT INTO kelurahan VALUES("3202382003","Pagelaran","320238");
INSERT INTO kelurahan VALUES("3202382004","Cimerang","320238");
INSERT INTO kelurahan VALUES("3202382005","Citamiang","320238");
INSERT INTO kelurahan VALUES("3202382006","Margaluyu","320238");
INSERT INTO kelurahan VALUES("3202382007","Cicukang","320238");
INSERT INTO kelurahan VALUES("3202392001","Nyalindung","320239");
INSERT INTO kelurahan VALUES("3202392002","Neglasari","320239");
INSERT INTO kelurahan VALUES("3202392003","Sukamaju","320239");
INSERT INTO kelurahan VALUES("3202392004","Bojongkalong","320239");
INSERT INTO kelurahan VALUES("3202392005","Cijangkar","320239");
INSERT INTO kelurahan VALUES("3202392006","Mekarsari","320239");
INSERT INTO kelurahan VALUES("3202392007","Wangunreja","320239");
INSERT INTO kelurahan VALUES("3202392008","Cisitu","320239");
INSERT INTO kelurahan VALUES("3202392009","Bojongsari","320239");
INSERT INTO kelurahan VALUES("3202392010","Kertaangsana","320239");
INSERT INTO kelurahan VALUES("3202402001","Gegerbitung","320240");
INSERT INTO kelurahan VALUES("3202402002","Cijurey","320240");
INSERT INTO kelurahan VALUES("3202402003","Ciengang","320240");
INSERT INTO kelurahan VALUES("3202402004","Karangjaya","320240");
INSERT INTO kelurahan VALUES("3202402005","Caringin","320240");
INSERT INTO kelurahan VALUES("3202402006","Sukamanah","320240");
INSERT INTO kelurahan VALUES("3202402007","Buniwangi","320240");
INSERT INTO kelurahan VALUES("3202412001","Sagaranten","320241");
INSERT INTO kelurahan VALUES("3202412002","Curugluhur","320241");
INSERT INTO kelurahan VALUES("3202412003","Cibaregbeg","320241");
INSERT INTO kelurahan VALUES("3202412004","Pasanggrahan","320241");
INSERT INTO kelurahan VALUES("3202412005","Datarnangka","320241");
INSERT INTO kelurahan VALUES("3202412006","Puncakmanggis","320241");
INSERT INTO kelurahan VALUES("3202412007","Hegarmanah","320241");
INSERT INTO kelurahan VALUES("3202412008","Gunungbentang (Gunung Bentang)","320241");
INSERT INTO kelurahan VALUES("3202412009","Sinarbentang (Sinar Bentang)","320241");
INSERT INTO kelurahan VALUES("3202412010","Cibitung","320241");
INSERT INTO kelurahan VALUES("3202412011","Margaluyu","320241");
INSERT INTO kelurahan VALUES("3202412012","Mekarsari","320241");
INSERT INTO kelurahan VALUES("3202422001","Curugkembar","320242");
INSERT INTO kelurahan VALUES("3202422002","Cimenteng","320242");
INSERT INTO kelurahan VALUES("3202422003","Tanjungsari","320242");
INSERT INTO kelurahan VALUES("3202422004","Sindangraja","320242");
INSERT INTO kelurahan VALUES("3202422005","Mekartanjung","320242");
INSERT INTO kelurahan VALUES("3202422006","Nagrakjaya","320242");
INSERT INTO kelurahan VALUES("3202422007","Bojong Tugu (Bojongtugu)","320242");
INSERT INTO kelurahan VALUES("3202432001","Cidolog","320243");
INSERT INTO kelurahan VALUES("3202432002","Cipamingkis","320243");
INSERT INTO kelurahan VALUES("3202432003","Cikarang","320243");
INSERT INTO kelurahan VALUES("3202432004","Tegallega","320243");
INSERT INTO kelurahan VALUES("3202432005","Mekarjaya","320243");
INSERT INTO kelurahan VALUES("3202442001","Padasenang","320244");
INSERT INTO kelurahan VALUES("3202442002","Cidadap","320244");
INSERT INTO kelurahan VALUES("3202442003","Banjarsari","320244");
INSERT INTO kelurahan VALUES("3202442004","Hegarmulya","320244");
INSERT INTO kelurahan VALUES("3202442005","Tenjolaut","320244");
INSERT INTO kelurahan VALUES("3202442006","Mekartani","320244");
INSERT INTO kelurahan VALUES("3202452001","Tegalbuleud","320245");
INSERT INTO kelurahan VALUES("3202452002","Bangbayang","320245");
INSERT INTO kelurahan VALUES("3202452003","Sumberjaya","320245");
INSERT INTO kelurahan VALUES("3202452004","Calingcing","320245");
INSERT INTO kelurahan VALUES("3202452005","Nangela","320245");
INSERT INTO kelurahan VALUES("3202452006","Rambay","320245");
INSERT INTO kelurahan VALUES("3202452007","Buniasih","320245");
INSERT INTO kelurahan VALUES("3202452008","Sirnamekar","320245");
INSERT INTO kelurahan VALUES("3202462001","Cimanggu","320246");
INSERT INTO kelurahan VALUES("3202462002","Sukamaju","320246");
INSERT INTO kelurahan VALUES("3202462003","Sukajadi","320246");
INSERT INTO kelurahan VALUES("3202462004","Karangmekar","320246");
INSERT INTO kelurahan VALUES("3202462005","Boregahindah (Boregah Indah)","320246");
INSERT INTO kelurahan VALUES("3202462006","Sukamanah","320246");
INSERT INTO kelurahan VALUES("3202472001","Ciambar","320247");
INSERT INTO kelurahan VALUES("3202472002","Ginanjar","320247");
INSERT INTO kelurahan VALUES("3202472003","Wangunjaya","320247");
INSERT INTO kelurahan VALUES("3202472004","Munjul","320247");
INSERT INTO kelurahan VALUES("3202472005","Ambarjaya","320247");
INSERT INTO kelurahan VALUES("3202472006","Cibunarjaya","320247");
INSERT INTO kelurahan VALUES("3203011006","Pamoyanan","320301");
INSERT INTO kelurahan VALUES("3203011007","Sawahgede (Sawah Gede)","320301");
INSERT INTO kelurahan VALUES("3203011008","Bojongherang","320301");
INSERT INTO kelurahan VALUES("3203011009","Sayang","320301");
INSERT INTO kelurahan VALUES("3203011010","Solokpandan","320301");
INSERT INTO kelurahan VALUES("3203011011","Muka","320301");
INSERT INTO kelurahan VALUES("3203012001","Babakan Karet (Babakankaret)","320301");
INSERT INTO kelurahan VALUES("3203012002","Nagrak","320301");
INSERT INTO kelurahan VALUES("3203012003","Sukamaju","320301");
INSERT INTO kelurahan VALUES("3203012004","Mekarsari","320301");
INSERT INTO kelurahan VALUES("3203012005","Limbangansari (Limbangan Sari)","320301");
INSERT INTO kelurahan VALUES("3203022002","Jambudipa","320302");
INSERT INTO kelurahan VALUES("3203022006","Cisarandi","320302");
INSERT INTO kelurahan VALUES("3203022007","Cikaroya","320302");
INSERT INTO kelurahan VALUES("3203022008","Bunikasih","320302");
INSERT INTO kelurahan VALUES("3203022009","Ciwalen","320302");
INSERT INTO kelurahan VALUES("3203022010","Tegallega","320302");
INSERT INTO kelurahan VALUES("3203022011","Sukawangi","320302");
INSERT INTO kelurahan VALUES("3203022014","Bunisari","320302");
INSERT INTO kelurahan VALUES("3203022016","Sukamulya","320302");
INSERT INTO kelurahan VALUES("3203022017","Cieundeur","320302");
INSERT INTO kelurahan VALUES("3203022018","Mekarwangi","320302");
INSERT INTO kelurahan VALUES("3203032001","Cipetir","320303");
INSERT INTO kelurahan VALUES("3203032002","Cihaur","320303");
INSERT INTO kelurahan VALUES("3203032003","Cimanggu","320303");
INSERT INTO kelurahan VALUES("3203032004","Cibaregbeg","320303");
INSERT INTO kelurahan VALUES("3203032005","Sukaraharja","320303");
INSERT INTO kelurahan VALUES("3203032006","Peuteuycondong","320303");
INSERT INTO kelurahan VALUES("3203032007","Mayak","320303");
INSERT INTO kelurahan VALUES("3203032008","Cikondang","320303");
INSERT INTO kelurahan VALUES("3203032009","Cibokor","320303");
INSERT INTO kelurahan VALUES("3203032010","Selagedang (Salagedang)","320303");
INSERT INTO kelurahan VALUES("3203032011","Karangnunggal","320303");
INSERT INTO kelurahan VALUES("3203032012","Kanoman","320303");
INSERT INTO kelurahan VALUES("3203032013","Sukamaju","320303");
INSERT INTO kelurahan VALUES("3203032014","Girimulya","320303");
INSERT INTO kelurahan VALUES("3203032015","Cisalak","320303");
INSERT INTO kelurahan VALUES("3203032016","Cibadak","320303");
INSERT INTO kelurahan VALUES("3203032017","Sukamanah","320303");
INSERT INTO kelurahan VALUES("3203032018","Salamnunggal","320303");
INSERT INTO kelurahan VALUES("3203042001","Rancagoong","320304");
INSERT INTO kelurahan VALUES("3203042002","Sukasari","320304");
INSERT INTO kelurahan VALUES("3203042003","Sirnagalih","320304");
INSERT INTO kelurahan VALUES("3203042004","Sukakerta","320304");
INSERT INTO kelurahan VALUES("3203042005","Cibinonghilir (Cibinong Hilir)","320304");
INSERT INTO kelurahan VALUES("3203042006","Rahong","320304");
INSERT INTO kelurahan VALUES("3203042007","Munjul","320304");
INSERT INTO kelurahan VALUES("3203042008","Sindangsari","320304");
INSERT INTO kelurahan VALUES("3203042009","Ciharashas","320304");
INSERT INTO kelurahan VALUES("3203042010","Mulyasari","320304");
INSERT INTO kelurahan VALUES("3203052001","Ciranjang","320305");
INSERT INTO kelurahan VALUES("3203052002","Sindangjaya","320305");
INSERT INTO kelurahan VALUES("3203052004","Cibiuk","320305");
INSERT INTO kelurahan VALUES("3203052005","Gunungsari","320305");
INSERT INTO kelurahan VALUES("3203052006","Karangwangi","320305");
INSERT INTO kelurahan VALUES("3203052007","Nanggalamekar","320305");
INSERT INTO kelurahan VALUES("3203052008","Kertajaya","320305");
INSERT INTO kelurahan VALUES("3203052009","Sindangsari","320305");
INSERT INTO kelurahan VALUES("3203052012","Mekargalih","320305");
INSERT INTO kelurahan VALUES("3203062001","Hegarmanah","320306");
INSERT INTO kelurahan VALUES("3203062002","Bojongpicung","320306");
INSERT INTO kelurahan VALUES("3203062004","Cibarengkok","320306");
INSERT INTO kelurahan VALUES("3203062006","Kemang","320306");
INSERT INTO kelurahan VALUES("3203062007","Sukajaya","320306");
INSERT INTO kelurahan VALUES("3203062008","Jati","320306");
INSERT INTO kelurahan VALUES("3203062009","Cikondang","320306");
INSERT INTO kelurahan VALUES("3203062010","Sukarama","320306");
INSERT INTO kelurahan VALUES("3203062012","Sukaratu","320306");
INSERT INTO kelurahan VALUES("3203062013","Neglasari","320306");
INSERT INTO kelurahan VALUES("3203062014","Jatisari","320306");
INSERT INTO kelurahan VALUES("3203072001","Sukamanah","320307");
INSERT INTO kelurahan VALUES("3203072002","Bojong","320307");
INSERT INTO kelurahan VALUES("3203072003","Sindanglaka","320307");
INSERT INTO kelurahan VALUES("3203072004","Maleber","320307");
INSERT INTO kelurahan VALUES("3203072005","Ciherang","320307");
INSERT INTO kelurahan VALUES("3203072006","Sukamantri","320307");
INSERT INTO kelurahan VALUES("3203072007","Sukasarana","320307");
INSERT INTO kelurahan VALUES("3203072008","Sukasari","320307");
INSERT INTO kelurahan VALUES("3203072009","Babakancaringin","320307");
INSERT INTO kelurahan VALUES("3203072010","Sabandar","320307");
INSERT INTO kelurahan VALUES("3203072011","Sindangasih","320307");
INSERT INTO kelurahan VALUES("3203072012","Sukataris","320307");
INSERT INTO kelurahan VALUES("3203072013","Langensari","320307");
INSERT INTO kelurahan VALUES("3203072014","Hegarmanah","320307");
INSERT INTO kelurahan VALUES("3203072015","Sukajadi","320307");
INSERT INTO kelurahan VALUES("3203072016","Sukamulya","320307");
INSERT INTO kelurahan VALUES("3203082001","Kademangan","320308");
INSERT INTO kelurahan VALUES("3203082002","Bobojong","320308");
INSERT INTO kelurahan VALUES("3203082003","Jamali","320308");
INSERT INTO kelurahan VALUES("3203082004","Cikidangbayabang","320308");
INSERT INTO kelurahan VALUES("3203082005","Mande","320308");
INSERT INTO kelurahan VALUES("3203082006","Mulyasari","320308");
INSERT INTO kelurahan VALUES("3203082007","Ciandam","320308");
INSERT INTO kelurahan VALUES("3203082008","Sukamanah","320308");
INSERT INTO kelurahan VALUES("3203082009","Leuwikoja","320308");
INSERT INTO kelurahan VALUES("3203082010","Mekarjaya","320308");
INSERT INTO kelurahan VALUES("3203082011","Kutawaringin","320308");
INSERT INTO kelurahan VALUES("3203082012","Murnisari","320308");
INSERT INTO kelurahan VALUES("3203092001","Selajambe","320309");
INSERT INTO kelurahan VALUES("3203092002","Sukamulya","320309");
INSERT INTO kelurahan VALUES("3203092003","Panyusuhan","320309");
INSERT INTO kelurahan VALUES("3203092004","Tanjungsari","320309");
INSERT INTO kelurahan VALUES("3203092005","Sidangraja (Sindangraja)","320309");
INSERT INTO kelurahan VALUES("3203092006","Mekarjaya","320309");
INSERT INTO kelurahan VALUES("3203092007","Sukasirna","320309");
INSERT INTO kelurahan VALUES("3203092008","Sukaluyu","320309");
INSERT INTO kelurahan VALUES("3203092009","Babakansari","320309");
INSERT INTO kelurahan VALUES("3203092010","Hegarmanah","320309");
INSERT INTO kelurahan VALUES("3203102001","Ciherang","320310");
INSERT INTO kelurahan VALUES("3203102003","Cibodas","320310");
INSERT INTO kelurahan VALUES("3203102005","Sukanagalih","320310");
INSERT INTO kelurahan VALUES("3203102007","Cipendawa","320310");
INSERT INTO kelurahan VALUES("3203102010","Ciputri","320310");
INSERT INTO kelurahan VALUES("3203102012","Gadog","320310");
INSERT INTO kelurahan VALUES("3203102013","Sukatani","320310");
INSERT INTO kelurahan VALUES("3203112001","Sukamanah","320311");
INSERT INTO kelurahan VALUES("3203112002","Gasol","320311");
INSERT INTO kelurahan VALUES("3203112003","Cijedil","320311");
INSERT INTO kelurahan VALUES("3203112004","Cibeureum","320311");
INSERT INTO kelurahan VALUES("3203112005","Nyalindung","320311");
INSERT INTO kelurahan VALUES("3203112006","Mangunkerta","320311");
INSERT INTO kelurahan VALUES("3203112007","Sarampad","320311");
INSERT INTO kelurahan VALUES("3203112008","Talaga","320311");
INSERT INTO kelurahan VALUES("3203112009","Sukajaya","320311");
INSERT INTO kelurahan VALUES("3203112010","Cibulakan","320311");
INSERT INTO kelurahan VALUES("3203112011","Benjot","320311");
INSERT INTO kelurahan VALUES("3203112012","Sukamulya","320311");
INSERT INTO kelurahan VALUES("3203112013","Wangunjaya","320311");
INSERT INTO kelurahan VALUES("3203112014","Cirumput","320311");
INSERT INTO kelurahan VALUES("3203112015","Padaluyu","320311");
INSERT INTO kelurahan VALUES("3203112016","Galudra","320311");
INSERT INTO kelurahan VALUES("3203122001","Sukagalih","320312");
INSERT INTO kelurahan VALUES("3203122002","Gudang","320312");
INSERT INTO kelurahan VALUES("3203122003","Cinangsi","320312");
INSERT INTO kelurahan VALUES("3203122004","Cijagang","320312");
INSERT INTO kelurahan VALUES("3203122005","Majalaya","320312");
INSERT INTO kelurahan VALUES("3203122006","Kamurang","320312");
INSERT INTO kelurahan VALUES("3203122007","Warudoyong","320312");
INSERT INTO kelurahan VALUES("3203122008","Ciramagirang (Cirama Girang)","320312");
INSERT INTO kelurahan VALUES("3203122009","Mekarjaya","320312");
INSERT INTO kelurahan VALUES("3203122010","Sukamulya","320312");
INSERT INTO kelurahan VALUES("3203122011","Padajaya","320312");
INSERT INTO kelurahan VALUES("3203122012","Cigunungherang","320312");
INSERT INTO kelurahan VALUES("3203122013","Neglasari","320312");
INSERT INTO kelurahan VALUES("3203122014","Mekargalih","320312");
INSERT INTO kelurahan VALUES("3203122015","Lembahsari","320312");
INSERT INTO kelurahan VALUES("3203122016","Mentengsari","320312");
INSERT INTO kelurahan VALUES("3203122017","Mekarsari (Mekar Sari)","320312");
INSERT INTO kelurahan VALUES("3203122018","Mekarmulya (Mekar Mulya)","320312");
INSERT INTO kelurahan VALUES("3203132001","Cikanyere","320313");
INSERT INTO kelurahan VALUES("3203132002","Cikancana","320313");
INSERT INTO kelurahan VALUES("3203132003","Ciwalen","320313");
INSERT INTO kelurahan VALUES("3203132004","Kawungluwuk","320313");
INSERT INTO kelurahan VALUES("3203132005","Cibadak","320313");
INSERT INTO kelurahan VALUES("3203132006","Sukamahi","320313");
INSERT INTO kelurahan VALUES("3203132007","Sukaresmi","320313");
INSERT INTO kelurahan VALUES("3203132008","Cibanteng","320313");
INSERT INTO kelurahan VALUES("3203132009","Kubang","320313");
INSERT INTO kelurahan VALUES("3203132010","Pakuon","320313");
INSERT INTO kelurahan VALUES("3203132011","Rawabelut","320313");
INSERT INTO kelurahan VALUES("3203142001","Sukanagara","320314");
INSERT INTO kelurahan VALUES("3203142002","Sukajembar","320314");
INSERT INTO kelurahan VALUES("3203142003","Sukakarya","320314");
INSERT INTO kelurahan VALUES("3203142004","Ciguha","320314");
INSERT INTO kelurahan VALUES("3203142005","Sukamekar","320314");
INSERT INTO kelurahan VALUES("3203142006","Gunungsari","320314");
INSERT INTO kelurahan VALUES("3203142007","Sukalaksana","320314");
INSERT INTO kelurahan VALUES("3203142008","Sukarame","320314");
INSERT INTO kelurahan VALUES("3203142009","Sindangsari","320314");
INSERT INTO kelurahan VALUES("3203142010","Jayagiri","320314");
INSERT INTO kelurahan VALUES("3203152001","Cidadap","320315");
INSERT INTO kelurahan VALUES("3203152002","Cimenteng","320315");
INSERT INTO kelurahan VALUES("3203152003","Susukan","320315");
INSERT INTO kelurahan VALUES("3203152004","Sukajadi","320315");
INSERT INTO kelurahan VALUES("3203152005","Sukadana","320315");
INSERT INTO kelurahan VALUES("3203152006","Margaluyu","320315");
INSERT INTO kelurahan VALUES("3203152007","Karyamukti","320315");
INSERT INTO kelurahan VALUES("3203152008","Campaka","320315");
INSERT INTO kelurahan VALUES("3203152009","Wangunjaya","320315");
INSERT INTO kelurahan VALUES("3203152010","Girimukti","320315");
INSERT INTO kelurahan VALUES("3203152011","Mekarjaya","320315");
INSERT INTO kelurahan VALUES("3203162001","Pasawahan","320316");
INSERT INTO kelurahan VALUES("3203162002","Sindangresmi","320316");
INSERT INTO kelurahan VALUES("3203162003","Sindanghayu","320316");
INSERT INTO kelurahan VALUES("3203162004","Simpang","320316");
INSERT INTO kelurahan VALUES("3203162005","Sukagalih","320316");
INSERT INTO kelurahan VALUES("3203162006","Bungbangsari","320316");
INSERT INTO kelurahan VALUES("3203162007","Cisujen","320316");
INSERT INTO kelurahan VALUES("3203162008","Hegarmanah","320316");
INSERT INTO kelurahan VALUES("3203162009","Waringinsari","320316");
INSERT INTO kelurahan VALUES("3203172003","Sukasari","320317");
INSERT INTO kelurahan VALUES("3203172006","Pasirdalem","320317");
INSERT INTO kelurahan VALUES("3203172008","Talagasari","320317");
INSERT INTO kelurahan VALUES("3203172009","Bojongkasih","320317");
INSERT INTO kelurahan VALUES("3203172010","Wargaasih","320317");
INSERT INTO kelurahan VALUES("3203172011","Sukaraharja","320317");
INSERT INTO kelurahan VALUES("3203172014","Sukakerta","320317");
INSERT INTO kelurahan VALUES("3203172016","Neglasari","320317");
INSERT INTO kelurahan VALUES("3203172017","Sukaresmi","320317");
INSERT INTO kelurahan VALUES("3203172019","Wargasari","320317");
INSERT INTO kelurahan VALUES("3203172020","Sukaraja","320317");
INSERT INTO kelurahan VALUES("3203172021","Kadupandak","320317");
INSERT INTO kelurahan VALUES("3203172022","Gandasari","320317");
INSERT INTO kelurahan VALUES("3203172023","Sindangsari","320317");
INSERT INTO kelurahan VALUES("3203182001","Pagelaran","320318");
INSERT INTO kelurahan VALUES("3203182002","Pangadegan","320318");
INSERT INTO kelurahan VALUES("3203182004","Gelaranyar","320318");
INSERT INTO kelurahan VALUES("3203182005","Buniwangi","320318");
INSERT INTO kelurahan VALUES("3203182007","Sindangkerta","320318");
INSERT INTO kelurahan VALUES("3203182008","Pasirbaru","320318");
INSERT INTO kelurahan VALUES("3203182009","Bunijaya","320318");
INSERT INTO kelurahan VALUES("3203182010","Situhiang","320318");
INSERT INTO kelurahan VALUES("3203182011","Mekarsari","320318");
INSERT INTO kelurahan VALUES("3203182012","Kertaraharja","320318");
INSERT INTO kelurahan VALUES("3203182013","Selagedang","320318");
INSERT INTO kelurahan VALUES("3203182014","Padamaju","320318");
INSERT INTO kelurahan VALUES("3203182015","Karangharja","320318");
INSERT INTO kelurahan VALUES("3203182018","Sukamaju","320318");
INSERT INTO kelurahan VALUES("3203192001","Tanggeung","320319");
INSERT INTO kelurahan VALUES("3203192002","Rawagede","320319");
INSERT INTO kelurahan VALUES("3203192003","Cilongsong","320319");
INSERT INTO kelurahan VALUES("3203192004","Margaluyu","320319");
INSERT INTO kelurahan VALUES("3203192005","Karangtengah","320319");
INSERT INTO kelurahan VALUES("3203192006","Pagermaneuh","320319");
INSERT INTO kelurahan VALUES("3203192007","Bojongpetir","320319");
INSERT INTO kelurahan VALUES("3203192009","Pasirjambu","320319");
INSERT INTO kelurahan VALUES("3203192010","Sirnajaya","320319");
INSERT INTO kelurahan VALUES("3203192013","Kertajaya","320319");
INSERT INTO kelurahan VALUES("3203192014","Sukajaya","320319");
INSERT INTO kelurahan VALUES("3203192015","Padaluyu","320319");
INSERT INTO kelurahan VALUES("3203202001","Pananggapan","320320");
INSERT INTO kelurahan VALUES("3203202002","Cikangkareng","320320");
INSERT INTO kelurahan VALUES("3203202003","Sukajadi","320320");
INSERT INTO kelurahan VALUES("3203202004","Panyindangan","320320");
INSERT INTO kelurahan VALUES("3203202005","Padasuka","320320");
INSERT INTO kelurahan VALUES("3203202006","Cimaskara","320320");
INSERT INTO kelurahan VALUES("3203202007","Pamoyanan","320320");
INSERT INTO kelurahan VALUES("3203202008","Batulawang","320320");
INSERT INTO kelurahan VALUES("3203202009","Sukamekar","320320");
INSERT INTO kelurahan VALUES("3203202010","Hamerang","320320");
INSERT INTO kelurahan VALUES("3203202011","Girijaya","320320");
INSERT INTO kelurahan VALUES("3203202012","Wargaluyu","320320");
INSERT INTO kelurahan VALUES("3203202013","Mekarmukti","320320");
INSERT INTO kelurahan VALUES("3203202014","Ciburial","320320");
INSERT INTO kelurahan VALUES("3203212001","Saganten","320321");
INSERT INTO kelurahan VALUES("3203212002","Muaracikadu","320321");
INSERT INTO kelurahan VALUES("3203212003","Jatisari","320321");
INSERT INTO kelurahan VALUES("3203212004","Sirnagalih","320321");
INSERT INTO kelurahan VALUES("3203212005","Jayagiri","320321");
INSERT INTO kelurahan VALUES("3203212006","Kertasari","320321");
INSERT INTO kelurahan VALUES("3203212007","Girimukti","320321");
INSERT INTO kelurahan VALUES("3203212008","Talagasari","320321");
INSERT INTO kelurahan VALUES("3203212009","Hegarsari","320321");
INSERT INTO kelurahan VALUES("3203212010","Mekarlaksana","320321");
INSERT INTO kelurahan VALUES("3203212011","Kertamukti","320321");
INSERT INTO kelurahan VALUES("3203222004","Sukamanah","320322");
INSERT INTO kelurahan VALUES("3203222005","Bojongkaso","320322");
INSERT INTO kelurahan VALUES("3203222006","Bunisari","320322");
INSERT INTO kelurahan VALUES("3203222007","Wanasari","320322");
INSERT INTO kelurahan VALUES("3203222010","Sinarlaut","320322");
INSERT INTO kelurahan VALUES("3203222014","Neglasari","320322");
INSERT INTO kelurahan VALUES("3203222016","Karangsari","320322");
INSERT INTO kelurahan VALUES("3203222017","Mulyasari","320322");
INSERT INTO kelurahan VALUES("3203222018","Tanjung Sari (Tanjungsari)","320322");
INSERT INTO kelurahan VALUES("3203222019","Mekarsari","320322");
INSERT INTO kelurahan VALUES("3203222022","Wangunjaya","320322");
INSERT INTO kelurahan VALUES("3203232001","Cidamar","320323");
INSERT INTO kelurahan VALUES("3203232002","Cibuluh","320323");
INSERT INTO kelurahan VALUES("3203232003","Cisalak","320323");
INSERT INTO kelurahan VALUES("3203232004","Cimaragang","320323");
INSERT INTO kelurahan VALUES("3203232005","Mekarjaya","320323");
INSERT INTO kelurahan VALUES("3203232006","Kertajadi","320323");
INSERT INTO kelurahan VALUES("3203232007","Sukapura","320323");
INSERT INTO kelurahan VALUES("3203232008","Gelarpawitan","320323");
INSERT INTO kelurahan VALUES("3203232009","Karangwangi","320323");
INSERT INTO kelurahan VALUES("3203232010","Karyabakti","320323");
INSERT INTO kelurahan VALUES("3203232011","Jayapura","320323");
INSERT INTO kelurahan VALUES("3203232012","Neglasari","320323");
INSERT INTO kelurahan VALUES("3203232013","Puncakbaru","320323");
INSERT INTO kelurahan VALUES("3203232014","Gelarwangi","320323");
INSERT INTO kelurahan VALUES("3203242001","Naringgul","320324");
INSERT INTO kelurahan VALUES("3203242002","Balegede","320324");
INSERT INTO kelurahan VALUES("3203242003","Wangunjaya","320324");
INSERT INTO kelurahan VALUES("3203242004","Mekarsari","320324");
INSERT INTO kelurahan VALUES("3203242005","Cinerang","320324");
INSERT INTO kelurahan VALUES("3203242006","Wanasari","320324");
INSERT INTO kelurahan VALUES("3203242007","Sukabakti","320324");
INSERT INTO kelurahan VALUES("3203242008","Malati","320324");
INSERT INTO kelurahan VALUES("3203242009","Wangunsari","320324");
INSERT INTO kelurahan VALUES("3203242010","Sukamulya","320324");
INSERT INTO kelurahan VALUES("3203242011","Margasari","320324");
INSERT INTO kelurahan VALUES("3203252001","Cibanggala","320325");
INSERT INTO kelurahan VALUES("3203252002","Campakawarna","320325");
INSERT INTO kelurahan VALUES("3203252003","Sukasirna","320325");
INSERT INTO kelurahan VALUES("3203252004","Campakamulya","320325");
INSERT INTO kelurahan VALUES("3203252005","Sukabungah","320325");
INSERT INTO kelurahan VALUES("3203262001","Kalapanunggal","320326");
INSERT INTO kelurahan VALUES("3203262002","Cikadu","320326");
INSERT INTO kelurahan VALUES("3203262003","Mekarwangi","320326");
INSERT INTO kelurahan VALUES("3203262004","Padaluyu","320326");
INSERT INTO kelurahan VALUES("3203262005","Sukamulya","320326");
INSERT INTO kelurahan VALUES("3203262006","Cisaranten","320326");
INSERT INTO kelurahan VALUES("3203262007","Mekarlaksana","320326");
INSERT INTO kelurahan VALUES("3203262008","Sukaluyu","320326");
INSERT INTO kelurahan VALUES("3203262009","Mekarjaya","320326");
INSERT INTO kelurahan VALUES("3203262010","Sukamanah","320326");
INSERT INTO kelurahan VALUES("3203272001","Bangbayang","320327");
INSERT INTO kelurahan VALUES("3203272002","Songgom","320327");
INSERT INTO kelurahan VALUES("3203272003","Sukaratu","320327");
INSERT INTO kelurahan VALUES("3203272004","Cikancana","320327");
INSERT INTO kelurahan VALUES("3203272005","Kebonpeuteuy","320327");
INSERT INTO kelurahan VALUES("3203272006","Gekbrong","320327");
INSERT INTO kelurahan VALUES("3203272007","Cikahuripan","320327");
INSERT INTO kelurahan VALUES("3203272008","Cintaasih","320327");
INSERT INTO kelurahan VALUES("3203282001","Cipanas","320328");
INSERT INTO kelurahan VALUES("3203282002","Cimacan","320328");
INSERT INTO kelurahan VALUES("3203282003","Ciloto","320328");
INSERT INTO kelurahan VALUES("3203282004","Sindanglaya","320328");
INSERT INTO kelurahan VALUES("3203282005","Batulawang","320328");
INSERT INTO kelurahan VALUES("3203282006","Palasari","320328");
INSERT INTO kelurahan VALUES("3203282007","Sindangjaya","320328");
INSERT INTO kelurahan VALUES("3203292001","Parakantugu","320329");
INSERT INTO kelurahan VALUES("3203292002","Cijati","320329");
INSERT INTO kelurahan VALUES("3203292003","Bojonglarang","320329");
INSERT INTO kelurahan VALUES("3203292004","Padaasih","320329");
INSERT INTO kelurahan VALUES("3203292005","Cibodas","320329");
INSERT INTO kelurahan VALUES("3203292006","Sukamahi","320329");
INSERT INTO kelurahan VALUES("3203292007","Sukaluyu","320329");
INSERT INTO kelurahan VALUES("3203292008","Caringin","320329");
INSERT INTO kelurahan VALUES("3203292009","Sinarbakti","320329");
INSERT INTO kelurahan VALUES("3203292010","Sukamaju","320329");
INSERT INTO kelurahan VALUES("3203302001","Pusakasari","320330");
INSERT INTO kelurahan VALUES("3203302002","Walahir","320330");
INSERT INTO kelurahan VALUES("3203302003","Purabaya","320330");
INSERT INTO kelurahan VALUES("3203302004","Puncakwangi","320330");
INSERT INTO kelurahan VALUES("3203302005","Sukajaya","320330");
INSERT INTO kelurahan VALUES("3203302006","Nagasari","320330");
INSERT INTO kelurahan VALUES("3203302007","Sukasirna","320330");
INSERT INTO kelurahan VALUES("3203302008","Sukamulya","320330");
INSERT INTO kelurahan VALUES("3203302009","Sirnasari","320330");
INSERT INTO kelurahan VALUES("3203302010","Karyamukti","320330");
INSERT INTO kelurahan VALUES("3203302011","Mandalawangi","320330");
INSERT INTO kelurahan VALUES("3203302012","Sindangsari","320330");
INSERT INTO kelurahan VALUES("3203312001","Haurwangi","320331");
INSERT INTO kelurahan VALUES("3203312002","Cihea","320331");
INSERT INTO kelurahan VALUES("3203312003","Ramasari","320331");
INSERT INTO kelurahan VALUES("3203312004","Sukatani (Mekarwangi)","320331");
INSERT INTO kelurahan VALUES("3203312005","Mekarwangi","320331");
INSERT INTO kelurahan VALUES("3203312006","Kertasari","320331");
INSERT INTO kelurahan VALUES("3203312007","Cipeuyeum","320331");
INSERT INTO kelurahan VALUES("3203312008","Kertamukti","320331");
INSERT INTO kelurahan VALUES("3203322001","Simpang","320332");
INSERT INTO kelurahan VALUES("3203322002","Kalibaru","320332");
INSERT INTO kelurahan VALUES("3203322003","Pusakajaya","320332");
INSERT INTO kelurahan VALUES("3203322004","Kubang","320332");
INSERT INTO kelurahan VALUES("3203322005","Girimukti","320332");
INSERT INTO kelurahan VALUES("3203322006","Karangjaya","320332");
INSERT INTO kelurahan VALUES("3203322007","Mekarmulya","320332");
INSERT INTO kelurahan VALUES("3203322008","Girijaya","320332");
INSERT INTO kelurahan VALUES("3203322009","Padamulya","320332");
INSERT INTO kelurahan VALUES("3204052001","Cileunyi Kulon","320405");
INSERT INTO kelurahan VALUES("3204052002","Cileunyi Wetan","320405");
INSERT INTO kelurahan VALUES("3204052003","Cimekar","320405");
INSERT INTO kelurahan VALUES("3204052004","Cinunuk","320405");
INSERT INTO kelurahan VALUES("3204052005","Cibiru Hilir","320405");
INSERT INTO kelurahan VALUES("3204052006","Cibiru Wetan","320405");
INSERT INTO kelurahan VALUES("3204061001","Padasuka","320406");
INSERT INTO kelurahan VALUES("3204061002","Cibeunying","320406");
INSERT INTO kelurahan VALUES("3204062003","Cimenyan","320406");
INSERT INTO kelurahan VALUES("3204062004","Mandalamekar","320406");
INSERT INTO kelurahan VALUES("3204062005","Cikadut","320406");
INSERT INTO kelurahan VALUES("3204062006","Ciburial","320406");
INSERT INTO kelurahan VALUES("3204062007","Sindanglaya","320406");
INSERT INTO kelurahan VALUES("3204062008","Mekarsaluyu","320406");
INSERT INTO kelurahan VALUES("3204062009","Mekarmanik","320406");
INSERT INTO kelurahan VALUES("3204072001","Jatiendah","320407");
INSERT INTO kelurahan VALUES("3204072002","Cilengkrang","320407");
INSERT INTO kelurahan VALUES("3204072003","Cipanjalu","320407");
INSERT INTO kelurahan VALUES("3204072004","Melatiwangi","320407");
INSERT INTO kelurahan VALUES("3204072005","Ciporeat","320407");
INSERT INTO kelurahan VALUES("3204072006","Girimekar","320407");
INSERT INTO kelurahan VALUES("3204082001","Lengkong","320408");
INSERT INTO kelurahan VALUES("3204082002","Bojongsoang","320408");
INSERT INTO kelurahan VALUES("3204082003","Buahbatu","320408");
INSERT INTO kelurahan VALUES("3204082004","Cipagalo","320408");
INSERT INTO kelurahan VALUES("3204082005","Bojongsari","320408");
INSERT INTO kelurahan VALUES("3204082006","Tegalluar","320408");
INSERT INTO kelurahan VALUES("3204091004","Sulaiman (Sulaeman)","320409");
INSERT INTO kelurahan VALUES("3204092001","Margahayu Tengah","320409");
INSERT INTO kelurahan VALUES("3204092002","Magahayu Selatan (Margahayu Selatan)","320409");
INSERT INTO kelurahan VALUES("3204092003","Sukamenak","320409");
INSERT INTO kelurahan VALUES("3204092005","Sayati","320409");
INSERT INTO kelurahan VALUES("3204102001","Margaasih","320410");
INSERT INTO kelurahan VALUES("3204102002","Lagadar","320410");
INSERT INTO kelurahan VALUES("3204102003","Nanjung","320410");
INSERT INTO kelurahan VALUES("3204102004","Mekarrahayu (Mekar Rahayu)","320410");
INSERT INTO kelurahan VALUES("3204102005","Rahayu","320410");
INSERT INTO kelurahan VALUES("3204102006","Cigondewah Hilir","320410");
INSERT INTO kelurahan VALUES("3204112001","Sangkanhurip","320411");
INSERT INTO kelurahan VALUES("3204112002","Katapang","320411");
INSERT INTO kelurahan VALUES("3204112004","Gandasari","320411");
INSERT INTO kelurahan VALUES("3204112006","Sukamukti","320411");
INSERT INTO kelurahan VALUES("3204112007","Cilampeni","320411");
INSERT INTO kelurahan VALUES("3204112008","Pangauban","320411");
INSERT INTO kelurahan VALUES("3204112009","Banyusari","320411");
INSERT INTO kelurahan VALUES("3204121001","Pasawahan","320412");
INSERT INTO kelurahan VALUES("3204122002","Dayeuhkolot","320412");
INSERT INTO kelurahan VALUES("3204122003","Cangkuang Wetan","320412");
INSERT INTO kelurahan VALUES("3204122004","Cangkuang Kulon","320412");
INSERT INTO kelurahan VALUES("3204122005","Sukapura","320412");
INSERT INTO kelurahan VALUES("3204122006","Citeureup","320412");
INSERT INTO kelurahan VALUES("3204132001","Kamasan","320413");
INSERT INTO kelurahan VALUES("3204132002","Banjaran Wetan","320413");
INSERT INTO kelurahan VALUES("3204132003","Banjaran Kulon","320413");
INSERT INTO kelurahan VALUES("3204132005","Ciapus","320413");
INSERT INTO kelurahan VALUES("3204132006","Sindangpanon","320413");
INSERT INTO kelurahan VALUES("3204132007","Kiangroke","320413");
INSERT INTO kelurahan VALUES("3204132008","Tarajusari","320413");
INSERT INTO kelurahan VALUES("3204132012","Mekarjaya","320413");
INSERT INTO kelurahan VALUES("3204132013","Margahurip","320413");
INSERT INTO kelurahan VALUES("3204132016","Neglasari","320413");
INSERT INTO kelurahan VALUES("3204132018","Pasirmulya","320413");
INSERT INTO kelurahan VALUES("3204142001","Sukasari","320414");
INSERT INTO kelurahan VALUES("3204142002","Bojongmanggu","320414");
INSERT INTO kelurahan VALUES("3204142003","Rancatungku","320414");
INSERT INTO kelurahan VALUES("3204142004","Bojongkunci","320414");
INSERT INTO kelurahan VALUES("3204142005","Rancamulya","320414");
INSERT INTO kelurahan VALUES("3204142006","Langonsari","320414");
INSERT INTO kelurahan VALUES("3204152001","Pangalengan","320415");
INSERT INTO kelurahan VALUES("3204152002","Margaluyu","320415");
INSERT INTO kelurahan VALUES("3204152003","Warnasari","320415");
INSERT INTO kelurahan VALUES("3204152004","Sukamanah","320415");
INSERT INTO kelurahan VALUES("3204152005","Lamajang","320415");
INSERT INTO kelurahan VALUES("3204152006","Margamukti","320415");
INSERT INTO kelurahan VALUES("3204152007","Margamulya","320415");
INSERT INTO kelurahan VALUES("3204152008","Banjarsari","320415");
INSERT INTO kelurahan VALUES("3204152009","Sukaluyu","320415");
INSERT INTO kelurahan VALUES("3204152010","Tribaktimulya","320415");
INSERT INTO kelurahan VALUES("3204152011","Pulosari","320415");
INSERT INTO kelurahan VALUES("3204152012","Wanasuka","320415");
INSERT INTO kelurahan VALUES("3204152013","Margamekar","320415");
INSERT INTO kelurahan VALUES("3204162001","Arjasari","320416");
INSERT INTO kelurahan VALUES("3204162002","Lebakwangi","320416");
INSERT INTO kelurahan VALUES("3204162003","Batukarut","320416");
INSERT INTO kelurahan VALUES("3204162004","Ancolmekar","320416");
INSERT INTO kelurahan VALUES("3204162005","Baros","320416");
INSERT INTO kelurahan VALUES("3204162006","Mangunjaya","320416");
INSERT INTO kelurahan VALUES("3204162007","Mekarjaya","320416");
INSERT INTO kelurahan VALUES("3204162008","Pinggirsari","320416");
INSERT INTO kelurahan VALUES("3204162009","Patrolsari","320416");
INSERT INTO kelurahan VALUES("3204162010","Rancakole","320416");
INSERT INTO kelurahan VALUES("3204162011","Wargaluyu","320416");
INSERT INTO kelurahan VALUES("3204172001","Cimaung","320417");
INSERT INTO kelurahan VALUES("3204172002","Jagabaya","320417");
INSERT INTO kelurahan VALUES("3204172003","Pasirhuni","320417");
INSERT INTO kelurahan VALUES("3204172004","Campakamulya","320417");
INSERT INTO kelurahan VALUES("3204172005","Cipinang","320417");
INSERT INTO kelurahan VALUES("3204172006","Mekarsari","320417");
INSERT INTO kelurahan VALUES("3204172007","Sukamaju","320417");
INSERT INTO kelurahan VALUES("3204172008","Cikalong","320417");
INSERT INTO kelurahan VALUES("3204172009","Malasari","320417");
INSERT INTO kelurahan VALUES("3204172010","Warjabakti","320417");
INSERT INTO kelurahan VALUES("3204252001","Cicalengka Kulon","320425");
INSERT INTO kelurahan VALUES("3204252002","Cicalengka Wetan","320425");
INSERT INTO kelurahan VALUES("3204252003","Babakan Peuteuy","320425");
INSERT INTO kelurahan VALUES("3204252004","Cikuya","320425");
INSERT INTO kelurahan VALUES("3204252005","Dampit","320425");
INSERT INTO kelurahan VALUES("3204252006","Margaasih","320425");
INSERT INTO kelurahan VALUES("3204252007","Narawita","320425");
INSERT INTO kelurahan VALUES("3204252008","Panenjoan","320425");
INSERT INTO kelurahan VALUES("3204252009","Tanjungwangi","320425");
INSERT INTO kelurahan VALUES("3204252010","Tenjolaya","320425");
INSERT INTO kelurahan VALUES("3204252011","Waluya","320425");
INSERT INTO kelurahan VALUES("3204252012","Nagrog","320425");
INSERT INTO kelurahan VALUES("3204262001","Nagreg","320426");
INSERT INTO kelurahan VALUES("3204262002","Bojong","320426");
INSERT INTO kelurahan VALUES("3204262003","Ciaro","320426");
INSERT INTO kelurahan VALUES("3204262004","Ciherang","320426");
INSERT INTO kelurahan VALUES("3204262005","Citaman","320426");
INSERT INTO kelurahan VALUES("3204262006","Mandalawangi","320426");
INSERT INTO kelurahan VALUES("3204262007","Nagreg Kendan","320426");
INSERT INTO kelurahan VALUES("3204262008","Ganjar Sabar","320426");
INSERT INTO kelurahan VALUES("3204272001","Mandalasari","320427");
INSERT INTO kelurahan VALUES("3204272002","Cikancung","320427");
INSERT INTO kelurahan VALUES("3204272003","Cikasungka","320427");
INSERT INTO kelurahan VALUES("3204272004","Cihanyir","320427");
INSERT INTO kelurahan VALUES("3204272005","Ciluluk","320427");
INSERT INTO kelurahan VALUES("3204272006","Hegarmanah","320427");
INSERT INTO kelurahan VALUES("3204272007","Mekarlaksana","320427");
INSERT INTO kelurahan VALUES("3204272008","Tanjunglaya","320427");
INSERT INTO kelurahan VALUES("3204272009","Srirahayu","320427");
INSERT INTO kelurahan VALUES("3204281014","Rancaekek Kencana","320428");
INSERT INTO kelurahan VALUES("3204282001","Rancaekek Wetan","320428");
INSERT INTO kelurahan VALUES("3204282002","Rancaekek Kulon","320428");
INSERT INTO kelurahan VALUES("3204282003","Bojongsalam","320428");
INSERT INTO kelurahan VALUES("3204282004","Bojongloa","320428");
INSERT INTO kelurahan VALUES("3204282005","Jelegong","320428");
INSERT INTO kelurahan VALUES("3204282006","Linggar","320428");
INSERT INTO kelurahan VALUES("3204282007","Cangkuang","320428");
INSERT INTO kelurahan VALUES("3204282008","Haurpugur","320428");
INSERT INTO kelurahan VALUES("3204282009","Sukamanah","320428");
INSERT INTO kelurahan VALUES("3204282010","Sukamulya","320428");
INSERT INTO kelurahan VALUES("3204282011","Tegal Sumedang","320428");
INSERT INTO kelurahan VALUES("3204282012","Sangiang","320428");
INSERT INTO kelurahan VALUES("3204282013","Nanjung Mekar (Nanjungmekar)","320428");
INSERT INTO kelurahan VALUES("3204292001","Ciparay","320429");
INSERT INTO kelurahan VALUES("3204292002","Gunungleutik","320429");
INSERT INTO kelurahan VALUES("3204292003","Mekarsari","320429");
INSERT INTO kelurahan VALUES("3204292004","Cikoneng","320429");
INSERT INTO kelurahan VALUES("3204292005","Ciheulang","320429");
INSERT INTO kelurahan VALUES("3204292006","Pakutandang","320429");
INSERT INTO kelurahan VALUES("3204292007","Sumbersari","320429");
INSERT INTO kelurahan VALUES("3204292008","Mangunharja (Manggungharja)","320429");
INSERT INTO kelurahan VALUES("3204292009","Sagaracipta (Sigaracipta)","320429");
INSERT INTO kelurahan VALUES("3204292010","Sarimahi","320429");
INSERT INTO kelurahan VALUES("3204292011","Serangmekar","320429");
INSERT INTO kelurahan VALUES("3204292012","Babakan","320429");
INSERT INTO kelurahan VALUES("3204292013","Bumiwangi","320429");
INSERT INTO kelurahan VALUES("3204292014","Mekarlaksana (Mekar Laksana)","320429");
INSERT INTO kelurahan VALUES("3204302001","Cipeujeuh","320430");
INSERT INTO kelurahan VALUES("3204302002","Cikitu","320430");
INSERT INTO kelurahan VALUES("3204302003","Cananggela (Cinanggela)","320430");
INSERT INTO kelurahan VALUES("3204302004","Maruyung","320430");
INSERT INTO kelurahan VALUES("3204302005","Sukarame","320430");
INSERT INTO kelurahan VALUES("3204302006","Nagrak","320430");
INSERT INTO kelurahan VALUES("3204302007","Cikawao","320430");
INSERT INTO kelurahan VALUES("3204302008","Mekarjaya","320430");
INSERT INTO kelurahan VALUES("3204302009","Pangauban","320430");
INSERT INTO kelurahan VALUES("3204302010","Mandalahaji","320430");
INSERT INTO kelurahan VALUES("3204302011","Girimulya","320430");
INSERT INTO kelurahan VALUES("3204302012","Tanjungwangi","320430");
INSERT INTO kelurahan VALUES("3204302013","Mekarsari","320430");
INSERT INTO kelurahan VALUES("3204312001","Sukapura","320431");
INSERT INTO kelurahan VALUES("3204312002","Cibeureum","320431");
INSERT INTO kelurahan VALUES("3204312003","Santosa","320431");
INSERT INTO kelurahan VALUES("3204312004","Tarumajaya","320431");
INSERT INTO kelurahan VALUES("3204312005","Neglawangi","320431");
INSERT INTO kelurahan VALUES("3204312006","Cihawuk","320431");
INSERT INTO kelurahan VALUES("3204312007","Cikembang","320431");
INSERT INTO kelurahan VALUES("3204312008","Resmi Tingal","320431");
INSERT INTO kelurahan VALUES("3204321001","Baleendah","320432");
INSERT INTO kelurahan VALUES("3204321002","Andir","320432");
INSERT INTO kelurahan VALUES("3204321003","Manggahang","320432");
INSERT INTO kelurahan VALUES("3204321004","Jelekong","320432");
INSERT INTO kelurahan VALUES("3204321008","Wargamekar","320432");
INSERT INTO kelurahan VALUES("3204322005","Bojongmalaka","320432");
INSERT INTO kelurahan VALUES("3204322006","Rancamanyar","320432");
INSERT INTO kelurahan VALUES("3204322007","Malakasari","320432");
INSERT INTO kelurahan VALUES("3204332001","Majalaya","320433");
INSERT INTO kelurahan VALUES("3204332002","Wangisagara","320433");
INSERT INTO kelurahan VALUES("3204332003","Biru","320433");
INSERT INTO kelurahan VALUES("3204332004","Padamulya","320433");
INSERT INTO kelurahan VALUES("3204332005","Bojong","320433");
INSERT INTO kelurahan VALUES("3204332006","Majasetra","320433");
INSERT INTO kelurahan VALUES("3204332007","Majakerta","320433");
INSERT INTO kelurahan VALUES("3204332008","Sukamaju","320433");
INSERT INTO kelurahan VALUES("3204332009","Padaulun","320433");
INSERT INTO kelurahan VALUES("3204332010","Neglasari","320433");
INSERT INTO kelurahan VALUES("3204332011","Sukamukti","320433");
INSERT INTO kelurahan VALUES("3204342001","Rancakasumba","320434");
INSERT INTO kelurahan VALUES("3204342002","Solokanjeruk (Solokan Jeruk)","320434");
INSERT INTO kelurahan VALUES("3204342003","Cibodas","320434");
INSERT INTO kelurahan VALUES("3204342004","Panyadap","320434");
INSERT INTO kelurahan VALUES("3204342005","Bojongemas","320434");
INSERT INTO kelurahan VALUES("3204342006","Padamukti","320434");
INSERT INTO kelurahan VALUES("3204342007","Langensari","320434");
INSERT INTO kelurahan VALUES("3204352001","Cigentur","320435");
INSERT INTO kelurahan VALUES("3204352002","Cipedes","320435");
INSERT INTO kelurahan VALUES("3204352003","Loa","320435");
INSERT INTO kelurahan VALUES("3204352004","Cijagra","320435");
INSERT INTO kelurahan VALUES("3204352005","Cipaku","320435");
INSERT INTO kelurahan VALUES("3204352006","Sindangsari","320435");
INSERT INTO kelurahan VALUES("3204352007","Drawati","320435");
INSERT INTO kelurahan VALUES("3204352008","Sukamanah","320435");
INSERT INTO kelurahan VALUES("3204352009","Sukamantri","320435");
INSERT INTO kelurahan VALUES("3204352010","Karangtunggal","320435");
INSERT INTO kelurahan VALUES("3204352011","Mekarpawitan","320435");
INSERT INTO kelurahan VALUES("3204352012","Tangsimekar","320435");
INSERT INTO kelurahan VALUES("3204362001","Ibun","320436");
INSERT INTO kelurahan VALUES("3204362002","Laksana","320436");
INSERT INTO kelurahan VALUES("3204362003","Dukuh","320436");
INSERT INTO kelurahan VALUES("3204362004","Talun","320436");
INSERT INTO kelurahan VALUES("3204362005","Pangguh","320436");
INSERT INTO kelurahan VALUES("3204362006","Lampegan","320436");
INSERT INTO kelurahan VALUES("3204362007","Neglasari","320436");
INSERT INTO kelurahan VALUES("3204362008","Mekarwangi","320436");
INSERT INTO kelurahan VALUES("3204362009","Sudi","320436");
INSERT INTO kelurahan VALUES("3204362010","Tangulun (Tanggulun)","320436");
INSERT INTO kelurahan VALUES("3204362011","Cibeet","320436");
INSERT INTO kelurahan VALUES("3204362012","Karyalaksana","320436");
INSERT INTO kelurahan VALUES("3204372001","Soreang","320437");
INSERT INTO kelurahan VALUES("3204372002","Sadu","320437");
INSERT INTO kelurahan VALUES("3204372004","Panyirapan","320437");
INSERT INTO kelurahan VALUES("3204372010","Sukajadi","320437");
INSERT INTO kelurahan VALUES("3204372011","Pamekaran","320437");
INSERT INTO kelurahan VALUES("3204372017","Karamatmulya","320437");
INSERT INTO kelurahan VALUES("3204372018","Sukanagara","320437");
INSERT INTO kelurahan VALUES("3204372019","Cingcin","320437");
INSERT INTO kelurahan VALUES("3204372020","Parungserab","320437");
INSERT INTO kelurahan VALUES("3204372021","Sekarwangi","320437");
INSERT INTO kelurahan VALUES("3204382001","Pasirjambu","320438");
INSERT INTO kelurahan VALUES("3204382002","Cibodas","320438");
INSERT INTO kelurahan VALUES("3204382003","Cikoneng","320438");
INSERT INTO kelurahan VALUES("3204382004","Cukanggenteng","320438");
INSERT INTO kelurahan VALUES("3204382005","Cisondari","320438");
INSERT INTO kelurahan VALUES("3204382006","Margamulya","320438");
INSERT INTO kelurahan VALUES("3204382007","Mekarsari","320438");
INSERT INTO kelurahan VALUES("3204382008","Mekarmaju","320438");
INSERT INTO kelurahan VALUES("3204382009","Sugihmukti","320438");
INSERT INTO kelurahan VALUES("3204382010","Tenjolaya","320438");
INSERT INTO kelurahan VALUES("3204392001","Lebakmuncang","320439");
INSERT INTO kelurahan VALUES("3204392002","Ciwidey","320439");
INSERT INTO kelurahan VALUES("3204392003","Nengkelan","320439");
INSERT INTO kelurahan VALUES("3204392004","Panundaan","320439");
INSERT INTO kelurahan VALUES("3204392005","Panyocokan","320439");
INSERT INTO kelurahan VALUES("3204392006","Rawabogo","320439");
INSERT INTO kelurahan VALUES("3204392007","Sukawening","320439");
INSERT INTO kelurahan VALUES("3204402001","Patengan","320440");
INSERT INTO kelurahan VALUES("3204402002","Sukaresmi","320440");
INSERT INTO kelurahan VALUES("3204402003","Indragiri","320440");
INSERT INTO kelurahan VALUES("3204402004","Cipelah","320440");
INSERT INTO kelurahan VALUES("3204402005","Alamendah","320440");
INSERT INTO kelurahan VALUES("3204442001","Cangkuang","320444");
INSERT INTO kelurahan VALUES("3204442002","Ciluncat","320444");
INSERT INTO kelurahan VALUES("3204442003","Nagrak","320444");
INSERT INTO kelurahan VALUES("3204442004","Bandasari","320444");
INSERT INTO kelurahan VALUES("3204442005","Pananjung","320444");
INSERT INTO kelurahan VALUES("3204442006","Jatisari","320444");
INSERT INTO kelurahan VALUES("3204442007","Tanjungsari","320444");
INSERT INTO kelurahan VALUES("3204462001","Jelegong","320446");
INSERT INTO kelurahan VALUES("3204462002","Jatisari","320446");
INSERT INTO kelurahan VALUES("3204462003","Pameuntasan","320446");
INSERT INTO kelurahan VALUES("3204462004","Kopo","320446");
INSERT INTO kelurahan VALUES("3204462005","Cibodas","320446");
INSERT INTO kelurahan VALUES("3204462006","Kutawaringin","320446");
INSERT INTO kelurahan VALUES("3204462007","Sukamulya","320446");
INSERT INTO kelurahan VALUES("3204462008","Padasuka","320446");
INSERT INTO kelurahan VALUES("3204462009","Buninagara","320446");
INSERT INTO kelurahan VALUES("3204462010","Gajah Mekar (Gajahmekar)","320446");
INSERT INTO kelurahan VALUES("3204462011","Cilame","320446");
INSERT INTO kelurahan VALUES("3205011001","Kota Kulon (Kotakulon)","320501");
INSERT INTO kelurahan VALUES("3205011002","Kota Wetan (Kotawetan)","320501");
INSERT INTO kelurahan VALUES("3205011003","Margawati","320501");
INSERT INTO kelurahan VALUES("3205011004","Pakuwon","320501");
INSERT INTO kelurahan VALUES("3205011005","Muara Sanding","320501");
INSERT INTO kelurahan VALUES("3205011006","Sukamentri (Sukamantri)","320501");
INSERT INTO kelurahan VALUES("3205011007","Ciwalen","320501");
INSERT INTO kelurahan VALUES("3205011008","Paminggir","320501");
INSERT INTO kelurahan VALUES("3205011009","Regol","320501");
INSERT INTO kelurahan VALUES("3205011010","Sukanegla","320501");
INSERT INTO kelurahan VALUES("3205011011","Cimuncang","320501");
INSERT INTO kelurahan VALUES("3205021001","Suci Kaler (Sucikaler)","320502");
INSERT INTO kelurahan VALUES("3205021002","Lebakjaya","320502");
INSERT INTO kelurahan VALUES("3205021003","Karangmulya","320502");
INSERT INTO kelurahan VALUES("3205021014","Lengkongjaya","320502");
INSERT INTO kelurahan VALUES("3205022004","Karangpawitan","320502");
INSERT INTO kelurahan VALUES("3205022005","Situgede","320502");
INSERT INTO kelurahan VALUES("3205022006","Cimurah","320502");
INSERT INTO kelurahan VALUES("3205022007","Suci","320502");
INSERT INTO kelurahan VALUES("3205022008","Jatisari","320502");
INSERT INTO kelurahan VALUES("3205022009","Godog","320502");
INSERT INTO kelurahan VALUES("3205022010","Situsari","320502");
INSERT INTO kelurahan VALUES("3205022011","Karangsari","320502");
INSERT INTO kelurahan VALUES("3205022012","Sindangpalay","320502");
INSERT INTO kelurahan VALUES("3205022013","Lebakagung","320502");
INSERT INTO kelurahan VALUES("3205022015","Sindanggalih","320502");
INSERT INTO kelurahan VALUES("3205022016","Mekarsari","320502");
INSERT INTO kelurahan VALUES("3205022017","Sindanglaya","320502");
INSERT INTO kelurahan VALUES("3205022018","Tanjungsari","320502");
INSERT INTO kelurahan VALUES("3205022019","Situsaeur","320502");
INSERT INTO kelurahan VALUES("3205022020","Situjaya","320502");
INSERT INTO kelurahan VALUES("3205032001","Wanaraja","320503");
INSERT INTO kelurahan VALUES("3205032002","Wanamekar","320503");
INSERT INTO kelurahan VALUES("3205032003","Cinunuk","320503");
INSERT INTO kelurahan VALUES("3205032007","Sukamenak","320503");
INSERT INTO kelurahan VALUES("3205032008","Sindangratu","320503");
INSERT INTO kelurahan VALUES("3205032011","Wanajaya","320503");
INSERT INTO kelurahan VALUES("3205032015","Sindangmekar","320503");
INSERT INTO kelurahan VALUES("3205032019","Wanasari","320503");
INSERT INTO kelurahan VALUES("3205032024","Sindangprabu","320503");
INSERT INTO kelurahan VALUES("3205041012","Pananjung","320504");
INSERT INTO kelurahan VALUES("3205042001","Sukajadi","320504");
INSERT INTO kelurahan VALUES("3205042002","Cimanganten","320504");
INSERT INTO kelurahan VALUES("3205042003","Jati","320504");
INSERT INTO kelurahan VALUES("3205042004","Rancabango","320504");
INSERT INTO kelurahan VALUES("3205042005","Sukawangi","320504");
INSERT INTO kelurahan VALUES("3205042006","Sirnajaya","320504");
INSERT INTO kelurahan VALUES("3205042007","Tanjung Kamuning (Tanjungkamuning)","320504");
INSERT INTO kelurahan VALUES("3205042008","Mekarjaya","320504");
INSERT INTO kelurahan VALUES("3205042009","Langensari","320504");
INSERT INTO kelurahan VALUES("3205042010","Mekarwangi","320504");
INSERT INTO kelurahan VALUES("3205042011","Pasawahan","320504");
INSERT INTO kelurahan VALUES("3205042013","Panjiwangi","320504");
INSERT INTO kelurahan VALUES("3205051001","Pataruman","320505");
INSERT INTO kelurahan VALUES("3205051002","Sukagalih","320505");
INSERT INTO kelurahan VALUES("3205051006","Jayawaras","320505");
INSERT INTO kelurahan VALUES("3205051009","Sukakarya","320505");
INSERT INTO kelurahan VALUES("3205051012","Sukajaya","320505");
INSERT INTO kelurahan VALUES("3205052003","Jayaraga","320505");
INSERT INTO kelurahan VALUES("3205052004","Haurpanggung","320505");
INSERT INTO kelurahan VALUES("3205052005","Cibunar","320505");
INSERT INTO kelurahan VALUES("3205052007","Sukabakti","320505");
INSERT INTO kelurahan VALUES("3205052008","Tarogong","320505");
INSERT INTO kelurahan VALUES("3205052010","Mekargalih","320505");
INSERT INTO kelurahan VALUES("3205052011","Kersamenak","320505");
INSERT INTO kelurahan VALUES("3205062001","Banyuresmi","320506");
INSERT INTO kelurahan VALUES("3205062002","Cimareme","320506");
INSERT INTO kelurahan VALUES("3205062003","Sukaratu","320506");
INSERT INTO kelurahan VALUES("3205062004","Sukasenang","320506");
INSERT INTO kelurahan VALUES("3205062005","Sukaraja","320506");
INSERT INTO kelurahan VALUES("3205062006","Cipicung","320506");
INSERT INTO kelurahan VALUES("3205062007","Dangdeur","320506");
INSERT INTO kelurahan VALUES("3205062008","Sukakarya","320506");
INSERT INTO kelurahan VALUES("3205062009","Pamekarsari","320506");
INSERT INTO kelurahan VALUES("3205062010","Binakarya","320506");
INSERT INTO kelurahan VALUES("3205062011","Bagendit","320506");
INSERT INTO kelurahan VALUES("3205062012","Karyamukti","320506");
INSERT INTO kelurahan VALUES("3205062013","Karyasari","320506");
INSERT INTO kelurahan VALUES("3205062014","Sukamukti","320506");
INSERT INTO kelurahan VALUES("3205062015","Sukalaksana","320506");
INSERT INTO kelurahan VALUES("3205072001","Samarang","320507");
INSERT INTO kelurahan VALUES("3205072002","Cintarakyat (Cintarayat)","320507");
INSERT INTO kelurahan VALUES("3205072003","Sukarasa","320507");
INSERT INTO kelurahan VALUES("3205072004","Parakan","320507");
INSERT INTO kelurahan VALUES("3205072005","Sukakarya","320507");
INSERT INTO kelurahan VALUES("3205072006","Cintakarya","320507");
INSERT INTO kelurahan VALUES("3205072007","Tanjung Karya","320507");
INSERT INTO kelurahan VALUES("3205072008","Cisarua","320507");
INSERT INTO kelurahan VALUES("3205072009","Cintarasa","320507");
INSERT INTO kelurahan VALUES("3205072010","Cintaasih","320507");
INSERT INTO kelurahan VALUES("3205072011","Sirnasari","320507");
INSERT INTO kelurahan VALUES("3205072012","Sukalaksana","320507");
INSERT INTO kelurahan VALUES("3205072013","Tanjunganom","320507");
INSERT INTO kelurahan VALUES("3205082001","Pasirwangi","320508");
INSERT INTO kelurahan VALUES("3205082002","Pasirkiamis","320508");
INSERT INTO kelurahan VALUES("3205082003","Padasuka","320508");
INSERT INTO kelurahan VALUES("3205082004","Karyamekar","320508");
INSERT INTO kelurahan VALUES("3205082005","Padawaas (Padaawas)","320508");
INSERT INTO kelurahan VALUES("3205082006","Padaasih","320508");
INSERT INTO kelurahan VALUES("3205082007","Barusari","320508");
INSERT INTO kelurahan VALUES("3205082008","Talaga","320508");
INSERT INTO kelurahan VALUES("3205082009","Padamukti","320508");
INSERT INTO kelurahan VALUES("3205082010","Sinarjaya (Sirnajaya)","320508");
INSERT INTO kelurahan VALUES("3205082011","Sarimukti","320508");
INSERT INTO kelurahan VALUES("3205082012","Padamulya","320508");
INSERT INTO kelurahan VALUES("3205092001","Leles","320509");
INSERT INTO kelurahan VALUES("3205092002","Ciburial","320509");
INSERT INTO kelurahan VALUES("3205092003","Jangkurang","320509");
INSERT INTO kelurahan VALUES("3205092004","Sukarame","320509");
INSERT INTO kelurahan VALUES("3205092005","Lembang","320509");
INSERT INTO kelurahan VALUES("3205092006","Cangkuang","320509");
INSERT INTO kelurahan VALUES("3205092007","Salamnunggal","320509");
INSERT INTO kelurahan VALUES("3205092008","Kandangmukti","320509");
INSERT INTO kelurahan VALUES("3205092009","Margaluyu","320509");
INSERT INTO kelurahan VALUES("3205092010","Cipancar","320509");
INSERT INTO kelurahan VALUES("3205092011","Haruman","320509");
INSERT INTO kelurahan VALUES("3205092012","Dano","320509");
INSERT INTO kelurahan VALUES("3205102001","Kadungora","320510");
INSERT INTO kelurahan VALUES("3205102002","Gandamekar","320510");
INSERT INTO kelurahan VALUES("3205102003","Cikembulan","320510");
INSERT INTO kelurahan VALUES("3205102004","Cisaat","320510");
INSERT INTO kelurahan VALUES("3205102005","Mandalasari","320510");
INSERT INTO kelurahan VALUES("3205102006","Tanggulun","320510");
INSERT INTO kelurahan VALUES("3205102007","Mekarbakti","320510");
INSERT INTO kelurahan VALUES("3205102008","Karangmulya","320510");
INSERT INTO kelurahan VALUES("3205102009","Harumansari","320510");
INSERT INTO kelurahan VALUES("3205102010","Talagasari","320510");
INSERT INTO kelurahan VALUES("3205102011","Hegarsari","320510");
INSERT INTO kelurahan VALUES("3205102012","Neglasari","320510");
INSERT INTO kelurahan VALUES("3205102013","Karangtengah","320510");
INSERT INTO kelurahan VALUES("3205102014","Rancasalak","320510");
INSERT INTO kelurahan VALUES("3205112001","Leuwigoong","320511");
INSERT INTO kelurahan VALUES("3205112002","Karanganyar","320511");
INSERT INTO kelurahan VALUES("3205112003","Margacinta","320511");
INSERT INTO kelurahan VALUES("3205112004","Margahayu","320511");
INSERT INTO kelurahan VALUES("3205112005","Dungusiku","320511");
INSERT INTO kelurahan VALUES("3205112006","Tambak Sari (Tambaksari)","320511");
INSERT INTO kelurahan VALUES("3205112007","Sindangsari","320511");
INSERT INTO kelurahan VALUES("3205112008","Karangsari","320511");
INSERT INTO kelurahan VALUES("3205122001","Cibatu","320512");
INSERT INTO kelurahan VALUES("3205122002","Mekarsari","320512");
INSERT INTO kelurahan VALUES("3205122003","Cibunar","320512");
INSERT INTO kelurahan VALUES("3205122004","Sindangsuka","320512");
INSERT INTO kelurahan VALUES("3205122005","Kertajaya","320512");
INSERT INTO kelurahan VALUES("3205122006","Sukalilah","320512");
INSERT INTO kelurahan VALUES("3205122007","Padasuka","320512");
INSERT INTO kelurahan VALUES("3205122008","Karyamukti","320512");
INSERT INTO kelurahan VALUES("3205122009","Girimukti","320512");
INSERT INTO kelurahan VALUES("3205122010","Keresek","320512");
INSERT INTO kelurahan VALUES("3205122011","Wanakerta","320512");
INSERT INTO kelurahan VALUES("3205132001","Kersamanah","320513");
INSERT INTO kelurahan VALUES("3205132002","Nanjungjaya","320513");
INSERT INTO kelurahan VALUES("3205132003","Sukamerang","320513");
INSERT INTO kelurahan VALUES("3205132004","Girijaya","320513");
INSERT INTO kelurahan VALUES("3205132005","Sukamaju","320513");
INSERT INTO kelurahan VALUES("3205132006","Mekarraya","320513");
INSERT INTO kelurahan VALUES("3205142001","Malangbong","320514");
INSERT INTO kelurahan VALUES("3205142002","Karangmulya","320514");
INSERT INTO kelurahan VALUES("3205142003","Cibunar","320514");
INSERT INTO kelurahan VALUES("3205142004","Cikarang (Cikarag)","320514");
INSERT INTO kelurahan VALUES("3205142005","Sakawayang (Sakawayana)","320514");
INSERT INTO kelurahan VALUES("3205142006","Mekarasih","320514");
INSERT INTO kelurahan VALUES("3205142007","Cisitu","320514");
INSERT INTO kelurahan VALUES("3205142008","Campaka","320514");
INSERT INTO kelurahan VALUES("3205142009","Lewobaru","320514");
INSERT INTO kelurahan VALUES("3205142010","Sukamanah","320514");
INSERT INTO kelurahan VALUES("3205142011","Cilampuyang","320514");
INSERT INTO kelurahan VALUES("3205142012","Cinagara","320514");
INSERT INTO kelurahan VALUES("3205142013","Sukaratu","320514");
INSERT INTO kelurahan VALUES("3205142014","Citeras","320514");
INSERT INTO kelurahan VALUES("3205142015","Sukarasa","320514");
INSERT INTO kelurahan VALUES("3205142016","Sekarwangi","320514");
INSERT INTO kelurahan VALUES("3205142017","Kutanagara","320514");
INSERT INTO kelurahan VALUES("3205142018","Sanding","320514");
INSERT INTO kelurahan VALUES("3205142019","Cihaurkuning","320514");
INSERT INTO kelurahan VALUES("3205142020","Baru Dua (Barudua)","320514");
INSERT INTO kelurahan VALUES("3205142021","Sukajaya","320514");
INSERT INTO kelurahan VALUES("3205142022","Bunisari","320514");
INSERT INTO kelurahan VALUES("3205142023","Mekarmulya (Mekar Mulya)","320514");
INSERT INTO kelurahan VALUES("3205142024","Girimakmur","320514");
INSERT INTO kelurahan VALUES("3205152001","Sukawening","320515");
INSERT INTO kelurahan VALUES("3205152002","Sukamukti","320515");
INSERT INTO kelurahan VALUES("3205152003","Mekarluyu","320515");
INSERT INTO kelurahan VALUES("3205152004","Sukaluyu","320515");
INSERT INTO kelurahan VALUES("3205152005","Sudalarang","320515");
INSERT INTO kelurahan VALUES("3205152006","Sukasono","320515");
INSERT INTO kelurahan VALUES("3205152007","Sukahaji","320515");
INSERT INTO kelurahan VALUES("3205152008","Pasanggrahan","320515");
INSERT INTO kelurahan VALUES("3205152009","Maripari","320515");
INSERT INTO kelurahan VALUES("3205152010","Mekarwangi","320515");
INSERT INTO kelurahan VALUES("3205152011","Mekar Hurip (Mekarhurip)","320515");
INSERT INTO kelurahan VALUES("3205162001","Caringin","320516");
INSERT INTO kelurahan VALUES("3205162002","Cintamanik","320516");
INSERT INTO kelurahan VALUES("3205162003","Cinta","320516");
INSERT INTO kelurahan VALUES("3205162004","Sindanggalih","320516");
INSERT INTO kelurahan VALUES("3205172001","Bayongbong","320517");
INSERT INTO kelurahan VALUES("3205172002","Panembong","320517");
INSERT INTO kelurahan VALUES("3205172003","Hegarmanah","320517");
INSERT INTO kelurahan VALUES("3205172004","Selakuray (Salakuray)","320517");
INSERT INTO kelurahan VALUES("3205172005","Karyajaya","320517");
INSERT INTO kelurahan VALUES("3205172006","Mulyasari","320517");
INSERT INTO kelurahan VALUES("3205172007","Pamalayan","320517");
INSERT INTO kelurahan VALUES("3205172008","Mekarsari","320517");
INSERT INTO kelurahan VALUES("3205172009","Ciburuy","320517");
INSERT INTO kelurahan VALUES("3205172010","Ciela","320517");
INSERT INTO kelurahan VALUES("3205172011","Cikedokan","320517");
INSERT INTO kelurahan VALUES("3205172012","Banjarsari","320517");
INSERT INTO kelurahan VALUES("3205172013","Sukasenang","320517");
INSERT INTO kelurahan VALUES("3205172014","Mekarjaya","320517");
INSERT INTO kelurahan VALUES("3205172015","Sirnagalih","320517");
INSERT INTO kelurahan VALUES("3205172016","Sukarame","320517");
INSERT INTO kelurahan VALUES("3205172017","Cinisti","320517");
INSERT INTO kelurahan VALUES("3205172018","Sukamanah","320517");
INSERT INTO kelurahan VALUES("3205182001","Cigedug","320518");
INSERT INTO kelurahan VALUES("3205182002","Barusuda","320518");
INSERT INTO kelurahan VALUES("3205182003","Sukahurip","320518");
INSERT INTO kelurahan VALUES("3205182004","Sindangsari","320518");
INSERT INTO kelurahan VALUES("3205182005","Cintanagara","320518");
INSERT INTO kelurahan VALUES("3205192001","Cilawu","320519");
INSERT INTO kelurahan VALUES("3205192002","Sukamukti","320519");
INSERT INTO kelurahan VALUES("3205192003","Karyamekar","320519");
INSERT INTO kelurahan VALUES("3205192004","Dawungsari","320519");
INSERT INTO kelurahan VALUES("3205192005","Pasanggrahan","320519");
INSERT INTO kelurahan VALUES("3205192006","Sukahati","320519");
INSERT INTO kelurahan VALUES("3205192007","Mekarsari","320519");
INSERT INTO kelurahan VALUES("3205192008","Mekarmukti","320519");
INSERT INTO kelurahan VALUES("3205192009","Desakolot","320519");
INSERT INTO kelurahan VALUES("3205192010","Ngamplangsari","320519");
INSERT INTO kelurahan VALUES("3205192011","Margalaksana","320519");
INSERT INTO kelurahan VALUES("3205192012","Dangiang","320519");
INSERT INTO kelurahan VALUES("3205192013","Dayeuhmanggung","320519");
INSERT INTO kelurahan VALUES("3205192014","Sukamaju","320519");
INSERT INTO kelurahan VALUES("3205192015","Mangurakyat (Mangkurayat)","320519");
INSERT INTO kelurahan VALUES("3205192016","Ngamplang","320519");
INSERT INTO kelurahan VALUES("3205192017","Sukatani","320519");
INSERT INTO kelurahan VALUES("3205192018","Sukamurni","320519");
INSERT INTO kelurahan VALUES("3205202001","Cisurupan","320520");
INSERT INTO kelurahan VALUES("3205202002","Cidatar","320520");
INSERT INTO kelurahan VALUES("3205202003","Sukawangi (Sukawargi)","320520");
INSERT INTO kelurahan VALUES("3205202004","Sukatani","320520");
INSERT INTO kelurahan VALUES("3205202005","Situsari","320520");
INSERT INTO kelurahan VALUES("3205202006","Pakuwon","320520");
INSERT INTO kelurahan VALUES("3205202007","Balewangi","320520");
INSERT INTO kelurahan VALUES("3205202008","Sirnajaya","320520");
INSERT INTO kelurahan VALUES("3205202009","Cisero","320520");
INSERT INTO kelurahan VALUES("3205202010","Kramatwangi (Karamatwangi)","320520");
INSERT INTO kelurahan VALUES("3205202011","Cipaganti","320520");
INSERT INTO kelurahan VALUES("3205202012","Pamulihan","320520");
INSERT INTO kelurahan VALUES("3205202013","Tambakbaya","320520");
INSERT INTO kelurahan VALUES("3205202014","Sirnagalih","320520");
INSERT INTO kelurahan VALUES("3205202015","Pangauban","320520");
INSERT INTO kelurahan VALUES("3205202016","Simpangsari","320520");
INSERT INTO kelurahan VALUES("3205202017","Cintaasih","320520");
INSERT INTO kelurahan VALUES("3205212001","Sukaresmi","320521");
INSERT INTO kelurahan VALUES("3205212002","Cintadamai","320521");
INSERT INTO kelurahan VALUES("3205212003","Mekarjaya","320521");
INSERT INTO kelurahan VALUES("3205212004","Sukajaya","320521");
INSERT INTO kelurahan VALUES("3205212005","Sukamulya","320521");
INSERT INTO kelurahan VALUES("3205212006","Padamukti","320521");
INSERT INTO kelurahan VALUES("3205212007","Sukalilah","320521");
INSERT INTO kelurahan VALUES("3205222001","Cikajang","320522");
INSERT INTO kelurahan VALUES("3205222002","Simpang","320522");
INSERT INTO kelurahan VALUES("3205222003","Mekarsari","320522");
INSERT INTO kelurahan VALUES("3205222004","Girijaya","320522");
INSERT INTO kelurahan VALUES("3205222005","Giriawas","320522");
INSERT INTO kelurahan VALUES("3205222006","Cibodas","320522");
INSERT INTO kelurahan VALUES("3205222007","Mekarjaya","320522");
INSERT INTO kelurahan VALUES("3205222008","Cikandang","320522");
INSERT INTO kelurahan VALUES("3205222009","Padasuka","320522");
INSERT INTO kelurahan VALUES("3205222010","Margamulya","320522");
INSERT INTO kelurahan VALUES("3205222011","Cipangramatan","320522");
INSERT INTO kelurahan VALUES("3205222012","Kramatwangi","320522");
INSERT INTO kelurahan VALUES("3205232001","Banjarwangi","320523");
INSERT INTO kelurahan VALUES("3205232002","Talagajaya","320523");
INSERT INTO kelurahan VALUES("3205232003","Padahurip","320523");
INSERT INTO kelurahan VALUES("3205232004","Kadongdong","320523");
INSERT INTO kelurahan VALUES("3205232005","Talagasari","320523");
INSERT INTO kelurahan VALUES("3205232006","Jayabakti","320523");
INSERT INTO kelurahan VALUES("3205232007","Mulyajaya","320523");
INSERT INTO kelurahan VALUES("3205232008","Dangiang","320523");
INSERT INTO kelurahan VALUES("3205232009","Tanjungjaya","320523");
INSERT INTO kelurahan VALUES("3205232010","Bojong","320523");
INSERT INTO kelurahan VALUES("3205232011","Wangunjaya","320523");
INSERT INTO kelurahan VALUES("3205242001","Singajaya","320524");
INSERT INTO kelurahan VALUES("3205242002","Ciudian","320524");
INSERT INTO kelurahan VALUES("3205242003","Mekartani","320524");
INSERT INTO kelurahan VALUES("3205242004","Sukamulya","320524");
INSERT INTO kelurahan VALUES("3205242005","Sukawangi","320524");
INSERT INTO kelurahan VALUES("3205242006","Pancasura","320524");
INSERT INTO kelurahan VALUES("3205242007","Karangagung","320524");
INSERT INTO kelurahan VALUES("3205242008","Cigintung","320524");
INSERT INTO kelurahan VALUES("3205242009","Girimukti","320524");
INSERT INTO kelurahan VALUES("3205252001","Cihurip","320525");
INSERT INTO kelurahan VALUES("3205252002","Cisangkal","320525");
INSERT INTO kelurahan VALUES("3205252003","Mekarwangi","320525");
INSERT INTO kelurahan VALUES("3205252004","Jayamukti","320525");
INSERT INTO kelurahan VALUES("3205262001","Peundeuy","320526");
INSERT INTO kelurahan VALUES("3205262002","Toblong","320526");
INSERT INTO kelurahan VALUES("3205262003","Saribakti","320526");
INSERT INTO kelurahan VALUES("3205262004","Pangrumasan","320526");
INSERT INTO kelurahan VALUES("3205262005","Sukanagara","320526");
INSERT INTO kelurahan VALUES("3205262006","Purwajaya","320526");
INSERT INTO kelurahan VALUES("3205272001","Pameungpeuk","320527");
INSERT INTO kelurahan VALUES("3205272002","Mancagahar","320527");
INSERT INTO kelurahan VALUES("3205272003","Paas","320527");
INSERT INTO kelurahan VALUES("3205272004","Mandalakasih","320527");
INSERT INTO kelurahan VALUES("3205272005","Jatimulya","320527");
INSERT INTO kelurahan VALUES("3205272006","Bojong","320527");
INSERT INTO kelurahan VALUES("3205272007","Sirnabakti","320527");
INSERT INTO kelurahan VALUES("3205272008","Bojong Kidul","320527");
INSERT INTO kelurahan VALUES("3205282001","Cisompet","320528");
INSERT INTO kelurahan VALUES("3205282002","Cihaurkuning","320528");
INSERT INTO kelurahan VALUES("3205282003","Margamulya","320528");
INSERT INTO kelurahan VALUES("3205282004","Sukamukti","320528");
INSERT INTO kelurahan VALUES("3205282005","Sukanagara","320528");
INSERT INTO kelurahan VALUES("3205282006","Cikondang","320528");
INSERT INTO kelurahan VALUES("3205282007","Depok","320528");
INSERT INTO kelurahan VALUES("3205282008","Panyindangan","320528");
INSERT INTO kelurahan VALUES("3205282009","Jatisari","320528");
INSERT INTO kelurahan VALUES("3205282010","Neglasari","320528");
INSERT INTO kelurahan VALUES("3205282011","Sindangsari","320528");
INSERT INTO kelurahan VALUES("3205292001","Karyasari","320529");
INSERT INTO kelurahan VALUES("3205292002","Maroko","320529");
INSERT INTO kelurahan VALUES("3205292003","Sancang","320529");
INSERT INTO kelurahan VALUES("3205292004","Karyamukti (Karya Mukti)","320529");
INSERT INTO kelurahan VALUES("3205292005","Sagara","320529");
INSERT INTO kelurahan VALUES("3205292006","Mekarsari","320529");
INSERT INTO kelurahan VALUES("3205292007","Simpang","320529");
INSERT INTO kelurahan VALUES("3205292008","Mekar Mukti (Mekarmukti)","320529");
INSERT INTO kelurahan VALUES("3205292009","Cigaronggong","320529");
INSERT INTO kelurahan VALUES("3205292010","Mekarwangi","320529");
INSERT INTO kelurahan VALUES("3205292011","Najaten","320529");
INSERT INTO kelurahan VALUES("3205302001","Cikelet","320530");
INSERT INTO kelurahan VALUES("3205302002","Linggamanik","320530");
INSERT INTO kelurahan VALUES("3205302003","Kertamukti","320530");
INSERT INTO kelurahan VALUES("3205302004","Cogadog (Cigadog)","320530");
INSERT INTO kelurahan VALUES("3205302005","Pamalayan","320530");
INSERT INTO kelurahan VALUES("3205302006","Karangsari","320530");
INSERT INTO kelurahan VALUES("3205302007","Cijambe","320530");
INSERT INTO kelurahan VALUES("3205302008","Girimukti","320530");
INSERT INTO kelurahan VALUES("3205302009","Ciroyom","320530");
INSERT INTO kelurahan VALUES("3205302010","Awassagara","320530");
INSERT INTO kelurahan VALUES("3205302011","Tipar","320530");
INSERT INTO kelurahan VALUES("3205312001","Bungbulang","320531");
INSERT INTO kelurahan VALUES("3205312002","Hanjuang","320531");
INSERT INTO kelurahan VALUES("3205312003","Gunamekar","320531");
INSERT INTO kelurahan VALUES("3205312004","Tegallega (Tegalega)","320531");
INSERT INTO kelurahan VALUES("3205312005","Mekarbakti","320531");
INSERT INTO kelurahan VALUES("3205312006","Margalaksana","320531");
INSERT INTO kelurahan VALUES("3205312007","Bojong","320531");
INSERT INTO kelurahan VALUES("3205312008","Sinarjaya","320531");
INSERT INTO kelurahan VALUES("3205312009","Mekarjaya","320531");
INSERT INTO kelurahan VALUES("3205312010","Cihikeu","320531");
INSERT INTO kelurahan VALUES("3205312011","Wangunjaya","320531");
INSERT INTO kelurahan VALUES("3205312012","Gunung Jampang","320531");
INSERT INTO kelurahan VALUES("3205312013","Hegarmanah","320531");
INSERT INTO kelurahan VALUES("3205322001","Mekarmukti","320532");
INSERT INTO kelurahan VALUES("3205322002","Karangwangi","320532");
INSERT INTO kelurahan VALUES("3205322003","Jayabaya (Jagabaya)","320532");
INSERT INTO kelurahan VALUES("3205322004","Cijayana","320532");
INSERT INTO kelurahan VALUES("3205322005","Mekarsari","320532");
INSERT INTO kelurahan VALUES("3205332001","Neglasari","320533");
INSERT INTO kelurahan VALUES("3205332002","Tanjungjaya","320533");
INSERT INTO kelurahan VALUES("3205332003","Tanjungmulya","320533");
INSERT INTO kelurahan VALUES("3205332004","Wangunjaya","320533");
INSERT INTO kelurahan VALUES("3205332005","Sukamulya","320533");
INSERT INTO kelurahan VALUES("3205332006","Pasirlangu","320533");
INSERT INTO kelurahan VALUES("3205332007","Talagawangi","320533");
INSERT INTO kelurahan VALUES("3205332008","Jatiwangi","320533");
INSERT INTO kelurahan VALUES("3205332009","Panyindangan","320533");
INSERT INTO kelurahan VALUES("3205332010","Tegalgede","320533");
INSERT INTO kelurahan VALUES("3205332011","Depok","320533");
INSERT INTO kelurahan VALUES("3205332012","Karangsari","320533");
INSERT INTO kelurahan VALUES("3205332013","Jayamekar","320533");
INSERT INTO kelurahan VALUES("3205342001","Pakenjeng","320534");
INSERT INTO kelurahan VALUES("3205342002","Garumukti","320534");
INSERT INTO kelurahan VALUES("3205342003","Panawa","320534");
INSERT INTO kelurahan VALUES("3205342004","Pananjung","320534");
INSERT INTO kelurahan VALUES("3205342005","Linggarjati","320534");
INSERT INTO kelurahan VALUES("3205352001","Cisewu","320535");
INSERT INTO kelurahan VALUES("3205352002","Girimukti","320535");
INSERT INTO kelurahan VALUES("3205352003","Pamalayan","320535");
INSERT INTO kelurahan VALUES("3205352004","Cikarang","320535");
INSERT INTO kelurahan VALUES("3205352005","Sukajaya","320535");
INSERT INTO kelurahan VALUES("3205352006","Nyalindung","320535");
INSERT INTO kelurahan VALUES("3205352007","Karangsewu","320535");
INSERT INTO kelurahan VALUES("3205352008","Mekarsewu","320535");
INSERT INTO kelurahan VALUES("3205352009","Panggalih","320535");
INSERT INTO kelurahan VALUES("3205362001","Caringin","320536");
INSERT INTO kelurahan VALUES("3205362002","Indralayang","320536");
INSERT INTO kelurahan VALUES("3205362003","Cimahi","320536");
INSERT INTO kelurahan VALUES("3205362004","Sukarame","320536");
INSERT INTO kelurahan VALUES("3205362005","Purbayani","320536");
INSERT INTO kelurahan VALUES("3205362006","Samuderajaya","320536");
INSERT INTO kelurahan VALUES("3205372001","Sukamaju","320537");
INSERT INTO kelurahan VALUES("3205372002","Sukamulya","320537");
INSERT INTO kelurahan VALUES("3205372003","Mekarmukti","320537");
INSERT INTO kelurahan VALUES("3205372004","Mekarmulya","320537");
INSERT INTO kelurahan VALUES("3205372005","Sukalaksana","320537");
INSERT INTO kelurahan VALUES("3205372006","Selaawi","320537");
INSERT INTO kelurahan VALUES("3205372007","Mekarwangi","320537");
INSERT INTO kelurahan VALUES("3205382001","Limbangan Tengah (Limbangantengah)","320538");
INSERT INTO kelurahan VALUES("3205382002","Limbangan Barat (Limbanganbarat)","320538");
INSERT INTO kelurahan VALUES("3205382003","Galihpakuwon","320538");
INSERT INTO kelurahan VALUES("3205382004","Surabaya","320538");
INSERT INTO kelurahan VALUES("3205382005","Cijolang","320538");
INSERT INTO kelurahan VALUES("3205382006","Neglasari","320538");
INSERT INTO kelurahan VALUES("3205382007","Simpen Kaler","320538");
INSERT INTO kelurahan VALUES("3205382008","Pasirwaru","320538");
INSERT INTO kelurahan VALUES("3205382009","Simpen Kidul","320538");
INSERT INTO kelurahan VALUES("3205382010","Ciwangi","320538");
INSERT INTO kelurahan VALUES("3205382011","Cigagade","320538");
INSERT INTO kelurahan VALUES("3205382012","Limbangan Timur (Limbangantimur)","320538");
INSERT INTO kelurahan VALUES("3205382013","Dunguswiru","320538");
INSERT INTO kelurahan VALUES("3205382014","Pangeureunan","320538");
INSERT INTO kelurahan VALUES("3205392001","Selaawi","320539");
INSERT INTO kelurahan VALUES("3205392002","Putrajawa","320539");
INSERT INTO kelurahan VALUES("3205392003","Cigawir","320539");
INSERT INTO kelurahan VALUES("3205392004","Pelitaasih (Pelita Asih)","320539");
INSERT INTO kelurahan VALUES("3205392005","Cirapuhan","320539");
INSERT INTO kelurahan VALUES("3205392006","Mekarsari","320539");
INSERT INTO kelurahan VALUES("3205392007","Samida","320539");
INSERT INTO kelurahan VALUES("3205402001","Cipareuan","320540");
INSERT INTO kelurahan VALUES("3205402002","Cibiuk Kaler","320540");
INSERT INTO kelurahan VALUES("3205402003","Cibiuk Kidul","320540");
INSERT INTO kelurahan VALUES("3205402004","Majasari","320540");
INSERT INTO kelurahan VALUES("3205402005","Lingkungpasir","320540");
INSERT INTO kelurahan VALUES("3205412001","Citangtu","320541");
INSERT INTO kelurahan VALUES("3205412002","Cimarabas (Cimaragas)","320541");
INSERT INTO kelurahan VALUES("3205412003","Babakan Loa (Babakanloa)","320541");
INSERT INTO kelurahan VALUES("3205412004","Sukahurip","320541");
INSERT INTO kelurahan VALUES("3205412005","Sukamulya","320541");
INSERT INTO kelurahan VALUES("3205412006","Cihuni","320541");
INSERT INTO kelurahan VALUES("3205412007","Sukarasa","320541");
INSERT INTO kelurahan VALUES("3205412008","Karangsari","320541");
INSERT INTO kelurahan VALUES("3205422001","Sadang","320542");
INSERT INTO kelurahan VALUES("3205422002","Sukaratu","320542");
INSERT INTO kelurahan VALUES("3205422003","Tenjonagara","320542");
INSERT INTO kelurahan VALUES("3205422004","Tegalpanjang","320542");
INSERT INTO kelurahan VALUES("3205422005","Cigadog","320542");
INSERT INTO kelurahan VALUES("3205422006","Linggamukti","320542");
INSERT INTO kelurahan VALUES("3205422007","Sukalaksana","320542");
INSERT INTO kelurahan VALUES("3206012001","Ciheras","320601");
INSERT INTO kelurahan VALUES("3206012002","Cipatujah","320601");
INSERT INTO kelurahan VALUES("3206012003","Sindangkerta","320601");
INSERT INTO kelurahan VALUES("3206012004","Cikawunggading (Cikawungading)","320601");
INSERT INTO kelurahan VALUES("3206012005","Bantarkalong","320601");
INSERT INTO kelurahan VALUES("3206012006","Darawati","320601");
INSERT INTO kelurahan VALUES("3206012007","Nagrog","320601");
INSERT INTO kelurahan VALUES("3206012008","Pameutingan","320601");
INSERT INTO kelurahan VALUES("3206012009","Tobongjaya","320601");
INSERT INTO kelurahan VALUES("3206012010","Cipanas","320601");
INSERT INTO kelurahan VALUES("3206012011","Kertasari","320601");
INSERT INTO kelurahan VALUES("3206012012","Ciandum","320601");
INSERT INTO kelurahan VALUES("3206012013","Nangelasari","320601");
INSERT INTO kelurahan VALUES("3206012014","Padawaras","320601");
INSERT INTO kelurahan VALUES("3206012015","Sukahurip","320601");
INSERT INTO kelurahan VALUES("3206022001","Cidadap","320602");
INSERT INTO kelurahan VALUES("3206022002","Ciawi","320602");
INSERT INTO kelurahan VALUES("3206022003","Cikupa","320602");
INSERT INTO kelurahan VALUES("3206022004","Karangnunggal","320602");
INSERT INTO kelurahan VALUES("3206022005","Karangmekar","320602");
INSERT INTO kelurahan VALUES("3206022006","Cikukulu","320602");
INSERT INTO kelurahan VALUES("3206022007","Cibatuireng","320602");
INSERT INTO kelurahan VALUES("3206022008","Cibatu","320602");
INSERT INTO kelurahan VALUES("3206022009","Sarimanggu","320602");
INSERT INTO kelurahan VALUES("3206022010","Sukawangun","320602");
INSERT INTO kelurahan VALUES("3206022011","Cintawangi","320602");
INSERT INTO kelurahan VALUES("3206022012","Cikapinis","320602");
INSERT INTO kelurahan VALUES("3206022013","Sarimukti","320602");
INSERT INTO kelurahan VALUES("3206022014","Kujang","320602");
INSERT INTO kelurahan VALUES("3206032001","Cikalong","320603");
INSERT INTO kelurahan VALUES("3206032002","Kalapagenep","320603");
INSERT INTO kelurahan VALUES("3206032003","Cikancra","320603");
INSERT INTO kelurahan VALUES("3206032004","Singkir","320603");
INSERT INTO kelurahan VALUES("3206032005","Panyiaran","320603");
INSERT INTO kelurahan VALUES("3206032006","Cibeber","320603");
INSERT INTO kelurahan VALUES("3206032007","Cikadu","320603");
INSERT INTO kelurahan VALUES("3206032008","Mandalajaya","320603");
INSERT INTO kelurahan VALUES("3206032009","Cidadali","320603");
INSERT INTO kelurahan VALUES("3206032010","Cimanuk","320603");
INSERT INTO kelurahan VALUES("3206032011","Sindangjaya","320603");
INSERT INTO kelurahan VALUES("3206032012","Kubangsari","320603");
INSERT INTO kelurahan VALUES("3206032013","Tonjongsari","320603");
INSERT INTO kelurahan VALUES("3206042001","Cibuniasih","320604");
INSERT INTO kelurahan VALUES("3206042002","Pangliaran","320604");
INSERT INTO kelurahan VALUES("3206042003","Tonjong","320604");
INSERT INTO kelurahan VALUES("3206042004","Cibongas","320604");
INSERT INTO kelurahan VALUES("3206042005","Tawang","320604");
INSERT INTO kelurahan VALUES("3206042006","Neglasari","320604");
INSERT INTO kelurahan VALUES("3206042007","Cikawung","320604");
INSERT INTO kelurahan VALUES("3206042008","Jayamukti","320604");
INSERT INTO kelurahan VALUES("3206042009","Margaluyu","320604");
INSERT INTO kelurahan VALUES("3206042010","Mekarsari","320604");
INSERT INTO kelurahan VALUES("3206042011","Pancawangi","320604");
INSERT INTO kelurahan VALUES("3206052001","Gunungsari","320605");
INSERT INTO kelurahan VALUES("3206052002","Cilumba","320605");
INSERT INTO kelurahan VALUES("3206052003","Pakemitan","320605");
INSERT INTO kelurahan VALUES("3206052004","Cogreg","320605");
INSERT INTO kelurahan VALUES("3206052005","Cayur","320605");
INSERT INTO kelurahan VALUES("3206052006","Lengkongbarang","320605");
INSERT INTO kelurahan VALUES("3206052007","Sindangasih","320605");
INSERT INTO kelurahan VALUES("3206052008","Tanjungbarang","320605");
INSERT INTO kelurahan VALUES("3206052009","Linggalaksana","320605");
INSERT INTO kelurahan VALUES("3206062001","Cisempur","320606");
INSERT INTO kelurahan VALUES("3206062002","Setiawaras","320606");
INSERT INTO kelurahan VALUES("3206062003","Eureunpalay","320606");
INSERT INTO kelurahan VALUES("3206062004","Cibalong","320606");
INSERT INTO kelurahan VALUES("3206062005","Singajaya","320606");
INSERT INTO kelurahan VALUES("3206062006","Parung","320606");
INSERT INTO kelurahan VALUES("3206072001","Parungponteng","320607");
INSERT INTO kelurahan VALUES("3206072002","Cigunung","320607");
INSERT INTO kelurahan VALUES("3206072003","Cibanteng","320607");
INSERT INTO kelurahan VALUES("3206072004","Barumekar","320607");
INSERT INTO kelurahan VALUES("3206072005","Cibungur","320607");
INSERT INTO kelurahan VALUES("3206072006","Burujuljaya","320607");
INSERT INTO kelurahan VALUES("3206072007","Girikencana","320607");
INSERT INTO kelurahan VALUES("3206072008","Karyabakti","320607");
INSERT INTO kelurahan VALUES("3206082001","Simpang","320608");
INSERT INTO kelurahan VALUES("3206082002","Parakanhonje","320608");
INSERT INTO kelurahan VALUES("3206082003","Pamijahan","320608");
INSERT INTO kelurahan VALUES("3206082004","Sukamaju","320608");
INSERT INTO kelurahan VALUES("3206082005","Wangunsari","320608");
INSERT INTO kelurahan VALUES("3206082006","Hegarwangi","320608");
INSERT INTO kelurahan VALUES("3206082007","Wakap","320608");
INSERT INTO kelurahan VALUES("3206082008","Sirnagalih","320608");
INSERT INTO kelurahan VALUES("3206092001","Mertajaya","320609");
INSERT INTO kelurahan VALUES("3206092002","Cikadongdong","320609");
INSERT INTO kelurahan VALUES("3206092003","Bojongasih","320609");
INSERT INTO kelurahan VALUES("3206092004","Sindangsari","320609");
INSERT INTO kelurahan VALUES("3206092005","Girijaya","320609");
INSERT INTO kelurahan VALUES("3206092006","Toblongan","320609");
INSERT INTO kelurahan VALUES("3206102001","Cikuya","320610");
INSERT INTO kelurahan VALUES("3206102002","Cintabodas","320610");
INSERT INTO kelurahan VALUES("3206102003","Cipicung","320610");
INSERT INTO kelurahan VALUES("3206102004","Bojongsari","320610");
INSERT INTO kelurahan VALUES("3206102005","Mekarlaksana","320610");
INSERT INTO kelurahan VALUES("3206112001","Bojongkapol","320611");
INSERT INTO kelurahan VALUES("3206112002","Pedangkamulyan","320611");
INSERT INTO kelurahan VALUES("3206112003","Bojonggambir","320611");
INSERT INTO kelurahan VALUES("3206112004","Ciroyom","320611");
INSERT INTO kelurahan VALUES("3206112005","Wandasari","320611");
INSERT INTO kelurahan VALUES("3206112006","Campakasari","320611");
INSERT INTO kelurahan VALUES("3206112007","Mangkonjaya","320611");
INSERT INTO kelurahan VALUES("3206112008","Kertanegla","320611");
INSERT INTO kelurahan VALUES("3206112009","Purwaraharja","320611");
INSERT INTO kelurahan VALUES("3206112010","Girimukti","320611");
INSERT INTO kelurahan VALUES("3206122001","Parumasan","320612");
INSERT INTO kelurahan VALUES("3206122002","Cukangkawung","320612");
INSERT INTO kelurahan VALUES("3206122003","Sodonghilir","320612");
INSERT INTO kelurahan VALUES("3206122004","Cikalong","320612");
INSERT INTO kelurahan VALUES("3206122005","Cipaingeun","320612");
INSERT INTO kelurahan VALUES("3206122006","Leuwidulang","320612");
INSERT INTO kelurahan VALUES("3206122007","Muncang","320612");
INSERT INTO kelurahan VALUES("3206122008","Sepatnunggal","320612");
INSERT INTO kelurahan VALUES("3206122009","Cukangjayaguna","320612");
INSERT INTO kelurahan VALUES("3206122010","Raksajaya","320612");
INSERT INTO kelurahan VALUES("3206122011","Pakalongan","320612");
INSERT INTO kelurahan VALUES("3206122012","Sukabakti","320612");
INSERT INTO kelurahan VALUES("3206132001","Taraju","320613");
INSERT INTO kelurahan VALUES("3206132002","Cikubang","320613");
INSERT INTO kelurahan VALUES("3206132003","Deudeul","320613");
INSERT INTO kelurahan VALUES("3206132004","Purwarahayu","320613");
INSERT INTO kelurahan VALUES("3206132005","Singasari","320613");
INSERT INTO kelurahan VALUES("3206132006","Banyuasih","320613");
INSERT INTO kelurahan VALUES("3206132007","Raksasari","320613");
INSERT INTO kelurahan VALUES("3206132008","Kertaraharja","320613");
INSERT INTO kelurahan VALUES("3206132009","Pageralam","320613");
INSERT INTO kelurahan VALUES("3206142001","Jahiang","320614");
INSERT INTO kelurahan VALUES("3206142002","Serang","320614");
INSERT INTO kelurahan VALUES("3206142003","Salawu","320614");
INSERT INTO kelurahan VALUES("3206142004","Neglasari","320614");
INSERT INTO kelurahan VALUES("3206142005","Tanjungsari","320614");
INSERT INTO kelurahan VALUES("3206142006","Tenjowaringin","320614");
INSERT INTO kelurahan VALUES("3206142007","Sundawenang","320614");
INSERT INTO kelurahan VALUES("3206142008","Kawungsari","320614");
INSERT INTO kelurahan VALUES("3206142009","Sukarasa","320614");
INSERT INTO kelurahan VALUES("3206142010","Kutawaringin","320614");
INSERT INTO kelurahan VALUES("3206142011","Karangmukti","320614");
INSERT INTO kelurahan VALUES("3206142012","Margalaksana","320614");
INSERT INTO kelurahan VALUES("3206152001","Mandalasari","320615");
INSERT INTO kelurahan VALUES("3206152002","Sukasari","320615");
INSERT INTO kelurahan VALUES("3206152003","Puspasari","320615");
INSERT INTO kelurahan VALUES("3206152004","Puspahiang","320615");
INSERT INTO kelurahan VALUES("3206152005","Luyubakti","320615");
INSERT INTO kelurahan VALUES("3206152006","Pusparahayu","320615");
INSERT INTO kelurahan VALUES("3206152007","Cimanggu","320615");
INSERT INTO kelurahan VALUES("3206152008","Puspajaya","320615");
INSERT INTO kelurahan VALUES("3206162001","Cikeusal","320616");
INSERT INTO kelurahan VALUES("3206162002","Cibalanarik","320616");
INSERT INTO kelurahan VALUES("3206162003","Sukanagara","320616");
INSERT INTO kelurahan VALUES("3206162004","Tanjungjaya","320616");
INSERT INTO kelurahan VALUES("3206162005","Cilolohan","320616");
INSERT INTO kelurahan VALUES("3206162006","Cintajaya","320616");
INSERT INTO kelurahan VALUES("3206162007","Sukasenang","320616");
INSERT INTO kelurahan VALUES("3206172001","Sukapura","320617");
INSERT INTO kelurahan VALUES("3206172002","Leuwibudah","320617");
INSERT INTO kelurahan VALUES("3206172003","Sirnajaya","320617");
INSERT INTO kelurahan VALUES("3206172004","Mekarjaya","320617");
INSERT INTO kelurahan VALUES("3206172005","Linggaraja","320617");
INSERT INTO kelurahan VALUES("3206172006","Janggala","320617");
INSERT INTO kelurahan VALUES("3206172007","Margalaksana","320617");
INSERT INTO kelurahan VALUES("3206172008","Tarunajaya","320617");
INSERT INTO kelurahan VALUES("3206182001","Mandalahayu","320618");
INSERT INTO kelurahan VALUES("3206182002","Mulyasari","320618");
INSERT INTO kelurahan VALUES("3206182003","Kawitan","320618");
INSERT INTO kelurahan VALUES("3206182004","Mandalawangi","320618");
INSERT INTO kelurahan VALUES("3206182005","Karyawangi","320618");
INSERT INTO kelurahan VALUES("3206182006","Tanjungsari","320618");
INSERT INTO kelurahan VALUES("3206182007","Mandalaguna","320618");
INSERT INTO kelurahan VALUES("3206182008","Karyamandala","320618");
INSERT INTO kelurahan VALUES("3206182009","Banjarwaringin","320618");
INSERT INTO kelurahan VALUES("3206192001","Kaputihan","320619");
INSERT INTO kelurahan VALUES("3206192002","Setiawangi","320619");
INSERT INTO kelurahan VALUES("3206192003","Sukakerta","320619");
INSERT INTO kelurahan VALUES("3206192004","Neglasari","320619");
INSERT INTO kelurahan VALUES("3206192005","Jatiwaras","320619");
INSERT INTO kelurahan VALUES("3206192006","Papayan","320619");
INSERT INTO kelurahan VALUES("3206192007","Ciwarak","320619");
INSERT INTO kelurahan VALUES("3206192008","Kersagalih","320619");
INSERT INTO kelurahan VALUES("3206192009","Mandalamekar","320619");
INSERT INTO kelurahan VALUES("3206192010","Kertarahayu","320619");
INSERT INTO kelurahan VALUES("3206192011","Mandalahurip","320619");
INSERT INTO kelurahan VALUES("3206202001","Cisarua","320620");
INSERT INTO kelurahan VALUES("3206202002","Cikondang","320620");
INSERT INTO kelurahan VALUES("3206202003","Cijulang","320620");
INSERT INTO kelurahan VALUES("3206202004","Ciampanan","320620");
INSERT INTO kelurahan VALUES("3206202005","Cineam","320620");
INSERT INTO kelurahan VALUES("3206202006","Rajadatu","320620");
INSERT INTO kelurahan VALUES("3206202007","Ancol","320620");
INSERT INTO kelurahan VALUES("3206202008","Nagaratengah","320620");
INSERT INTO kelurahan VALUES("3206202009","Pasirmukti","320620");
INSERT INTO kelurahan VALUES("3206202010","Madiasari","320620");
INSERT INTO kelurahan VALUES("3206212001","Sirnajaya","320621");
INSERT INTO kelurahan VALUES("3206212002","Karang Jaya (Karangjaya)","320621");
INSERT INTO kelurahan VALUES("3206212003","Karanglayung","320621");
INSERT INTO kelurahan VALUES("3206212004","Citalahab","320621");
INSERT INTO kelurahan VALUES("3206222001","Cihaur","320622");
INSERT INTO kelurahan VALUES("3206222002","Cilangkap","320622");
INSERT INTO kelurahan VALUES("3206222003","Pasirpanjang","320622");
INSERT INTO kelurahan VALUES("3206222004","Cibeber","320622");
INSERT INTO kelurahan VALUES("3206222005","Kamulyan","320622");
INSERT INTO kelurahan VALUES("3206222006","Manonjaya","320622");
INSERT INTO kelurahan VALUES("3206222007","Margaluyu","320622");
INSERT INTO kelurahan VALUES("3206222008","Pasirbatang","320622");
INSERT INTO kelurahan VALUES("3206222009","Kalimanggis","320622");
INSERT INTO kelurahan VALUES("3206222010","Margahayu","320622");
INSERT INTO kelurahan VALUES("3206222011","Batusumur","320622");
INSERT INTO kelurahan VALUES("3206222012","Gunajaya","320622");
INSERT INTO kelurahan VALUES("3206232001","Cinunjang","320623");
INSERT INTO kelurahan VALUES("3206232002","Gunungtanjung (Gunung Tanjung)","320623");
INSERT INTO kelurahan VALUES("3206232003","Bojongsari","320623");
INSERT INTO kelurahan VALUES("3206232004","Jatijaya","320623");
INSERT INTO kelurahan VALUES("3206232005","Tanjungsari","320623");
INSERT INTO kelurahan VALUES("3206232006","Giriwangi","320623");
INSERT INTO kelurahan VALUES("3206232007","Malatisuka","320623");
INSERT INTO kelurahan VALUES("3206242001","Cikunten","320624");
INSERT INTO kelurahan VALUES("3206242002","Singaparna","320624");
INSERT INTO kelurahan VALUES("3206242003","Cipakat","320624");
INSERT INTO kelurahan VALUES("3206242004","Cintaraja","320624");
INSERT INTO kelurahan VALUES("3206242005","Cikunir","320624");
INSERT INTO kelurahan VALUES("3206242006","Cokadongdong (Cikadongdong)","320624");
INSERT INTO kelurahan VALUES("3206242007","Sukaasih","320624");
INSERT INTO kelurahan VALUES("3206242008","Sukamulya","320624");
INSERT INTO kelurahan VALUES("3206242009","Singasari","320624");
INSERT INTO kelurahan VALUES("3206242010","Sukaherang","320624");
INSERT INTO kelurahan VALUES("3206252001","Sukasukur","320625");
INSERT INTO kelurahan VALUES("3206252002","Salebu","320625");
INSERT INTO kelurahan VALUES("3206252003","Mangunreja","320625");
INSERT INTO kelurahan VALUES("3206252004","Margajaya","320625");
INSERT INTO kelurahan VALUES("3206252005","Pasirsalam","320625");
INSERT INTO kelurahan VALUES("3206252006","Sukaluyu","320625");
INSERT INTO kelurahan VALUES("3206262001","Sukarame","320626");
INSERT INTO kelurahan VALUES("3206262002","Sukamenak (Suka Menak)","320626");
INSERT INTO kelurahan VALUES("3206262003","Sukakarsa","320626");
INSERT INTO kelurahan VALUES("3206262004","Padasuka","320626");
INSERT INTO kelurahan VALUES("3206262005","Sukarapih","320626");
INSERT INTO kelurahan VALUES("3206262006","Wargakerta","320626");
INSERT INTO kelurahan VALUES("3206272001","Kersamaju","320627");
INSERT INTO kelurahan VALUES("3206272002","Nangtang","320627");
INSERT INTO kelurahan VALUES("3206272003","Pusparaja","320627");
INSERT INTO kelurahan VALUES("3206272004","Jayapura (Jayaputra)","320627");
INSERT INTO kelurahan VALUES("3206272005","Lengkongjaya","320627");
INSERT INTO kelurahan VALUES("3206272006","Nangerang (Nanggerang)","320627");
INSERT INTO kelurahan VALUES("3206272007","Sukamanah","320627");
INSERT INTO kelurahan VALUES("3206272008","Sirnaraja","320627");
INSERT INTO kelurahan VALUES("3206272009","Cidugaleun","320627");
INSERT INTO kelurahan VALUES("3206272010","Parentas","320627");
INSERT INTO kelurahan VALUES("3206272011","Puspamukti","320627");
INSERT INTO kelurahan VALUES("3206272012","Tenjonagara","320627");
INSERT INTO kelurahan VALUES("3206272013","Cigalontang","320627");
INSERT INTO kelurahan VALUES("3206272014","Sirnagalih","320627");
INSERT INTO kelurahan VALUES("3206272015","Tanjungkarang","320627");
INSERT INTO kelurahan VALUES("3206272016","Sirnaputra","320627");
INSERT INTO kelurahan VALUES("3206282001","Arjasari","320628");
INSERT INTO kelurahan VALUES("3206282002","Ciawang","320628");
INSERT INTO kelurahan VALUES("3206282003","Cigadog","320628");
INSERT INTO kelurahan VALUES("3206282004","Linggawangi","320628");
INSERT INTO kelurahan VALUES("3206282005","Jayamukti","320628");
INSERT INTO kelurahan VALUES("3206282006","Mandalagiri","320628");
INSERT INTO kelurahan VALUES("3206282007","Linggamulya","320628");
INSERT INTO kelurahan VALUES("3206292001","Cilampunghilir","320629");
INSERT INTO kelurahan VALUES("3206292002","Rancapaku","320629");
INSERT INTO kelurahan VALUES("3206292003","Mekarjaya","320629");
INSERT INTO kelurahan VALUES("3206292004","Cisaruni","320629");
INSERT INTO kelurahan VALUES("3206292005","Padakembang","320629");
INSERT INTO kelurahan VALUES("3206302001","Sariwangi","320630");
INSERT INTO kelurahan VALUES("3206302002","Sukaharja (Sukaraharja)","320630");
INSERT INTO kelurahan VALUES("3206302003","Jayaratu","320630");
INSERT INTO kelurahan VALUES("3206302004","Linggasirna","320630");
INSERT INTO kelurahan VALUES("3206302005","Sirnasari","320630");
INSERT INTO kelurahan VALUES("3206302006","Sukamulih","320630");
INSERT INTO kelurahan VALUES("3206302007","Selawangi","320630");
INSERT INTO kelurahan VALUES("3206302008","Jayaputra","320630");
INSERT INTO kelurahan VALUES("3206312001","Linggajati","320631");
INSERT INTO kelurahan VALUES("3206312002","Tawangbanteng","320631");
INSERT INTO kelurahan VALUES("3206312003","Sinagar","320631");
INSERT INTO kelurahan VALUES("3206312004","Gunungsari","320631");
INSERT INTO kelurahan VALUES("3206312005","Sukamahi","320631");
INSERT INTO kelurahan VALUES("3206312006","Sukagalih","320631");
INSERT INTO kelurahan VALUES("3206312007","Sukaratu","320631");
INSERT INTO kelurahan VALUES("3206312008","Indrajaya","320631");
INSERT INTO kelurahan VALUES("3206322001","Cisayong","320632");
INSERT INTO kelurahan VALUES("3206322002","Sukajadi","320632");
INSERT INTO kelurahan VALUES("3206322003","Sukasukur","320632");
INSERT INTO kelurahan VALUES("3206322004","Sukamukti","320632");
INSERT INTO kelurahan VALUES("3206322005","Nusawangi","320632");
INSERT INTO kelurahan VALUES("3206322006","Cikadu","320632");
INSERT INTO kelurahan VALUES("3206322007","Cileuleus","320632");
INSERT INTO kelurahan VALUES("3206322008","Jatihurip","320632");
INSERT INTO kelurahan VALUES("3206322009","Sukasetia","320632");
INSERT INTO kelurahan VALUES("3206322010","Purwasari","320632");
INSERT INTO kelurahan VALUES("3206322011","Sukaraharja","320632");
INSERT INTO kelurahan VALUES("3206322012","Mekarwangi","320632");
INSERT INTO kelurahan VALUES("3206322013","Santanamekar","320632");
INSERT INTO kelurahan VALUES("3206332001","Banyurasa","320633");
INSERT INTO kelurahan VALUES("3206332002","Calincing (Calingcing)","320633");
INSERT INTO kelurahan VALUES("3206332003","Sukahening","320633");
INSERT INTO kelurahan VALUES("3206332004","Kiarajangkung","320633");
INSERT INTO kelurahan VALUES("3206332005","Kudadepa","320633");
INSERT INTO kelurahan VALUES("3206332006","Banyuresmi","320633");
INSERT INTO kelurahan VALUES("3206332007","Sundakerta","320633");
INSERT INTO kelurahan VALUES("3206342001","Dawagung","320634");
INSERT INTO kelurahan VALUES("3206342002","Rajapolah","320634");
INSERT INTO kelurahan VALUES("3206342003","Manggungjaya","320634");
INSERT INTO kelurahan VALUES("3206342004","Manggungsari","320634");
INSERT INTO kelurahan VALUES("3206342005","Sukaraja","320634");
INSERT INTO kelurahan VALUES("3206342006","Rajamandala","320634");
INSERT INTO kelurahan VALUES("3206342007","Sukanagalih","320634");
INSERT INTO kelurahan VALUES("3206342008","Tanjungpura","320634");
INSERT INTO kelurahan VALUES("3206352001","Condong","320635");
INSERT INTO kelurahan VALUES("3206352002","Bojonggaok","320635");
INSERT INTO kelurahan VALUES("3206352003","Sindangraja","320635");
INSERT INTO kelurahan VALUES("3206352004","Karangmulya","320635");
INSERT INTO kelurahan VALUES("3206352005","Geresik","320635");
INSERT INTO kelurahan VALUES("3206352006","Karangsembung","320635");
INSERT INTO kelurahan VALUES("3206352007","Tanjungmekar","320635");
INSERT INTO kelurahan VALUES("3206352008","Karangresik","320635");
INSERT INTO kelurahan VALUES("3206362001","Gombong","320636");
INSERT INTO kelurahan VALUES("3206362002","Bugel","320636");
INSERT INTO kelurahan VALUES("3206362003","Margasari","320636");
INSERT INTO kelurahan VALUES("3206362004","Pakemitan","320636");
INSERT INTO kelurahan VALUES("3206362005","Ciawi","320636");
INSERT INTO kelurahan VALUES("3206362006","Sukamantri","320636");
INSERT INTO kelurahan VALUES("3206362007","Pasirhuni","320636");
INSERT INTO kelurahan VALUES("3206362008","Citamba","320636");
INSERT INTO kelurahan VALUES("3206362009","Kertamukti","320636");
INSERT INTO kelurahan VALUES("3206362010","Kurniabakti","320636");
INSERT INTO kelurahan VALUES("3206362011","Pakamitankidul (Pakemitankidul)","320636");
INSERT INTO kelurahan VALUES("3206372001","Kadipaten","320637");
INSERT INTO kelurahan VALUES("3206372002","Dirgahayu","320637");
INSERT INTO kelurahan VALUES("3206372003","Cibahayu","320637");
INSERT INTO kelurahan VALUES("3206372004","Mekarsari","320637");
INSERT INTO kelurahan VALUES("3206372005","Buniasih","320637");
INSERT INTO kelurahan VALUES("3206372006","Pamoyanan","320637");
INSERT INTO kelurahan VALUES("3206382001","Cipacing","320638");
INSERT INTO kelurahan VALUES("3206382002","Pagerageung","320638");
INSERT INTO kelurahan VALUES("3206382003","Sukamaju","320638");
INSERT INTO kelurahan VALUES("3206382004","Tanjungkerta","320638");
INSERT INTO kelurahan VALUES("3206382005","Puteran","320638");
INSERT INTO kelurahan VALUES("3206382006","Guranteng","320638");
INSERT INTO kelurahan VALUES("3206382007","Nanggewer","320638");
INSERT INTO kelurahan VALUES("3206382008","Sukapada","320638");
INSERT INTO kelurahan VALUES("3206382009","Pagersari","320638");
INSERT INTO kelurahan VALUES("3206382010","Sukadana","320638");
INSERT INTO kelurahan VALUES("3206392001","Cipondok","320639");
INSERT INTO kelurahan VALUES("3206392002","Sukamenak","320639");
INSERT INTO kelurahan VALUES("3206392003","Sukaratu","320639");
INSERT INTO kelurahan VALUES("3206392004","Banjarsari","320639");
INSERT INTO kelurahan VALUES("3206392005","Tanjungsari","320639");
INSERT INTO kelurahan VALUES("3206392006","Sukapancar","320639");
INSERT INTO kelurahan VALUES("3206392007","Sukaresik","320639");
INSERT INTO kelurahan VALUES("3206392008","Margamulya","320639");
INSERT INTO kelurahan VALUES("3207011001","Ciamis","320701");
INSERT INTO kelurahan VALUES("3207011002","Kertasari","320701");
INSERT INTO kelurahan VALUES("3207011003","Maleber","320701");
INSERT INTO kelurahan VALUES("3207011004","Cigembor","320701");
INSERT INTO kelurahan VALUES("3207011005","Benteng","320701");
INSERT INTO kelurahan VALUES("3207011006","Linggasari","320701");
INSERT INTO kelurahan VALUES("3207011007","Sindangrasa","320701");
INSERT INTO kelurahan VALUES("3207012008","Pawindan","320701");
INSERT INTO kelurahan VALUES("3207012009","Cisadap","320701");
INSERT INTO kelurahan VALUES("3207012010","Imbanagara","320701");
INSERT INTO kelurahan VALUES("3207012011","Imbanagara Raya","320701");
INSERT INTO kelurahan VALUES("3207012012","Panyingkiran","320701");
INSERT INTO kelurahan VALUES("3207022001","Cikoneng","320702");
INSERT INTO kelurahan VALUES("3207022002","Margaluyu","320702");
INSERT INTO kelurahan VALUES("3207022003","Sindangsari","320702");
INSERT INTO kelurahan VALUES("3207022011","Panaragan","320702");
INSERT INTO kelurahan VALUES("3207022012","Darmacaang","320702");
INSERT INTO kelurahan VALUES("3207022013","Kujang","320702");
INSERT INTO kelurahan VALUES("3207022014","Nasol","320702");
INSERT INTO kelurahan VALUES("3207022016","Cimari","320702");
INSERT INTO kelurahan VALUES("3207022017","Gegempalan","320702");
INSERT INTO kelurahan VALUES("3207032001","Handapherang","320703");
INSERT INTO kelurahan VALUES("3207032002","Ciharalang","320703");
INSERT INTO kelurahan VALUES("3207032003","Bojongmengger","320703");
INSERT INTO kelurahan VALUES("3207032004","Karangkamulyan","320703");
INSERT INTO kelurahan VALUES("3207032005","Kertabumi","320703");
INSERT INTO kelurahan VALUES("3207032006","Cijeungjing","320703");
INSERT INTO kelurahan VALUES("3207032007","Pamalayan","320703");
INSERT INTO kelurahan VALUES("3207032008","Dewasari","320703");
INSERT INTO kelurahan VALUES("3207032009","Utama","320703");
INSERT INTO kelurahan VALUES("3207032010","Kertaharja","320703");
INSERT INTO kelurahan VALUES("3207032011","Karanganyar","320703");
INSERT INTO kelurahan VALUES("3207042001","Gunungsari","320704");
INSERT INTO kelurahan VALUES("3207042002","Sadananya","320704");
INSERT INTO kelurahan VALUES("3207042003","Werasari","320704");
INSERT INTO kelurahan VALUES("3207042004","Mangkubumi","320704");
INSERT INTO kelurahan VALUES("3207042005","Tanjungsari","320704");
INSERT INTO kelurahan VALUES("3207042006","Bendasari","320704");
INSERT INTO kelurahan VALUES("3207042007","Sukajadi","320704");
INSERT INTO kelurahan VALUES("3207042008","Mekarjadi","320704");
INSERT INTO kelurahan VALUES("3207052001","Cidolog","320705");
INSERT INTO kelurahan VALUES("3207052002","Janggala","320705");
INSERT INTO kelurahan VALUES("3207052003","Hegarmanah","320705");
INSERT INTO kelurahan VALUES("3207052004","Jelegong","320705");
INSERT INTO kelurahan VALUES("3207052005","Ciparay","320705");
INSERT INTO kelurahan VALUES("3207052006","Sukasari","320705");
INSERT INTO kelurahan VALUES("3207062001","Sukamulya","320706");
INSERT INTO kelurahan VALUES("3207062002","Sukahurip","320706");
INSERT INTO kelurahan VALUES("3207062003","Cijulang","320706");
INSERT INTO kelurahan VALUES("3207062004","Sukamaju","320706");
INSERT INTO kelurahan VALUES("3207062005","Sukasetia","320706");
INSERT INTO kelurahan VALUES("3207062006","Sumberjaya","320706");
INSERT INTO kelurahan VALUES("3207062007","Cihaurbeuti","320706");
INSERT INTO kelurahan VALUES("3207062008","Pasirtamiang","320706");
INSERT INTO kelurahan VALUES("3207062009","Padamulya","320706");
INSERT INTO kelurahan VALUES("3207062010","Pamokolan","320706");
INSERT INTO kelurahan VALUES("3207062011","Sukahaji","320706");
INSERT INTO kelurahan VALUES("3207072001","Medanglayang","320707");
INSERT INTO kelurahan VALUES("3207072002","Panumbangan","320707");
INSERT INTO kelurahan VALUES("3207072003","Sukakerta","320707");
INSERT INTO kelurahan VALUES("3207072004","Golat","320707");
INSERT INTO kelurahan VALUES("3207072005","Sindangherang","320707");
INSERT INTO kelurahan VALUES("3207072006","Banjarangsana","320707");
INSERT INTO kelurahan VALUES("3207072007","Payungagung","320707");
INSERT INTO kelurahan VALUES("3207072008","Tanjungmulya","320707");
INSERT INTO kelurahan VALUES("3207072009","Payungsari","320707");
INSERT INTO kelurahan VALUES("3207072010","Jayagiri","320707");
INSERT INTO kelurahan VALUES("3207072011","Kertaraharja","320707");
INSERT INTO kelurahan VALUES("3207072012","Sindangmukti","320707");
INSERT INTO kelurahan VALUES("3207072013","Sindangbarang","320707");
INSERT INTO kelurahan VALUES("3207072014","Buanamekar","320707");
INSERT INTO kelurahan VALUES("3207082001","Panjalu","320708");
INSERT INTO kelurahan VALUES("3207082002","Kertamandala","320708");
INSERT INTO kelurahan VALUES("3207082003","Ciomas","320708");
INSERT INTO kelurahan VALUES("3207082004","Sandingtaman","320708");
INSERT INTO kelurahan VALUES("3207082005","Maparah","320708");
INSERT INTO kelurahan VALUES("3207082009","Bahara","320708");
INSERT INTO kelurahan VALUES("3207082012","Hujungtiwu","320708");
INSERT INTO kelurahan VALUES("3207082013","Mandalare","320708");
INSERT INTO kelurahan VALUES("3207092001","Kawali","320709");
INSERT INTO kelurahan VALUES("3207092002","Talagasari","320709");
INSERT INTO kelurahan VALUES("3207092004","Karangpawitan","320709");
INSERT INTO kelurahan VALUES("3207092005","Winduraja","320709");
INSERT INTO kelurahan VALUES("3207092006","Margamulya","320709");
INSERT INTO kelurahan VALUES("3207092011","Citeureup","320709");
INSERT INTO kelurahan VALUES("3207092013","Purwasari","320709");
INSERT INTO kelurahan VALUES("3207092014","Sindangsari","320709");
INSERT INTO kelurahan VALUES("3207092015","Kawalimukti","320709");
INSERT INTO kelurahan VALUES("3207092016","Selasari","320709");
INSERT INTO kelurahan VALUES("3207092019","Linggapura","320709");
INSERT INTO kelurahan VALUES("3207102001","Panawangan","320710");
INSERT INTO kelurahan VALUES("3207102002","Sagalaherang","320710");
INSERT INTO kelurahan VALUES("3207102003","Nagarapageuh","320710");
INSERT INTO kelurahan VALUES("3207102004","Nagarajati","320710");
INSERT INTO kelurahan VALUES("3207102005","Nagarajaya","320710");
INSERT INTO kelurahan VALUES("3207102006","Kertayasa","320710");
INSERT INTO kelurahan VALUES("3207102007","Indragiri","320710");
INSERT INTO kelurahan VALUES("3207102008","Cinyasag","320710");
INSERT INTO kelurahan VALUES("3207102009","Sadapaingan","320710");
INSERT INTO kelurahan VALUES("3207102010","Jagabaya","320710");
INSERT INTO kelurahan VALUES("3207102011","Gardujaya","320710");
INSERT INTO kelurahan VALUES("3207102012","Karangpaningal","320710");
INSERT INTO kelurahan VALUES("3207102013","Bangunjaya","320710");
INSERT INTO kelurahan VALUES("3207102014","Girilaya","320710");
INSERT INTO kelurahan VALUES("3207102015","Kertajaya","320710");
INSERT INTO kelurahan VALUES("3207102016","Nagarawangi","320710");
INSERT INTO kelurahan VALUES("3207102017","Mekarbuana","320710");
INSERT INTO kelurahan VALUES("3207102018","Natanegara","320710");
INSERT INTO kelurahan VALUES("3207112001","Buniseuri","320711");
INSERT INTO kelurahan VALUES("3207112002","Selacai","320711");
INSERT INTO kelurahan VALUES("3207112003","Jalatrang","320711");
INSERT INTO kelurahan VALUES("3207112004","Cipaku","320711");
INSERT INTO kelurahan VALUES("3207112005","Cieurih","320711");
INSERT INTO kelurahan VALUES("3207112006","Gereba","320711");
INSERT INTO kelurahan VALUES("3207112007","Muktisari","320711");
INSERT INTO kelurahan VALUES("3207112008","Mekarsari","320711");
INSERT INTO kelurahan VALUES("3207112009","Pusakasari","320711");
INSERT INTO kelurahan VALUES("3207112010","Bangbayang","320711");
INSERT INTO kelurahan VALUES("3207112011","Selamanik","320711");
INSERT INTO kelurahan VALUES("3207112012","Ciakar","320711");
INSERT INTO kelurahan VALUES("3207112013","Sukawening","320711");
INSERT INTO kelurahan VALUES("3207122001","Jatinagara","320712");
INSERT INTO kelurahan VALUES("3207122002","Sukanagara","320712");
INSERT INTO kelurahan VALUES("3207122003","Cintanagara","320712");
INSERT INTO kelurahan VALUES("3207122004","Dayeuhluhur","320712");
INSERT INTO kelurahan VALUES("3207122005","Mulyasari","320712");
INSERT INTO kelurahan VALUES("3207122006","Bayasari","320712");
INSERT INTO kelurahan VALUES("3207132001","Rajadesa","320713");
INSERT INTO kelurahan VALUES("3207132002","Tanjungsukur","320713");
INSERT INTO kelurahan VALUES("3207132003","Tanjungsari","320713");
INSERT INTO kelurahan VALUES("3207132004","Tanjungjaya","320713");
INSERT INTO kelurahan VALUES("3207132005","Andapraja","320713");
INSERT INTO kelurahan VALUES("3207132006","Sukaharja","320713");
INSERT INTO kelurahan VALUES("3207132007","Sukajaya","320713");
INSERT INTO kelurahan VALUES("3207132008","Tigaherang","320713");
INSERT INTO kelurahan VALUES("3207132009","Sirnabaya","320713");
INSERT INTO kelurahan VALUES("3207132010","Sirnajaya","320713");
INSERT INTO kelurahan VALUES("3207132011","Purwaraja","320713");
INSERT INTO kelurahan VALUES("3207142001","Sukadana","320714");
INSERT INTO kelurahan VALUES("3207142002","Salakaria","320714");
INSERT INTO kelurahan VALUES("3207142003","Margaharja","320714");
INSERT INTO kelurahan VALUES("3207142004","Margajaya","320714");
INSERT INTO kelurahan VALUES("3207142005","Bunter","320714");
INSERT INTO kelurahan VALUES("3207142006","Ciparigi","320714");
INSERT INTO kelurahan VALUES("3207152001","Rancah","320715");
INSERT INTO kelurahan VALUES("3207152002","Kiarapayung","320715");
INSERT INTO kelurahan VALUES("3207152003","Cileungsir","320715");
INSERT INTO kelurahan VALUES("3207152004","Cisontrol","320715");
INSERT INTO kelurahan VALUES("3207152005","Situmandala","320715");
INSERT INTO kelurahan VALUES("3207152006","Kawunglarang","320715");
INSERT INTO kelurahan VALUES("3207152007","Patakaharja","320715");
INSERT INTO kelurahan VALUES("3207152008","Bojonggedang","320715");
INSERT INTO kelurahan VALUES("3207152009","Karangpari","320715");
INSERT INTO kelurahan VALUES("3207152010","Dadiharja","320715");
INSERT INTO kelurahan VALUES("3207152011","Jangalaharja","320715");
INSERT INTO kelurahan VALUES("3207152012","Giriharja","320715");
INSERT INTO kelurahan VALUES("3207152013","Wangunsari","320715");
INSERT INTO kelurahan VALUES("3207162001","Tambaksari","320716");
INSERT INTO kelurahan VALUES("3207162002","Mekarsari","320716");
INSERT INTO kelurahan VALUES("3207162003","Kaso","320716");
INSERT INTO kelurahan VALUES("3207162004","Kadupandak","320716");
INSERT INTO kelurahan VALUES("3207162005","Sukasari","320716");
INSERT INTO kelurahan VALUES("3207162006","Karangpaningal","320716");
INSERT INTO kelurahan VALUES("3207172006","Sidaharja","320717");
INSERT INTO kelurahan VALUES("3207172007","Kertajaya","320717");
INSERT INTO kelurahan VALUES("3207172009","Sukanagara","320717");
INSERT INTO kelurahan VALUES("3207172010","Cintajaya","320717");
INSERT INTO kelurahan VALUES("3207172011","Cintaratu","320717");
INSERT INTO kelurahan VALUES("3207172012","Sindangangin","320717");
INSERT INTO kelurahan VALUES("3207172013","Tambakreja","320717");
INSERT INTO kelurahan VALUES("3207172017","Baregbeg","320717");
INSERT INTO kelurahan VALUES("3207172018","Kalapasawit","320717");
INSERT INTO kelurahan VALUES("3207172019","Puloerang","320717");
INSERT INTO kelurahan VALUES("3207182005","Kawasen","320718");
INSERT INTO kelurahan VALUES("3207182006","Cicapar","320718");
INSERT INTO kelurahan VALUES("3207182007","Cibadak","320718");
INSERT INTO kelurahan VALUES("3207182008","Banjarsari","320718");
INSERT INTO kelurahan VALUES("3207182009","Sindanghayu","320718");
INSERT INTO kelurahan VALUES("3207182010","Sindangasih","320718");
INSERT INTO kelurahan VALUES("3207182012","Sindangsari","320718");
INSERT INTO kelurahan VALUES("3207182013","Ciherang","320718");
INSERT INTO kelurahan VALUES("3207182014","Purwasari","320718");
INSERT INTO kelurahan VALUES("3207182015","Ratawangi","320718");
INSERT INTO kelurahan VALUES("3207182016","Ciulu","320718");
INSERT INTO kelurahan VALUES("3207182018","Sukasari","320718");
INSERT INTO kelurahan VALUES("3207192001","Pamarican","320719");
INSERT INTO kelurahan VALUES("3207192002","Sidamulih","320719");
INSERT INTO kelurahan VALUES("3207192003","Kertahayu","320719");
INSERT INTO kelurahan VALUES("3207192004","Sukamukti","320719");
INSERT INTO kelurahan VALUES("3207192005","Bangunsari","320719");
INSERT INTO kelurahan VALUES("3207192006","Neglasari","320719");
INSERT INTO kelurahan VALUES("3207192007","Bantarsari","320719");
INSERT INTO kelurahan VALUES("3207192008","Margajaya","320719");
INSERT INTO kelurahan VALUES("3207192009","Sukajaya","320719");
INSERT INTO kelurahan VALUES("3207192010","Sukahurip","320719");
INSERT INTO kelurahan VALUES("3207192011","Sukajadi","320719");
INSERT INTO kelurahan VALUES("3207192012","Sidaharja","320719");
INSERT INTO kelurahan VALUES("3207192013","Pasirnagara","320719");
INSERT INTO kelurahan VALUES("3207192014","Mekarmulya","320719");
INSERT INTO kelurahan VALUES("3207292001","Cimaragas","320729");
INSERT INTO kelurahan VALUES("3207292002","Beber","320729");
INSERT INTO kelurahan VALUES("3207292003","Raksabaya","320729");
INSERT INTO kelurahan VALUES("3207292004","Bojongmalang","320729");
INSERT INTO kelurahan VALUES("3207292005","Jayaraksa","320729");
INSERT INTO kelurahan VALUES("3207302001","Cisaga","320730");
INSERT INTO kelurahan VALUES("3207302002","Sidamulya","320730");
INSERT INTO kelurahan VALUES("3207302003","Kepel","320730");
INSERT INTO kelurahan VALUES("3207302004","Wangunjaya","320730");
INSERT INTO kelurahan VALUES("3207302005","Sukahurip","320730");
INSERT INTO kelurahan VALUES("3207302006","Bangunharja","320730");
INSERT INTO kelurahan VALUES("3207302007","Tanjungjaya","320730");
INSERT INTO kelurahan VALUES("3207302008","Mekarmukti","320730");
INSERT INTO kelurahan VALUES("3207302009","Danasari","320730");
INSERT INTO kelurahan VALUES("3207302010","Girimukti","320730");
INSERT INTO kelurahan VALUES("3207302011","Karyamulya","320730");
INSERT INTO kelurahan VALUES("3207312001","Sindangkasih","320731");
INSERT INTO kelurahan VALUES("3207312002","Gunungcupu","320731");
INSERT INTO kelurahan VALUES("3207312003","Budiasih","320731");
INSERT INTO kelurahan VALUES("3207312004","Budiharja","320731");
INSERT INTO kelurahan VALUES("3207312005","Sukaraja","320731");
INSERT INTO kelurahan VALUES("3207312006","Sukamanah","320731");
INSERT INTO kelurahan VALUES("3207312007","Sukasenang","320731");
INSERT INTO kelurahan VALUES("3207312008","Sukaresik","320731");
INSERT INTO kelurahan VALUES("3207312009","Wanasigra","320731");
INSERT INTO kelurahan VALUES("3207322001","Baregbeg","320732");
INSERT INTO kelurahan VALUES("3207322002","Sukamaju","320732");
INSERT INTO kelurahan VALUES("3207322003","Mekarjaya","320732");
INSERT INTO kelurahan VALUES("3207322004","Saguling","320732");
INSERT INTO kelurahan VALUES("3207322005","Petirhilir","320732");
INSERT INTO kelurahan VALUES("3207322006","Pusakanagara","320732");
INSERT INTO kelurahan VALUES("3207322007","Jelat","320732");
INSERT INTO kelurahan VALUES("3207322008","Karangampel","320732");
INSERT INTO kelurahan VALUES("3207322009","Sukamulya","320732");
INSERT INTO kelurahan VALUES("3207332001","Sukamantri","320733");
INSERT INTO kelurahan VALUES("3207332002","Tenggerraharja","320733");
INSERT INTO kelurahan VALUES("3207332003","Cibeureum","320733");
INSERT INTO kelurahan VALUES("3207332004","Sindanglaya","320733");
INSERT INTO kelurahan VALUES("3207332005","Mekarwangi","320733");
INSERT INTO kelurahan VALUES("3207342001","Cikupa","320734");
INSERT INTO kelurahan VALUES("3207342002","Sukaraharja","320734");
INSERT INTO kelurahan VALUES("3207342003","Lumbung","320734");
INSERT INTO kelurahan VALUES("3207342004","Lumbungsari","320734");
INSERT INTO kelurahan VALUES("3207342005","Awiluar","320734");
INSERT INTO kelurahan VALUES("3207342006","Darmaraja","320734");
INSERT INTO kelurahan VALUES("3207342007","Rawa","320734");
INSERT INTO kelurahan VALUES("3207342008","Sadewata","320734");
INSERT INTO kelurahan VALUES("3207352001","Bantardawa","320735");
INSERT INTO kelurahan VALUES("3207352002","Purwadadi","320735");
INSERT INTO kelurahan VALUES("3207352003","Purwajaya","320735");
INSERT INTO kelurahan VALUES("3207352004","Karangpaningal","320735");
INSERT INTO kelurahan VALUES("3207352005","Sidarahayu","320735");
INSERT INTO kelurahan VALUES("3207352006","Padaringan","320735");
INSERT INTO kelurahan VALUES("3207352007","Pasirlawang","320735");
INSERT INTO kelurahan VALUES("3207352008","Kutawaringin","320735");
INSERT INTO kelurahan VALUES("3207352009","Sukamulya","320735");
INSERT INTO kelurahan VALUES("3207372001","Pasawahan","320737");
INSERT INTO kelurahan VALUES("3207372002","Banjaranyar","320737");
INSERT INTO kelurahan VALUES("3207372003","Cigayam","320737");
INSERT INTO kelurahan VALUES("3207372004","Langkapsari","320737");
INSERT INTO kelurahan VALUES("3207372005","Kalijaya","320737");
INSERT INTO kelurahan VALUES("3207372006","Sindangrasa","320737");
INSERT INTO kelurahan VALUES("3207372007","Cikaso","320737");
INSERT INTO kelurahan VALUES("3207372008","Cikupa","320737");
INSERT INTO kelurahan VALUES("3207372009","Karyamukti","320737");
INSERT INTO kelurahan VALUES("3207372010","Tanjungsari (Tanjungasari)","320737");
INSERT INTO kelurahan VALUES("3208012001","Sindangjawa","320801");
INSERT INTO kelurahan VALUES("3208012002","Ciketak","320801");
INSERT INTO kelurahan VALUES("3208012003","Nangka","320801");
INSERT INTO kelurahan VALUES("3208012004","Windujanten","320801");
INSERT INTO kelurahan VALUES("3208012005","Kadugede","320801");
INSERT INTO kelurahan VALUES("3208012006","Babatan","320801");
INSERT INTO kelurahan VALUES("3208012007","Cipondok","320801");
INSERT INTO kelurahan VALUES("3208012008","Bayuning","320801");
INSERT INTO kelurahan VALUES("3208012009","Tinggar","320801");
INSERT INTO kelurahan VALUES("3208012010","Ciherang","320801");
INSERT INTO kelurahan VALUES("3208012011","Cisukadana","320801");
INSERT INTO kelurahan VALUES("3208012012","Margabakti","320801");
INSERT INTO kelurahan VALUES("3208022001","Pinara","320802");
INSERT INTO kelurahan VALUES("3208022002","Cijeumit (Cijemit)","320802");
INSERT INTO kelurahan VALUES("3208022003","Cipedes","320802");
INSERT INTO kelurahan VALUES("3208022004","Ciniru","320802");
INSERT INTO kelurahan VALUES("3208022005","Rambatan","320802");
INSERT INTO kelurahan VALUES("3208022006","Longkewang","320802");
INSERT INTO kelurahan VALUES("3208022007","Mungkaldatar","320802");
INSERT INTO kelurahan VALUES("3208022008","Gunungmanik","320802");
INSERT INTO kelurahan VALUES("3208022009","Pamupukan","320802");
INSERT INTO kelurahan VALUES("3208032001","Tangkolo","320803");
INSERT INTO kelurahan VALUES("3208032002","Pamulihan","320803");
INSERT INTO kelurahan VALUES("3208032003","Subang","320803");
INSERT INTO kelurahan VALUES("3208032004","Gunungaci","320803");
INSERT INTO kelurahan VALUES("3208032005","Situgede","320803");
INSERT INTO kelurahan VALUES("3208032006","Bangunjaya","320803");
INSERT INTO kelurahan VALUES("3208032007","Jatisari","320803");
INSERT INTO kelurahan VALUES("3208042001","Sumberjaya","320804");
INSERT INTO kelurahan VALUES("3208042002","Cilayung","320804");
INSERT INTO kelurahan VALUES("3208042003","Ciwaru","320804");
INSERT INTO kelurahan VALUES("3208042004","Garajati","320804");
INSERT INTO kelurahan VALUES("3208042005","Baok","320804");
INSERT INTO kelurahan VALUES("3208042006","Andamui","320804");
INSERT INTO kelurahan VALUES("3208042007","Sagaranten","320804");
INSERT INTO kelurahan VALUES("3208042008","Citundun","320804");
INSERT INTO kelurahan VALUES("3208042009","Lebakherang","320804");
INSERT INTO kelurahan VALUES("3208042010","Karangbaru","320804");
INSERT INTO kelurahan VALUES("3208042011","Linggajaya","320804");
INSERT INTO kelurahan VALUES("3208042012","Citikur","320804");
INSERT INTO kelurahan VALUES("3208052001","Cipondoh (Cipondok)","320805");
INSERT INTO kelurahan VALUES("3208052002","Sindangjawa","320805");
INSERT INTO kelurahan VALUES("3208052003","Ciangir","320805");
INSERT INTO kelurahan VALUES("3208052004","Cibingbin","320805");
INSERT INTO kelurahan VALUES("3208052005","Citenjo","320805");
INSERT INTO kelurahan VALUES("3208052006","Dukuhbadag","320805");
INSERT INTO kelurahan VALUES("3208052007","Bantarpanjang","320805");
INSERT INTO kelurahan VALUES("3208052008","Sukamaju","320805");
INSERT INTO kelurahan VALUES("3208052009","Sukaharja","320805");
INSERT INTO kelurahan VALUES("3208052010","Cisaat","320805");
INSERT INTO kelurahan VALUES("3208062001","Dukuhpicung","320806");
INSERT INTO kelurahan VALUES("3208062002","Walaharcageur","320806");
INSERT INTO kelurahan VALUES("3208062003","Wilanagara","320806");
INSERT INTO kelurahan VALUES("3208062004","Cigedang","320806");
INSERT INTO kelurahan VALUES("3208062005","Luragung Tonggoh (Luragungtonggoh)","320806");
INSERT INTO kelurahan VALUES("3208062006","Sindangsari","320806");
INSERT INTO kelurahan VALUES("3208062007","Cirahayu","320806");
INSERT INTO kelurahan VALUES("3208062008","Margasari","320806");
INSERT INTO kelurahan VALUES("3208062009","Sindangsuka","320806");
INSERT INTO kelurahan VALUES("3208062010","Cikandang","320806");
INSERT INTO kelurahan VALUES("3208062011","Panyosogan","320806");
INSERT INTO kelurahan VALUES("3208062012","Gunungkarung","320806");
INSERT INTO kelurahan VALUES("3208062013","Luragung Landeuh (Luragunglandeuh)","320806");
INSERT INTO kelurahan VALUES("3208062014","Dukuhmaja","320806");
INSERT INTO kelurahan VALUES("3208062015","Benda","320806");
INSERT INTO kelurahan VALUES("3208062016","Cikaduwetan","320806");
INSERT INTO kelurahan VALUES("3208072010","Langseb","320807");
INSERT INTO kelurahan VALUES("3208072011","Cinagara","320807");
INSERT INTO kelurahan VALUES("3208072012","Cineubeuy/Cineumbeuy","320807");
INSERT INTO kelurahan VALUES("3208072013","Cipeutir/Cipetir","320807");
INSERT INTO kelurahan VALUES("3208072014","Lebakwangi","320807");
INSERT INTO kelurahan VALUES("3208072015","Mancagar","320807");
INSERT INTO kelurahan VALUES("3208072016","Bendungan","320807");
INSERT INTO kelurahan VALUES("3208072017","Sindang","320807");
INSERT INTO kelurahan VALUES("3208072018","Pasayangan","320807");
INSERT INTO kelurahan VALUES("3208072019","Pajawankidul","320807");
INSERT INTO kelurahan VALUES("3208072020","Pagundan","320807");
INSERT INTO kelurahan VALUES("3208072021","Mekarwangi","320807");
INSERT INTO kelurahan VALUES("3208072025","Manggari","320807");
INSERT INTO kelurahan VALUES("3208082001","Gewok","320808");
INSERT INTO kelurahan VALUES("3208082002","Cirukem","320808");
INSERT INTO kelurahan VALUES("3208082003","Pakembangan","320808");
INSERT INTO kelurahan VALUES("3208082004","Sukaimut","320808");
INSERT INTO kelurahan VALUES("3208082005","Cikananga","320808");
INSERT INTO kelurahan VALUES("3208082006","Tambakbaya","320808");
INSERT INTO kelurahan VALUES("3208082007","Garawangi","320808");
INSERT INTO kelurahan VALUES("3208082008","Sukamulya","320808");
INSERT INTO kelurahan VALUES("3208082009","Mancagar","320808");
INSERT INTO kelurahan VALUES("3208082010","Purwasari","320808");
INSERT INTO kelurahan VALUES("3208082011","Lengkong","320808");
INSERT INTO kelurahan VALUES("3208082023","Karamatwangi","320808");
INSERT INTO kelurahan VALUES("3208082024","Citiusari","320808");
INSERT INTO kelurahan VALUES("3208082026","Mekarmulya","320808");
INSERT INTO kelurahan VALUES("3208082027","Tembong","320808");
INSERT INTO kelurahan VALUES("3208082028","Kutakembaran","320808");
INSERT INTO kelurahan VALUES("3208082029","Kadatuan","320808");
INSERT INTO kelurahan VALUES("3208091001","Citangtu","320809");
INSERT INTO kelurahan VALUES("3208091002","Kuningan","320809");
INSERT INTO kelurahan VALUES("3208091003","Winduhaji","320809");
INSERT INTO kelurahan VALUES("3208091004","Windusengkahan","320809");
INSERT INTO kelurahan VALUES("3208091005","Cijoho","320809");
INSERT INTO kelurahan VALUES("3208091006","Purwawinangun","320809");
INSERT INTO kelurahan VALUES("3208091007","Cigintung","320809");
INSERT INTO kelurahan VALUES("3208091008","Cirendang","320809");
INSERT INTO kelurahan VALUES("3208091009","Ciporang","320809");
INSERT INTO kelurahan VALUES("3208091010","Awirarangan","320809");
INSERT INTO kelurahan VALUES("3208092011","Cibinuang","320809");
INSERT INTO kelurahan VALUES("3208092012","Karangtawang","320809");
INSERT INTO kelurahan VALUES("3208092013","Kedungarum","320809");
INSERT INTO kelurahan VALUES("3208092014","Ancaran","320809");
INSERT INTO kelurahan VALUES("3208092015","Kasturi","320809");
INSERT INTO kelurahan VALUES("3208092016","Padarek","320809");
INSERT INTO kelurahan VALUES("3208102001","Geresik","320810");
INSERT INTO kelurahan VALUES("3208102002","Kadurama","320810");
INSERT INTO kelurahan VALUES("3208102003","Ciawigebang","320810");
INSERT INTO kelurahan VALUES("3208102004","Lebaksiuh","320810");
INSERT INTO kelurahan VALUES("3208102005","Ciputat","320810");
INSERT INTO kelurahan VALUES("3208102006","Pajawan Lor (Pajawanlor)","320810");
INSERT INTO kelurahan VALUES("3208102007","Sidaraja","320810");
INSERT INTO kelurahan VALUES("3208102008","Kapandayan","320810");
INSERT INTO kelurahan VALUES("3208102009","Pangkalan","320810");
INSERT INTO kelurahan VALUES("3208102010","Ciomas","320810");
INSERT INTO kelurahan VALUES("3208102011","Sukaraja","320810");
INSERT INTO kelurahan VALUES("3208102012","Cihaur","320810");
INSERT INTO kelurahan VALUES("3208102013","Ciawi Lor (Ciawilor)","320810");
INSERT INTO kelurahan VALUES("3208102014","Cigarukgak","320810");
INSERT INTO kelurahan VALUES("3208102015","Sukadana","320810");
INSERT INTO kelurahan VALUES("3208102016","Cihirup","320810");
INSERT INTO kelurahan VALUES("3208102017","Karamatmulya (Keramatmulya)","320810");
INSERT INTO kelurahan VALUES("3208102018","Pamijahan","320810");
INSERT INTO kelurahan VALUES("3208102019","Karangkamulyan","320810");
INSERT INTO kelurahan VALUES("3208102020","Padarama","320810");
INSERT INTO kelurahan VALUES("3208102021","Cikubangmulya","320810");
INSERT INTO kelurahan VALUES("3208102022","Dukuhdalem","320810");
INSERT INTO kelurahan VALUES("3208102023","Mekarjaya","320810");
INSERT INTO kelurahan VALUES("3208102024","Cijagamulya","320810");
INSERT INTO kelurahan VALUES("3208112001","Cihideung Girang (Cihideunggirang)","320811");
INSERT INTO kelurahan VALUES("3208112002","Cihideung Hilir (Cihideunghilir)","320811");
INSERT INTO kelurahan VALUES("3208112003","Cidahu","320811");
INSERT INTO kelurahan VALUES("3208112004","Kertawinangun","320811");
INSERT INTO kelurahan VALUES("3208112005","Datar","320811");
INSERT INTO kelurahan VALUES("3208112006","Legok","320811");
INSERT INTO kelurahan VALUES("3208112007","Cikeusik","320811");
INSERT INTO kelurahan VALUES("3208112008","Cieurih","320811");
INSERT INTO kelurahan VALUES("3208112009","Cibulan","320811");
INSERT INTO kelurahan VALUES("3208112010","Nanggela","320811");
INSERT INTO kelurahan VALUES("3208112011","Jatimulya","320811");
INSERT INTO kelurahan VALUES("3208112012","Bunder","320811");
INSERT INTO kelurahan VALUES("3208122001","Sukamukti","320812");
INSERT INTO kelurahan VALUES("3208122002","Sidamulya","320812");
INSERT INTO kelurahan VALUES("3208122003","Jalaksana","320812");
INSERT INTO kelurahan VALUES("3208122004","Sangkanerang","320812");
INSERT INTO kelurahan VALUES("3208122005","Sayana","320812");
INSERT INTO kelurahan VALUES("3208122006","Peusing","320812");
INSERT INTO kelurahan VALUES("3208122007","Sembawa","320812");
INSERT INTO kelurahan VALUES("3208122008","Sadamantra","320812");
INSERT INTO kelurahan VALUES("3208122009","Manis Kidul (Maniskidul)","320812");
INSERT INTO kelurahan VALUES("3208122010","Manis Lor (Manislor)","320812");
INSERT INTO kelurahan VALUES("3208122011","Ciniru","320812");
INSERT INTO kelurahan VALUES("3208122012","Padamenak","320812");
INSERT INTO kelurahan VALUES("3208122013","Babakanmulya","320812");
INSERT INTO kelurahan VALUES("3208122014","Sindangbarang","320812");
INSERT INTO kelurahan VALUES("3208122015","Nanggerang","320812");
INSERT INTO kelurahan VALUES("3208132006","Bandorasa Wetan","320813");
INSERT INTO kelurahan VALUES("3208132007","Bandorasa Kulon","320813");
INSERT INTO kelurahan VALUES("3208132008","Linggasana","320813");
INSERT INTO kelurahan VALUES("3208132009","Linggarjati","320813");
INSERT INTO kelurahan VALUES("3208132010","Bojong","320813");
INSERT INTO kelurahan VALUES("3208132015","Cilimus","320813");
INSERT INTO kelurahan VALUES("3208132016","Setianegara","320813");
INSERT INTO kelurahan VALUES("3208132017","Cibeureum","320813");
INSERT INTO kelurahan VALUES("3208132018","Kaliaren","320813");
INSERT INTO kelurahan VALUES("3208132019","Sampora","320813");
INSERT INTO kelurahan VALUES("3208132020","Caracas","320813");
INSERT INTO kelurahan VALUES("3208132023","Linggamekar","320813");
INSERT INTO kelurahan VALUES("3208132024","Linggaindah","320813");
INSERT INTO kelurahan VALUES("3208142001","Cirea","320814");
INSERT INTO kelurahan VALUES("3208142002","Sukasari","320814");
INSERT INTO kelurahan VALUES("3208142003","Seda","320814");
INSERT INTO kelurahan VALUES("3208142004","Trijaya","320814");
INSERT INTO kelurahan VALUES("3208142005","Randobawa Girang (Randobawagirang)","320814");
INSERT INTO kelurahan VALUES("3208142006","Pakembangan","320814");
INSERT INTO kelurahan VALUES("3208142007","Randobawa Ilir (Randobawailir)","320814");
INSERT INTO kelurahan VALUES("3208142008","Kertawinangun","320814");
INSERT INTO kelurahan VALUES("3208142009","Mandirancan","320814");
INSERT INTO kelurahan VALUES("3208142010","Naggela (Nanggela)","320814");
INSERT INTO kelurahan VALUES("3208142011","Nanggerangjaya","320814");
INSERT INTO kelurahan VALUES("3208142012","Salakadomas","320814");
INSERT INTO kelurahan VALUES("3208152001","Selajambe","320815");
INSERT INTO kelurahan VALUES("3208152002","Cantilan","320815");
INSERT INTO kelurahan VALUES("3208152003","Ciberung","320815");
INSERT INTO kelurahan VALUES("3208152004","Kutawaringin","320815");
INSERT INTO kelurahan VALUES("3208152005","Jamberama","320815");
INSERT INTO kelurahan VALUES("3208152006","Bagawat","320815");
INSERT INTO kelurahan VALUES("3208152007","Padahurip","320815");
INSERT INTO kelurahan VALUES("3208162002","Gereba","320816");
INSERT INTO kelurahan VALUES("3208162004","Cilaja","320816");
INSERT INTO kelurahan VALUES("3208162005","Cikubangsari","320816");
INSERT INTO kelurahan VALUES("3208162006","Bojong","320816");
INSERT INTO kelurahan VALUES("3208162007","Cilowa","320816");
INSERT INTO kelurahan VALUES("3208162008","Cibentang","320816");
INSERT INTO kelurahan VALUES("3208162009","Ragawacana","320816");
INSERT INTO kelurahan VALUES("3208162010","Pajambon","320816");
INSERT INTO kelurahan VALUES("3208162011","Gandasoli","320816");
INSERT INTO kelurahan VALUES("3208162012","Kalapagunung","320816");
INSERT INTO kelurahan VALUES("3208162013","Kramatmulya (Karamatmulya)","320816");
INSERT INTO kelurahan VALUES("3208162014","Cikaso","320816");
INSERT INTO kelurahan VALUES("3208162015","Karangmangu","320816");
INSERT INTO kelurahan VALUES("3208162017","Widarasari","320816");
INSERT INTO kelurahan VALUES("3208172001","Cimenga","320817");
INSERT INTO kelurahan VALUES("3208172002","Cageur","320817");
INSERT INTO kelurahan VALUES("3208172003","Sakerta Barat","320817");
INSERT INTO kelurahan VALUES("3208172004","Sukarasa","320817");
INSERT INTO kelurahan VALUES("3208172005","Paninggaran","320817");
INSERT INTO kelurahan VALUES("3208172006","Cipasung","320817");
INSERT INTO kelurahan VALUES("3208172007","Kawah Manuk (Kawahmanuk)","320817");
INSERT INTO kelurahan VALUES("3208172008","Cikupa","320817");
INSERT INTO kelurahan VALUES("3208172009","Parung","320817");
INSERT INTO kelurahan VALUES("3208172010","Darma","320817");
INSERT INTO kelurahan VALUES("3208172011","Jagara","320817");
INSERT INTO kelurahan VALUES("3208172012","Bakom","320817");
INSERT INTO kelurahan VALUES("3208172013","Karanganyar","320817");
INSERT INTO kelurahan VALUES("3208172014","Karangsari","320817");
INSERT INTO kelurahan VALUES("3208172015","Sagarahiyang (Sagarahiang)","320817");
INSERT INTO kelurahan VALUES("3208172016","Gunungsirah","320817");
INSERT INTO kelurahan VALUES("3208172017","Sakerta Timur","320817");
INSERT INTO kelurahan VALUES("3208172018","Tugumulya","320817");
INSERT INTO kelurahan VALUES("3208172019","Situsari","320817");
INSERT INTO kelurahan VALUES("3208181001","Cigugur","320818");
INSERT INTO kelurahan VALUES("3208181002","Cigadung","320818");
INSERT INTO kelurahan VALUES("3208181003","Winduherang","320818");
INSERT INTO kelurahan VALUES("3208181004","Sukamulya","320818");
INSERT INTO kelurahan VALUES("3208181005","Cipari","320818");
INSERT INTO kelurahan VALUES("3208182006","Cileuleuy","320818");
INSERT INTO kelurahan VALUES("3208182007","Puncak","320818");
INSERT INTO kelurahan VALUES("3208182008","Gunungkeling","320818");
INSERT INTO kelurahan VALUES("3208182009","Cisantana","320818");
INSERT INTO kelurahan VALUES("3208182010","Babakanmulya","320818");
INSERT INTO kelurahan VALUES("3208192001","Padabeunghar","320819");
INSERT INTO kelurahan VALUES("3208192002","Kaduela","320819");
INSERT INTO kelurahan VALUES("3208192003","Pasawahan","320819");
INSERT INTO kelurahan VALUES("3208192004","Ciwiru","320819");
INSERT INTO kelurahan VALUES("3208192005","Cidahu","320819");
INSERT INTO kelurahan VALUES("3208192006","Cimara","320819");
INSERT INTO kelurahan VALUES("3208192007","Paniis","320819");
INSERT INTO kelurahan VALUES("3208192008","Cibuntu","320819");
INSERT INTO kelurahan VALUES("3208192009","Singkup","320819");
INSERT INTO kelurahan VALUES("3208192010","Padamatang","320819");
INSERT INTO kelurahan VALUES("3208202001","Haurkuning","320820");
INSERT INTO kelurahan VALUES("3208202002","Kertayuga","320820");
INSERT INTO kelurahan VALUES("3208202003","Windusari","320820");
INSERT INTO kelurahan VALUES("3208202004","Nusaherang","320820");
INSERT INTO kelurahan VALUES("3208202005","Jambar","320820");
INSERT INTO kelurahan VALUES("3208202006","Cikadu","320820");
INSERT INTO kelurahan VALUES("3208202007","Kertawirama","320820");
INSERT INTO kelurahan VALUES("3208202008","Ciasih","320820");
INSERT INTO kelurahan VALUES("3208212001","Muncangela","320821");
INSERT INTO kelurahan VALUES("3208212002","Karoya","320821");
INSERT INTO kelurahan VALUES("3208212003","Susukan","320821");
INSERT INTO kelurahan VALUES("3208212004","Cimaranten","320821");
INSERT INTO kelurahan VALUES("3208212005","Cipicung","320821");
INSERT INTO kelurahan VALUES("3208212006","Pamulihan","320821");
INSERT INTO kelurahan VALUES("3208212007","Salareuma","320821");
INSERT INTO kelurahan VALUES("3208212008","Suganangan","320821");
INSERT INTO kelurahan VALUES("3208212009","Sukamukti","320821");
INSERT INTO kelurahan VALUES("3208212010","Mekarsari","320821");
INSERT INTO kelurahan VALUES("3208222001","Silebu","320822");
INSERT INTO kelurahan VALUES("3208222002","Patalagan","320822");
INSERT INTO kelurahan VALUES("3208222003","Kahiyangan","320822");
INSERT INTO kelurahan VALUES("3208222004","Tajurbuntu","320822");
INSERT INTO kelurahan VALUES("3208222005","Pancalang","320822");
INSERT INTO kelurahan VALUES("3208222006","Sumbakeling","320822");
INSERT INTO kelurahan VALUES("3208222007","Sarewu","320822");
INSERT INTO kelurahan VALUES("3208222008","Sindangkempeng","320822");
INSERT INTO kelurahan VALUES("3208222009","Rajawetan","320822");
INSERT INTO kelurahan VALUES("3208222010","Tenjolayar","320822");
INSERT INTO kelurahan VALUES("3208222011","Mekarjaya","320822");
INSERT INTO kelurahan VALUES("3208222012","Tarikolot","320822");
INSERT INTO kelurahan VALUES("3208222013","Danalampah","320822");
INSERT INTO kelurahan VALUES("3208232001","Garatengah","320823");
INSERT INTO kelurahan VALUES("3208232002","Rajadanu","320823");
INSERT INTO kelurahan VALUES("3208232003","Singkup","320823");
INSERT INTO kelurahan VALUES("3208232004","Japara","320823");
INSERT INTO kelurahan VALUES("3208232005","Wano","320823");
INSERT INTO kelurahan VALUES("3208232006","Citapen","320823");
INSERT INTO kelurahan VALUES("3208232007","Cengal","320823");
INSERT INTO kelurahan VALUES("3208232008","Cikeleng","320823");
INSERT INTO kelurahan VALUES("3208232009","Kalimati","320823");
INSERT INTO kelurahan VALUES("3208232010","Dukuhdalem","320823");
INSERT INTO kelurahan VALUES("3208242003","Cileuya","320824");
INSERT INTO kelurahan VALUES("3208242004","Margamukti","320824");
INSERT INTO kelurahan VALUES("3208242005","Gunungsari","320824");
INSERT INTO kelurahan VALUES("3208242006","Cimahi","320824");
INSERT INTO kelurahan VALUES("3208242007","Kananga","320824");
INSERT INTO kelurahan VALUES("3208242008","Cikeusal","320824");
INSERT INTO kelurahan VALUES("3208242009","Mekarjaya","320824");
INSERT INTO kelurahan VALUES("3208242010","Sukajaya","320824");
INSERT INTO kelurahan VALUES("3208242011","Mulyajaya","320824");
INSERT INTO kelurahan VALUES("3208242012","Cimulya","320824");
INSERT INTO kelurahan VALUES("3208252001","Legokherang","320825");
INSERT INTO kelurahan VALUES("3208252002","Bungurberes","320825");
INSERT INTO kelurahan VALUES("3208252003","Cilebak","320825");
INSERT INTO kelurahan VALUES("3208252004","Jalatrang","320825");
INSERT INTO kelurahan VALUES("3208252005","Patala","320825");
INSERT INTO kelurahan VALUES("3208252006","Madapajaya (Mandapajaya)","320825");
INSERT INTO kelurahan VALUES("3208252007","Cilimusari","320825");
INSERT INTO kelurahan VALUES("3208262001","Citapen","320826");
INSERT INTO kelurahan VALUES("3208262002","Pasiragung","320826");
INSERT INTO kelurahan VALUES("3208262003","Tundagan (Tudagan)","320826");
INSERT INTO kelurahan VALUES("3208262004","Bunigeulis","320826");
INSERT INTO kelurahan VALUES("3208262005","Hantara","320826");
INSERT INTO kelurahan VALUES("3208262006","Pakapasan Girang","320826");
INSERT INTO kelurahan VALUES("3208262007","Cikondang","320826");
INSERT INTO kelurahan VALUES("3208262008","Pakapasan Hilir","320826");
INSERT INTO kelurahan VALUES("3208272001","Kalimanggis Kulon","320827");
INSERT INTO kelurahan VALUES("3208272002","Kertawinangun (Partawangunan)","320827");
INSERT INTO kelurahan VALUES("3208272003","Cipancur","320827");
INSERT INTO kelurahan VALUES("3208272004","Kertawana","320827");
INSERT INTO kelurahan VALUES("3208272005","Wanasaraya","320827");
INSERT INTO kelurahan VALUES("3208272006","Kalimanggis Wetan","320827");
INSERT INTO kelurahan VALUES("3208282001","Cimara","320828");
INSERT INTO kelurahan VALUES("3208282002","Sumurwiru","320828");
INSERT INTO kelurahan VALUES("3208282003","Cibeureum","320828");
INSERT INTO kelurahan VALUES("3208282004","Tarikolot","320828");
INSERT INTO kelurahan VALUES("3208282005","Randusari","320828");
INSERT INTO kelurahan VALUES("3208282006","Sukadana","320828");
INSERT INTO kelurahan VALUES("3208282007","Kawungsari","320828");
INSERT INTO kelurahan VALUES("3208282008","Sukarapih","320828");
INSERT INTO kelurahan VALUES("3208292001","Karangkancana","320829");
INSERT INTO kelurahan VALUES("3208292002","Kaduagung","320829");
INSERT INTO kelurahan VALUES("3208292003","Segong","320829");
INSERT INTO kelurahan VALUES("3208292004","Tanjungkerta","320829");
INSERT INTO kelurahan VALUES("3208292005","Sukasari","320829");
INSERT INTO kelurahan VALUES("3208292006","Margacina","320829");
INSERT INTO kelurahan VALUES("3208292007","Jabranti","320829");
INSERT INTO kelurahan VALUES("3208292008","Simpayjaya","320829");
INSERT INTO kelurahan VALUES("3208292009","Cihanjaro","320829");
INSERT INTO kelurahan VALUES("3208302001","Garahaji","320830");
INSERT INTO kelurahan VALUES("3208302002","Galaherang","320830");
INSERT INTO kelurahan VALUES("3208302003","Cipakem","320830");
INSERT INTO kelurahan VALUES("3208302004","Maleber","320830");
INSERT INTO kelurahan VALUES("3208302005","Parakan","320830");
INSERT INTO kelurahan VALUES("3208302006","Kutaraja","320830");
INSERT INTO kelurahan VALUES("3208302007","Ciporang","320830");
INSERT INTO kelurahan VALUES("3208302008","Dukuhtengah","320830");
INSERT INTO kelurahan VALUES("3208302009","Karangtengah","320830");
INSERT INTO kelurahan VALUES("3208302010","Mekarsari","320830");
INSERT INTO kelurahan VALUES("3208302011","Padamulya","320830");
INSERT INTO kelurahan VALUES("3208302012","Cikahuripan","320830");
INSERT INTO kelurahan VALUES("3208302013","Kutamandarakan","320830");
INSERT INTO kelurahan VALUES("3208302014","Mandalajaya","320830");
INSERT INTO kelurahan VALUES("3208302015","Giriwaringin","320830");
INSERT INTO kelurahan VALUES("3208302016","Buniasih","320830");
INSERT INTO kelurahan VALUES("3208312001","Sindangsari","320831");
INSERT INTO kelurahan VALUES("3208312002","Kaduagung","320831");
INSERT INTO kelurahan VALUES("3208312003","Kertaungaran","320831");
INSERT INTO kelurahan VALUES("3208312004","Sindangagung","320831");
INSERT INTO kelurahan VALUES("3208312005","Balong","320831");
INSERT INTO kelurahan VALUES("3208312006","Kertayasa","320831");
INSERT INTO kelurahan VALUES("3208312007","Kertawangunan","320831");
INSERT INTO kelurahan VALUES("3208312008","Babakanreuma","320831");
INSERT INTO kelurahan VALUES("3208312009","Tirtawangunan","320831");
INSERT INTO kelurahan VALUES("3208312010","Dukuh Lor (Dukuhlor)","320831");
INSERT INTO kelurahan VALUES("3208312011","Taraju","320831");
INSERT INTO kelurahan VALUES("3208312012","Mekarmukti","320831");
INSERT INTO kelurahan VALUES("3208322001","Bunigeulis","320832");
INSERT INTO kelurahan VALUES("3208322002","Jambugeulis","320832");
INSERT INTO kelurahan VALUES("3208322003","Koreak","320832");
INSERT INTO kelurahan VALUES("3208322004","Karangmuncang","320832");
INSERT INTO kelurahan VALUES("3208322005","Sangkanhurip (Sangkanurip)","320832");
INSERT INTO kelurahan VALUES("3208322006","Panawuan","320832");
INSERT INTO kelurahan VALUES("3208322007","Timbang","320832");
INSERT INTO kelurahan VALUES("3208322008","Babakanjati","320832");
INSERT INTO kelurahan VALUES("3208322009","Indapatra","320832");
INSERT INTO kelurahan VALUES("3208322010","Cibuntu","320832");
INSERT INTO kelurahan VALUES("3208322011","Sangkanmulya","320832");
INSERT INTO kelurahan VALUES("3209012008","Waled Desa","320901");
INSERT INTO kelurahan VALUES("3209012009","Waled Kota","320901");
INSERT INTO kelurahan VALUES("3209012010","Mekarsari","320901");
INSERT INTO kelurahan VALUES("3209012011","Waled Asem","320901");
INSERT INTO kelurahan VALUES("3209012012","Ambit","320901");
INSERT INTO kelurahan VALUES("3209012013","Ciuyah","320901");
INSERT INTO kelurahan VALUES("3209012014","Gunungsari","320901");
INSERT INTO kelurahan VALUES("3209012015","Karangsari","320901");
INSERT INTO kelurahan VALUES("3209012016","Cikulak Kidul","320901");
INSERT INTO kelurahan VALUES("3209012017","Cikulak","320901");
INSERT INTO kelurahan VALUES("3209012018","Cibogo","320901");
INSERT INTO kelurahan VALUES("3209012019","Cisaat","320901");
INSERT INTO kelurahan VALUES("3209022008","Leuweunggajah","320902");
INSERT INTO kelurahan VALUES("3209022009","Tenjomaya","320902");
INSERT INTO kelurahan VALUES("3209022010","Damarguna","320902");
INSERT INTO kelurahan VALUES("3209022011","Jatiseeng","320902");
INSERT INTO kelurahan VALUES("3209022012","Jatiseeng Kidul","320902");
INSERT INTO kelurahan VALUES("3209022013","Ciledug Kulon","320902");
INSERT INTO kelurahan VALUES("3209022014","Ciledug Wetan","320902");
INSERT INTO kelurahan VALUES("3209022015","Ciledug Lor","320902");
INSERT INTO kelurahan VALUES("3209022016","Ciledug Tengah","320902");
INSERT INTO kelurahan VALUES("3209022017","Bojongnegara","320902");
INSERT INTO kelurahan VALUES("3209032001","Astanalanggar","320903");
INSERT INTO kelurahan VALUES("3209032002","Barisan","320903");
INSERT INTO kelurahan VALUES("3209032003","Losari Kidul","320903");
INSERT INTO kelurahan VALUES("3209032004","Panggangsari","320903");
INSERT INTO kelurahan VALUES("3209032005","Losari Lor","320903");
INSERT INTO kelurahan VALUES("3209032006","Mulyasari","320903");
INSERT INTO kelurahan VALUES("3209032007","Kalirahayu","320903");
INSERT INTO kelurahan VALUES("3209032008","Kalisari","320903");
INSERT INTO kelurahan VALUES("3209032009","Ambulu","320903");
INSERT INTO kelurahan VALUES("3209032010","Tawangsari","320903");
INSERT INTO kelurahan VALUES("3209042001","Pabedilan Kidul","320904");
INSERT INTO kelurahan VALUES("3209042002","Pabedilan Wetan","320904");
INSERT INTO kelurahan VALUES("3209042003","Pabedilan Kulon","320904");
INSERT INTO kelurahan VALUES("3209042004","Pabedilan Kaler","320904");
INSERT INTO kelurahan VALUES("3209042005","Silih Asih (Silihasih)","320904");
INSERT INTO kelurahan VALUES("3209042006","Tersana","320904");
INSERT INTO kelurahan VALUES("3209042007","Pasuruan","320904");
INSERT INTO kelurahan VALUES("3209042008","Dukuhwidara","320904");
INSERT INTO kelurahan VALUES("3209042009","Kalibuntu","320904");
INSERT INTO kelurahan VALUES("3209042010","Kalimukti","320904");
INSERT INTO kelurahan VALUES("3209042011","Sidaresmi","320904");
INSERT INTO kelurahan VALUES("3209042012","Babakan Losari","320904");
INSERT INTO kelurahan VALUES("3209042013","Babakan Losari Lor","320904");
INSERT INTO kelurahan VALUES("3209052001","Cangkuang","320905");
INSERT INTO kelurahan VALUES("3209052002","Serang Wetan","320905");
INSERT INTO kelurahan VALUES("3209052003","Serang Kulon","320905");
INSERT INTO kelurahan VALUES("3209052004","Gembongan Mekar (Gembonganmekar)","320905");
INSERT INTO kelurahan VALUES("3209052005","Gembongan","320905");
INSERT INTO kelurahan VALUES("3209052006","Babakan Gebang (Babakangebang)","320905");
INSERT INTO kelurahan VALUES("3209052007","Babakan","320905");
INSERT INTO kelurahan VALUES("3209052008","Bojonggebang","320905");
INSERT INTO kelurahan VALUES("3209052009","Sumber Kidul","320905");
INSERT INTO kelurahan VALUES("3209052010","Sumber Lor","320905");
INSERT INTO kelurahan VALUES("3209052011","Kudumulya","320905");
INSERT INTO kelurahan VALUES("3209052012","Kudukeras","320905");
INSERT INTO kelurahan VALUES("3209052013","Pakusamben","320905");
INSERT INTO kelurahan VALUES("3209052014","Karangwangun","320905");
INSERT INTO kelurahan VALUES("3209062006","Tambelang","320906");
INSERT INTO kelurahan VALUES("3209062011","Karangsuwung","320906");
INSERT INTO kelurahan VALUES("3209062012","Karangtengah","320906");
INSERT INTO kelurahan VALUES("3209062013","Kalimeang","320906");
INSERT INTO kelurahan VALUES("3209062014","Karangmalang","320906");
INSERT INTO kelurahan VALUES("3209062015","Karangmekar","320906");
INSERT INTO kelurahan VALUES("3209062016","Kubangkarang","320906");
INSERT INTO kelurahan VALUES("3209062017","Karangsembung","320906");
INSERT INTO kelurahan VALUES("3209072001","Leuwidingding","320907");
INSERT INTO kelurahan VALUES("3209072002","Asem","320907");
INSERT INTO kelurahan VALUES("3209072003","Cipeujeuh Kulon","320907");
INSERT INTO kelurahan VALUES("3209072004","Cipeujeuh Wetan","320907");
INSERT INTO kelurahan VALUES("3209072005","Sindanglaut","320907");
INSERT INTO kelurahan VALUES("3209072006","Lemahabang Kulon","320907");
INSERT INTO kelurahan VALUES("3209072007","Lemahabang","320907");
INSERT INTO kelurahan VALUES("3209072008","Sigong","320907");
INSERT INTO kelurahan VALUES("3209072009","Sarajaya","320907");
INSERT INTO kelurahan VALUES("3209072010","Picungpugur","320907");
INSERT INTO kelurahan VALUES("3209072011","Tuk Karangsuwung","320907");
INSERT INTO kelurahan VALUES("3209072012","Belawa","320907");
INSERT INTO kelurahan VALUES("3209072013","Wangkelang","320907");
INSERT INTO kelurahan VALUES("3209082001","Karangamangu (Karangmanggu)","320908");
INSERT INTO kelurahan VALUES("3209082002","Susukan Lebak","320908");
INSERT INTO kelurahan VALUES("3209082003","Susukan Agung","320908");
INSERT INTO kelurahan VALUES("3209082004","Susukan Tonggoh","320908");
INSERT INTO kelurahan VALUES("3209082005","Wilulang","320908");
INSERT INTO kelurahan VALUES("3209082006","Sampih","320908");
INSERT INTO kelurahan VALUES("3209082007","Pasawahan","320908");
INSERT INTO kelurahan VALUES("3209082008","Ciawiasih","320908");
INSERT INTO kelurahan VALUES("3209082009","Ciawijapura","320908");
INSERT INTO kelurahan VALUES("3209082010","Curug","320908");
INSERT INTO kelurahan VALUES("3209082011","Curug Wetan","320908");
INSERT INTO kelurahan VALUES("3209082012","Kaligawe Wetan","320908");
INSERT INTO kelurahan VALUES("3209082013","Kaligawe","320908");
INSERT INTO kelurahan VALUES("3209092001","Karangwuni","320909");
INSERT INTO kelurahan VALUES("3209092002","Sedong Kidul","320909");
INSERT INTO kelurahan VALUES("3209092003","Sedong Lor","320909");
INSERT INTO kelurahan VALUES("3209092004","Windujaya","320909");
INSERT INTO kelurahan VALUES("3209092005","Winduhaji","320909");
INSERT INTO kelurahan VALUES("3209092006","Kertawangun","320909");
INSERT INTO kelurahan VALUES("3209092007","Penambangan (Panambangan)","320909");
INSERT INTO kelurahan VALUES("3209092008","Putat","320909");
INSERT INTO kelurahan VALUES("3209092009","Panongan","320909");
INSERT INTO kelurahan VALUES("3209092010","Panongan Lor","320909");
INSERT INTO kelurahan VALUES("3209102004","Munjul","320910");
INSERT INTO kelurahan VALUES("3209102005","Sidamulya","320910");
INSERT INTO kelurahan VALUES("3209102006","Mertapada Kulon","320910");
INSERT INTO kelurahan VALUES("3209102007","Mertapada Wetan","320910");
INSERT INTO kelurahan VALUES("3209102008","Buntet","320910");
INSERT INTO kelurahan VALUES("3209102009","Kanci Kulon","320910");
INSERT INTO kelurahan VALUES("3209102010","Kanci","320910");
INSERT INTO kelurahan VALUES("3209102011","Astanajapura","320910");
INSERT INTO kelurahan VALUES("3209102012","Kendal","320910");
INSERT INTO kelurahan VALUES("3209102013","Japura Kidul","320910");
INSERT INTO kelurahan VALUES("3209102014","Japura Bakti (Japurabakti)","320910");
INSERT INTO kelurahan VALUES("3209112001","Getrakmoyan","320911");
INSERT INTO kelurahan VALUES("3209112002","Ender","320911");
INSERT INTO kelurahan VALUES("3209112003","Pangenan","320911");
INSERT INTO kelurahan VALUES("3209112004","Bendungan","320911");
INSERT INTO kelurahan VALUES("3209112005","Rawaurip","320911");
INSERT INTO kelurahan VALUES("3209112006","Beringin","320911");
INSERT INTO kelurahan VALUES("3209112007","Japura Lor","320911");
INSERT INTO kelurahan VALUES("3209112008","Pengarengan (Pangarengan)","320911");
INSERT INTO kelurahan VALUES("3209112009","Astana Mukti (Astanamukti)","320911");
INSERT INTO kelurahan VALUES("3209122001","Setupatok","320912");
INSERT INTO kelurahan VALUES("3209122002","Penpen","320912");
INSERT INTO kelurahan VALUES("3209122003","Mundumesigit","320912");
INSERT INTO kelurahan VALUES("3209122004","Luwung","320912");
INSERT INTO kelurahan VALUES("3209122005","Waruduwur","320912");
INSERT INTO kelurahan VALUES("3209122006","Citemu","320912");
INSERT INTO kelurahan VALUES("3209122007","Bandengan","320912");
INSERT INTO kelurahan VALUES("3209122008","Mundupesisir","320912");
INSERT INTO kelurahan VALUES("3209122009","Suci","320912");
INSERT INTO kelurahan VALUES("3209122010","Banjarwangunan","320912");
INSERT INTO kelurahan VALUES("3209122011","Pamengkang","320912");
INSERT INTO kelurahan VALUES("3209122012","Sinar Rancang (Sinarrancang)","320912");
INSERT INTO kelurahan VALUES("3209132001","Wanayasa","320913");
INSERT INTO kelurahan VALUES("3209132002","Sindangkasih","320913");
INSERT INTO kelurahan VALUES("3209132003","Sindanghayu","320913");
INSERT INTO kelurahan VALUES("3209132004","Ciawigajah","320913");
INSERT INTO kelurahan VALUES("3209132008","Cikancas","320913");
INSERT INTO kelurahan VALUES("3209132009","Halimpu","320913");
INSERT INTO kelurahan VALUES("3209132010","Cipinang","320913");
INSERT INTO kelurahan VALUES("3209132011","Beber","320913");
INSERT INTO kelurahan VALUES("3209132012","Patapan","320913");
INSERT INTO kelurahan VALUES("3209132013","Kondangsari","320913");
INSERT INTO kelurahan VALUES("3209142001","Sampiran","320914");
INSERT INTO kelurahan VALUES("3209142002","Ciperna","320914");
INSERT INTO kelurahan VALUES("3209142003","Kecomberan","320914");
INSERT INTO kelurahan VALUES("3209142004","Cirebon Girang (Cirebongirang)","320914");
INSERT INTO kelurahan VALUES("3209142005","Kerandon","320914");
INSERT INTO kelurahan VALUES("3209142006","Wanasaba Kidul","320914");
INSERT INTO kelurahan VALUES("3209142007","Wanasaba Lor","320914");
INSERT INTO kelurahan VALUES("3209142008","Cempaka","320914");
INSERT INTO kelurahan VALUES("3209142009","Kepongpongan","320914");
INSERT INTO kelurahan VALUES("3209142010","Sarwadadi","320914");
INSERT INTO kelurahan VALUES("3209142011","Kubang","320914");
INSERT INTO kelurahan VALUES("3209151003","Babakan","320915");
INSERT INTO kelurahan VALUES("3209151004","Sumber","320915");
INSERT INTO kelurahan VALUES("3209151005","Perbutulan","320915");
INSERT INTO kelurahan VALUES("3209151006","Kaliwadas","320915");
INSERT INTO kelurahan VALUES("3209151007","Pasalakan","320915");
INSERT INTO kelurahan VALUES("3209151008","Watubelah","320915");
INSERT INTO kelurahan VALUES("3209151009","Pejambon","320915");
INSERT INTO kelurahan VALUES("3209151010","Gegunung","320915");
INSERT INTO kelurahan VALUES("3209151011","Kemantren","320915");
INSERT INTO kelurahan VALUES("3209151012","Sendang","320915");
INSERT INTO kelurahan VALUES("3209151013","Tukmudal","320915");
INSERT INTO kelurahan VALUES("3209151014","Kenanga","320915");
INSERT INTO kelurahan VALUES("3209152001","Matangaji","320915");
INSERT INTO kelurahan VALUES("3209152002","Sidawangi","320915");
INSERT INTO kelurahan VALUES("3209162001","Bobos","320916");
INSERT INTO kelurahan VALUES("3209162002","Cikalahang","320916");
INSERT INTO kelurahan VALUES("3209162003","Mandala","320916");
INSERT INTO kelurahan VALUES("3209162004","Dukupuntang","320916");
INSERT INTO kelurahan VALUES("3209162005","Balad","320916");
INSERT INTO kelurahan VALUES("3209162006","Cangkoak","320916");
INSERT INTO kelurahan VALUES("3209162007","Cisaat","320916");
INSERT INTO kelurahan VALUES("3209162008","Sindangmekar","320916");
INSERT INTO kelurahan VALUES("3209162009","Sindangjawa","320916");
INSERT INTO kelurahan VALUES("3209162010","Kepunduan","320916");
INSERT INTO kelurahan VALUES("3209162011","Girinata","320916");
INSERT INTO kelurahan VALUES("3209162012","Cipanas","320916");
INSERT INTO kelurahan VALUES("3209162013","Kedongdong Kidul","320916");
INSERT INTO kelurahan VALUES("3209172002","Cilukrak","320917");
INSERT INTO kelurahan VALUES("3209172003","Kepuh","320917");
INSERT INTO kelurahan VALUES("3209172004","Balerante","320917");
INSERT INTO kelurahan VALUES("3209172005","Panongan","320917");
INSERT INTO kelurahan VALUES("3209172006","Beberan","320917");
INSERT INTO kelurahan VALUES("3209172007","Semplo","320917");
INSERT INTO kelurahan VALUES("3209172008","Palimanan Timur","320917");
INSERT INTO kelurahan VALUES("3209172011","Pegagan","320917");
INSERT INTO kelurahan VALUES("3209172012","Lungbenda","320917");
INSERT INTO kelurahan VALUES("3209172013","Ciawi","320917");
INSERT INTO kelurahan VALUES("3209172014","Tegalkarang","320917");
INSERT INTO kelurahan VALUES("3209172015","Cengkuang","320917");
INSERT INTO kelurahan VALUES("3209182001","Cempaka","320918");
INSERT INTO kelurahan VALUES("3209182002","Pamijahan","320918");
INSERT INTO kelurahan VALUES("3209182003","Lurah","320918");
INSERT INTO kelurahan VALUES("3209182004","Marikangen","320918");
INSERT INTO kelurahan VALUES("3209182005","Bode Lor","320918");
INSERT INTO kelurahan VALUES("3209182006","Bodesari","320918");
INSERT INTO kelurahan VALUES("3209182007","Gombang","320918");
INSERT INTO kelurahan VALUES("3209182008","Karangmulya","320918");
INSERT INTO kelurahan VALUES("3209182009","Karangasem","320918");
INSERT INTO kelurahan VALUES("3209182010","Plumbon","320918");
INSERT INTO kelurahan VALUES("3209182011","Purbawinangun","320918");
INSERT INTO kelurahan VALUES("3209182012","Kebarepan","320918");
INSERT INTO kelurahan VALUES("3209182013","Pasanggrahan","320918");
INSERT INTO kelurahan VALUES("3209182014","Kedungsana","320918");
INSERT INTO kelurahan VALUES("3209182015","Danamulya","320918");
INSERT INTO kelurahan VALUES("3209192001","Karangsari","320919");
INSERT INTO kelurahan VALUES("3209192002","Kertasari","320919");
INSERT INTO kelurahan VALUES("3209192003","Megugede","320919");
INSERT INTO kelurahan VALUES("3209192004","Megucilik","320919");
INSERT INTO kelurahan VALUES("3209192005","Setu Wetan","320919");
INSERT INTO kelurahan VALUES("3209192006","Setu Kulon","320919");
INSERT INTO kelurahan VALUES("3209192007","Weru Kidul","320919");
INSERT INTO kelurahan VALUES("3209192008","Weru Lor","320919");
INSERT INTO kelurahan VALUES("3209192009","Tegalwangi","320919");
INSERT INTO kelurahan VALUES("3209202004","Kedungdawa","320920");
INSERT INTO kelurahan VALUES("3209202005","Kalikoa","320920");
INSERT INTO kelurahan VALUES("3209202006","TUK","320920");
INSERT INTO kelurahan VALUES("3209202007","Kedungjaya","320920");
INSERT INTO kelurahan VALUES("3209202008","Kedawung","320920");
INSERT INTO kelurahan VALUES("3209202009","Kertawinangun","320920");
INSERT INTO kelurahan VALUES("3209202010","Sutawinangun","320920");
INSERT INTO kelurahan VALUES("3209202011","Pilangsari","320920");
INSERT INTO kelurahan VALUES("3209212001","Adidharma","320921");
INSERT INTO kelurahan VALUES("3209212002","Pasindangan","320921");
INSERT INTO kelurahan VALUES("3209212003","Jadimulya","320921");
INSERT INTO kelurahan VALUES("3209212004","Klayan","320921");
INSERT INTO kelurahan VALUES("3209212005","Jatimerta","320921");
INSERT INTO kelurahan VALUES("3209212006","Astana","320921");
INSERT INTO kelurahan VALUES("3209212007","Kalisapu","320921");
INSERT INTO kelurahan VALUES("3209212008","Wanakaya","320921");
INSERT INTO kelurahan VALUES("3209212009","Grogol","320921");
INSERT INTO kelurahan VALUES("3209212010","Babadan","320921");
INSERT INTO kelurahan VALUES("3209212011","Buyut","320921");
INSERT INTO kelurahan VALUES("3209212012","Mayung","320921");
INSERT INTO kelurahan VALUES("3209212015","Mertasinga","320921");
INSERT INTO kelurahan VALUES("3209222010","Kertasura","320922");
INSERT INTO kelurahan VALUES("3209222011","Pegagan Kidul","320922");
INSERT INTO kelurahan VALUES("3209222012","Pegaan Lor (Pegagan Lor)","320922");
INSERT INTO kelurahan VALUES("3209222013","Dukuh","320922");
INSERT INTO kelurahan VALUES("3209222014","Karangkendal","320922");
INSERT INTO kelurahan VALUES("3209222015","Grogol","320922");
INSERT INTO kelurahan VALUES("3209222016","Kapetakan","320922");
INSERT INTO kelurahan VALUES("3209222017","Bungko","320922");
INSERT INTO kelurahan VALUES("3209222018","Bungko Lor","320922");
INSERT INTO kelurahan VALUES("3209232001","Serang","320923");
INSERT INTO kelurahan VALUES("3209232002","Klangenan","320923");
INSERT INTO kelurahan VALUES("3209232003","Danawinangun","320923");
INSERT INTO kelurahan VALUES("3209232007","Pakantingan (Pekantingan)","320923");
INSERT INTO kelurahan VALUES("3209232008","Jemaras Kidul","320923");
INSERT INTO kelurahan VALUES("3209232009","Jemaras Lor","320923");
INSERT INTO kelurahan VALUES("3209232010","Slangit","320923");
INSERT INTO kelurahan VALUES("3209232011","Kreyo","320923");
INSERT INTO kelurahan VALUES("3209232012","Bangodua","320923");
INSERT INTO kelurahan VALUES("3209242001","Sende","320924");
INSERT INTO kelurahan VALUES("3209242002","Jungjang Wetan","320924");
INSERT INTO kelurahan VALUES("3209242003","Jungjang","320924");
INSERT INTO kelurahan VALUES("3209242004","Arjawinangun","320924");
INSERT INTO kelurahan VALUES("3209242005","Tegalgubug","320924");
INSERT INTO kelurahan VALUES("3209242006","Tegal Gubug Lor (Tegalgubug Lor)","320924");
INSERT INTO kelurahan VALUES("3209242007","Rawagatel","320924");
INSERT INTO kelurahan VALUES("3209242008","Karangsambung","320924");
INSERT INTO kelurahan VALUES("3209242009","Bulak","320924");
INSERT INTO kelurahan VALUES("3209242010","Geyongan","320924");
INSERT INTO kelurahan VALUES("3209242011","Kebonturi","320924");
INSERT INTO kelurahan VALUES("3209252001","Kalianyar","320925");
INSERT INTO kelurahan VALUES("3209252002","Pangurangan Kulon (Panguragan Kulon)","320925");
INSERT INTO kelurahan VALUES("3209252003","Pangurangan Wetan (Panguragan Wetan)","320925");
INSERT INTO kelurahan VALUES("3209252004","Pangurangan Lor (Panguragan Lor)","320925");
INSERT INTO kelurahan VALUES("3209252005","Pangurangan (Panguragan)","320925");
INSERT INTO kelurahan VALUES("3209252006","Gujeg","320925");
INSERT INTO kelurahan VALUES("3209252007","Lemahtamba","320925");
INSERT INTO kelurahan VALUES("3209252008","Karanganyar","320925");
INSERT INTO kelurahan VALUES("3209252009","Kroya","320925");
INSERT INTO kelurahan VALUES("3209262004","Budur","320926");
INSERT INTO kelurahan VALUES("3209262005","Babakan","320926");
INSERT INTO kelurahan VALUES("3209262006","Ciwaringin","320926");
INSERT INTO kelurahan VALUES("3209262007","Gintungranjeng","320926");
INSERT INTO kelurahan VALUES("3209262008","Gintung Kidul","320926");
INSERT INTO kelurahan VALUES("3209262009","Gintung Tengah","320926");
INSERT INTO kelurahan VALUES("3209262010","Bringin","320926");
INSERT INTO kelurahan VALUES("3209262011","Galagamba","320926");
INSERT INTO kelurahan VALUES("3209272001","Tangkil","320927");
INSERT INTO kelurahan VALUES("3209272002","Wiyong","320927");
INSERT INTO kelurahan VALUES("3209272003","Kedongdong","320927");
INSERT INTO kelurahan VALUES("3209272004","Gintung Lor","320927");
INSERT INTO kelurahan VALUES("3209272005","Bojong Kulon","320927");
INSERT INTO kelurahan VALUES("3209272006","Kejiwan","320927");
INSERT INTO kelurahan VALUES("3209272007","Susukan","320927");
INSERT INTO kelurahan VALUES("3209272008","Luwung Kencana","320927");
INSERT INTO kelurahan VALUES("3209272009","Bunder","320927");
INSERT INTO kelurahan VALUES("3209272010","Jatipura","320927");
INSERT INTO kelurahan VALUES("3209272011","Ujunggebang","320927");
INSERT INTO kelurahan VALUES("3209272012","Jatianom","320927");
INSERT INTO kelurahan VALUES("3209282001","Kedungdalem","320928");
INSERT INTO kelurahan VALUES("3209282002","Panunggul","320928");
INSERT INTO kelurahan VALUES("3209282003","Gegesik Wetan","320928");
INSERT INTO kelurahan VALUES("3209282004","Gegesik Kidul","320928");
INSERT INTO kelurahan VALUES("3209282005","Gegesik Lor","320928");
INSERT INTO kelurahan VALUES("3209282006","Gegesik Kulon","320928");
INSERT INTO kelurahan VALUES("3209282007","Slendra","320928");
INSERT INTO kelurahan VALUES("3209282008","Jagapura Kidul","320928");
INSERT INTO kelurahan VALUES("3209282009","Jagapura Wetan","320928");
INSERT INTO kelurahan VALUES("3209282010","Jagapura Kulon","320928");
INSERT INTO kelurahan VALUES("3209282011","Jagapura Lor","320928");
INSERT INTO kelurahan VALUES("3209282012","Sibubut","320928");
INSERT INTO kelurahan VALUES("3209282013","Bayalangu Lor","320928");
INSERT INTO kelurahan VALUES("3209282014","Bayalangu Kidul","320928");
INSERT INTO kelurahan VALUES("3209292001","Kalideres","320929");
INSERT INTO kelurahan VALUES("3209292002","Prajawinangun Kulon","320929");
INSERT INTO kelurahan VALUES("3209292003","Prajawinangun Wetan","320929");
INSERT INTO kelurahan VALUES("3209292004","Ujungsemi","320929");
INSERT INTO kelurahan VALUES("3209292005","Wargabinangun","320929");
INSERT INTO kelurahan VALUES("3209292006","Kaliwedi Lor","320929");
INSERT INTO kelurahan VALUES("3209292007","Kaliwedi Kidul","320929");
INSERT INTO kelurahan VALUES("3209292008","Guwa Kidul","320929");
INSERT INTO kelurahan VALUES("3209292009","Guwa Lor","320929");
INSERT INTO kelurahan VALUES("3209302001","Dompyong Kulon","320930");
INSERT INTO kelurahan VALUES("3209302002","Dompyong Wetan","320930");
INSERT INTO kelurahan VALUES("3209302003","Kalimekar","320930");
INSERT INTO kelurahan VALUES("3209302004","Kalimoro (Kalimaro)","320930");
INSERT INTO kelurahan VALUES("3209302005","Gagasari","320930");
INSERT INTO kelurahan VALUES("3209302006","Kalipasung","320930");
INSERT INTO kelurahan VALUES("3209302007","Gebang Kulon","320930");
INSERT INTO kelurahan VALUES("3209302008","Gebang","320930");
INSERT INTO kelurahan VALUES("3209302009","Gebang Ilir (Gebangilir)","320930");
INSERT INTO kelurahan VALUES("3209302010","Gebang Udik (Gebangudik)","320930");
INSERT INTO kelurahan VALUES("3209302011","Gebang Mekar (Gebangmekar)","320930");
INSERT INTO kelurahan VALUES("3209302012","Pelayangan (Playangan)","320930");
INSERT INTO kelurahan VALUES("3209302013","Melakasari","320930");
INSERT INTO kelurahan VALUES("3209312001","Cikeduk","320931");
INSERT INTO kelurahan VALUES("3209312002","Warujaya","320931");
INSERT INTO kelurahan VALUES("3209312003","Warukawung","320931");
INSERT INTO kelurahan VALUES("3209312004","Warugede","320931");
INSERT INTO kelurahan VALUES("3209312005","Waruroyom","320931");
INSERT INTO kelurahan VALUES("3209312006","Depok","320931");
INSERT INTO kelurahan VALUES("3209312007","Kasugengan Kidul","320931");
INSERT INTO kelurahan VALUES("3209312008","Kasugengan Lor","320931");
INSERT INTO kelurahan VALUES("3209312009","Keduanan","320931");
INSERT INTO kelurahan VALUES("3209312010","Kejuden","320931");
INSERT INTO kelurahan VALUES("3209312011","Getasan","320931");
INSERT INTO kelurahan VALUES("3209312012","Karangwangi","320931");
INSERT INTO kelurahan VALUES("3209322001","Tonjong","320932");
INSERT INTO kelurahan VALUES("3209322002","Tanjunganom (Tanjung Anom)","320932");
INSERT INTO kelurahan VALUES("3209322003","Cilengkrang Girang","320932");
INSERT INTO kelurahan VALUES("3209322004","Cilengkrang","320932");
INSERT INTO kelurahan VALUES("3209322005","Pasaleman","320932");
INSERT INTO kelurahan VALUES("3209322006","Cigobang Wangi","320932");
INSERT INTO kelurahan VALUES("3209322007","Cigobang","320932");
INSERT INTO kelurahan VALUES("3209332001","Sukadana","320933");
INSERT INTO kelurahan VALUES("3209332002","Pabuaran Kidul","320933");
INSERT INTO kelurahan VALUES("3209332003","Pabuaran Wetan","320933");
INSERT INTO kelurahan VALUES("3209332004","Pabuaran Lor","320933");
INSERT INTO kelurahan VALUES("3209332005","Jatirenggang","320933");
INSERT INTO kelurahan VALUES("3209332006","Hulubanteng","320933");
INSERT INTO kelurahan VALUES("3209332007","Hulubanteng Lor","320933");
INSERT INTO kelurahan VALUES("3209342001","Seuseupan","320934");
INSERT INTO kelurahan VALUES("3209342002","Blender","320934");
INSERT INTO kelurahan VALUES("3209342003","Sumurkondang","320934");
INSERT INTO kelurahan VALUES("3209342004","Kubangdeleg","320934");
INSERT INTO kelurahan VALUES("3209342005","Jatipiring","320934");
INSERT INTO kelurahan VALUES("3209342006","Karanganyar","320934");
INSERT INTO kelurahan VALUES("3209342007","Karangwangi","320934");
INSERT INTO kelurahan VALUES("3209342008","Karangwareng","320934");
INSERT INTO kelurahan VALUES("3209342009","Karangasem","320934");
INSERT INTO kelurahan VALUES("3209352001","Palir","320935");
INSERT INTO kelurahan VALUES("3209352002","Astapada","320935");
INSERT INTO kelurahan VALUES("3209352003","Gesik","320935");
INSERT INTO kelurahan VALUES("3209352004","Kemlakagede","320935");
INSERT INTO kelurahan VALUES("3209352005","Dawuan","320935");
INSERT INTO kelurahan VALUES("3209352006","Battembat","320935");
INSERT INTO kelurahan VALUES("3209352007","Kalibaru","320935");
INSERT INTO kelurahan VALUES("3209352008","Kalitengah","320935");
INSERT INTO kelurahan VALUES("3209362001","Tegalsari","320936");
INSERT INTO kelurahan VALUES("3209362002","Kaliwulu","320936");
INSERT INTO kelurahan VALUES("3209362003","Panembahan","320936");
INSERT INTO kelurahan VALUES("3209362004","Trusmi Wetan","320936");
INSERT INTO kelurahan VALUES("3209362005","Trusmi Kulon","320936");
INSERT INTO kelurahan VALUES("3209362006","Wotgali","320936");
INSERT INTO kelurahan VALUES("3209362007","Gamel","320936");
INSERT INTO kelurahan VALUES("3209362008","Sarabau","320936");
INSERT INTO kelurahan VALUES("3209362009","Cankring (Cangkring)","320936");
INSERT INTO kelurahan VALUES("3209362010","Pangkalan","320936");
INSERT INTO kelurahan VALUES("3209372001","Cikeusal","320937");
INSERT INTO kelurahan VALUES("3209372002","Palimanan Barat","320937");
INSERT INTO kelurahan VALUES("3209372003","Kedungbunder","320937");
INSERT INTO kelurahan VALUES("3209372004","Cupang","320937");
INSERT INTO kelurahan VALUES("3209372005","Gempol","320937");
INSERT INTO kelurahan VALUES("3209372006","Walahar","320937");
INSERT INTO kelurahan VALUES("3209372007","Kempek","320937");
INSERT INTO kelurahan VALUES("3209372008","Winong","320937");
INSERT INTO kelurahan VALUES("3209382001","Gumulung Lebak (Gumulunglebak)","320938");
INSERT INTO kelurahan VALUES("3209382002","Lebakmekar","320938");
INSERT INTO kelurahan VALUES("3209382003","Gumulung Tonggoh (Gumulungtonggoh)","320938");
INSERT INTO kelurahan VALUES("3209382004","Kamarang","320938");
INSERT INTO kelurahan VALUES("3209382005","Greged (Greget)","320938");
INSERT INTO kelurahan VALUES("3209382006","Kamarang Lebak (Kamaranglebak)","320938");
INSERT INTO kelurahan VALUES("3209382007","Durajaya","320938");
INSERT INTO kelurahan VALUES("3209382008","Jatipancur","320938");
INSERT INTO kelurahan VALUES("3209382009","Sindang Kempeng (Sindangkempeng)","320938");
INSERT INTO kelurahan VALUES("3209382010","Nanggela","320938");
INSERT INTO kelurahan VALUES("3209392001","Sambeng","320939");
INSERT INTO kelurahan VALUES("3209392002","Sirnabaya","320939");
INSERT INTO kelurahan VALUES("3209392003","Muara","320939");
INSERT INTO kelurahan VALUES("3209392004","Purwawinangun","320939");
INSERT INTO kelurahan VALUES("3209392005","Keraton","320939");
INSERT INTO kelurahan VALUES("3209392006","Surakarta","320939");
INSERT INTO kelurahan VALUES("3209392007","Karangreja","320939");
INSERT INTO kelurahan VALUES("3209392008","Suranenggala Kidul","320939");
INSERT INTO kelurahan VALUES("3209392009","Suranenggala Kulon","320939");
INSERT INTO kelurahan VALUES("3209392010","Suranenggala Lor","320939");
INSERT INTO kelurahan VALUES("3209392011","Suranenggala","320939");
INSERT INTO kelurahan VALUES("3209402001","Jamblang","320940");
INSERT INTO kelurahan VALUES("3209402002","Sitiwinangun","320940");
INSERT INTO kelurahan VALUES("3209402003","Wangunharja","320940");
INSERT INTO kelurahan VALUES("3209402004","Bojong Wetan","320940");
INSERT INTO kelurahan VALUES("3209402005","Bojong Lor","320940");
INSERT INTO kelurahan VALUES("3209402006","Orimalang","320940");
INSERT INTO kelurahan VALUES("3209402007","Bakung Kidul","320940");
INSERT INTO kelurahan VALUES("3209402008","Bakung Lor","320940");
INSERT INTO kelurahan VALUES("3210012001","Cipasung","321001");
INSERT INTO kelurahan VALUES("3210012002","Bangbayang","321001");
INSERT INTO kelurahan VALUES("3210012003","Borogojol","321001");
INSERT INTO kelurahan VALUES("3210012004","Cibulan","321001");
INSERT INTO kelurahan VALUES("3210012005","Lemahputih (Lemah Putih)","321001");
INSERT INTO kelurahan VALUES("3210012006","Sadawangi","321001");
INSERT INTO kelurahan VALUES("3210012007","Kepuh","321001");
INSERT INTO kelurahan VALUES("3210012008","Padarek","321001");
INSERT INTO kelurahan VALUES("3210012009","Kalapadua","321001");
INSERT INTO kelurahan VALUES("3210012010","Cigaleuh","321001");
INSERT INTO kelurahan VALUES("3210012011","Margajaya","321001");
INSERT INTO kelurahan VALUES("3210012012","Sukajadi","321001");
INSERT INTO kelurahan VALUES("3210012013","Mekarwangi (Mekar Wangi)","321001");
INSERT INTO kelurahan VALUES("3210012014","Sinargalih","321001");
INSERT INTO kelurahan VALUES("3210012015","Mekarmulya","321001");
INSERT INTO kelurahan VALUES("3210012016","Sukamaju","321001");
INSERT INTO kelurahan VALUES("3210012017","Cisalak","321001");
INSERT INTO kelurahan VALUES("3210012018","Dayeuhwangi","321001");
INSERT INTO kelurahan VALUES("3210012019","Lemahsugih","321001");
INSERT INTO kelurahan VALUES("3210022002","Cipeundeuy","321002");
INSERT INTO kelurahan VALUES("3210022008","Cimangguhilir","321002");
INSERT INTO kelurahan VALUES("3210022009","Salawangi","321002");
INSERT INTO kelurahan VALUES("3210022010","Bantarujeg","321002");
INSERT INTO kelurahan VALUES("3210022011","Gununglarang","321002");
INSERT INTO kelurahan VALUES("3210022012","Cikidang","321002");
INSERT INTO kelurahan VALUES("3210022013","Cinambo","321002");
INSERT INTO kelurahan VALUES("3210022014","Haurgeulis","321002");
INSERT INTO kelurahan VALUES("3210022015","Sukamenak","321002");
INSERT INTO kelurahan VALUES("3210022016","Wadowetan","321002");
INSERT INTO kelurahan VALUES("3210022017","Babakansari","321002");
INSERT INTO kelurahan VALUES("3210022018","Silihwangi","321002");
INSERT INTO kelurahan VALUES("3210022022","Sindanghurip","321002");
INSERT INTO kelurahan VALUES("3210032001","Sukasari","321003");
INSERT INTO kelurahan VALUES("3210032002","Cisoka","321003");
INSERT INTO kelurahan VALUES("3210032003","Sindangpanji","321003");
INSERT INTO kelurahan VALUES("3210032004","Cikijing","321003");
INSERT INTO kelurahan VALUES("3210032005","Sindang","321003");
INSERT INTO kelurahan VALUES("3210032006","Banjaransari","321003");
INSERT INTO kelurahan VALUES("3210032007","Kasturi","321003");
INSERT INTO kelurahan VALUES("3210032008","Cidulang","321003");
INSERT INTO kelurahan VALUES("3210032009","Jagasari","321003");
INSERT INTO kelurahan VALUES("3210032010","Bagjasari","321003");
INSERT INTO kelurahan VALUES("3210032011","Sunalari","321003");
INSERT INTO kelurahan VALUES("3210032012","Cipulus","321003");
INSERT INTO kelurahan VALUES("3210032013","Kancana","321003");
INSERT INTO kelurahan VALUES("3210032014","Sukamukti","321003");
INSERT INTO kelurahan VALUES("3210032015","Cilancang (Cilangcang)","321003");
INSERT INTO kelurahan VALUES("3210042001","Lampuyang","321004");
INSERT INTO kelurahan VALUES("3210042002","Cibeureum","321004");
INSERT INTO kelurahan VALUES("3210042003","Cikeusal","321004");
INSERT INTO kelurahan VALUES("3210042004","Jatipamor","321004");
INSERT INTO kelurahan VALUES("3210042005","Argasari","321004");
INSERT INTO kelurahan VALUES("3210042006","Cicanir","321004");
INSERT INTO kelurahan VALUES("3210042007","Campaga","321004");
INSERT INTO kelurahan VALUES("3210042008","Sukaperna","321004");
INSERT INTO kelurahan VALUES("3210042009","Talaga Kulon (Talagakulon)","321004");
INSERT INTO kelurahan VALUES("3210042010","Talaga Wetan (Talagawetan)","321004");
INSERT INTO kelurahan VALUES("3210042011","Ganeas","321004");
INSERT INTO kelurahan VALUES("3210042012","Salado","321004");
INSERT INTO kelurahan VALUES("3210042013","Gunungmanik","321004");
INSERT INTO kelurahan VALUES("3210042014","Kertahayu (Kertarahayu)","321004");
INSERT INTO kelurahan VALUES("3210042015","Mekarraharja","321004");
INSERT INTO kelurahan VALUES("3210042016","Margamukti","321004");
INSERT INTO kelurahan VALUES("3210042017","Mekarhurip","321004");
INSERT INTO kelurahan VALUES("3210052001","Sagara","321005");
INSERT INTO kelurahan VALUES("3210052002","Cibunut","321005");
INSERT INTO kelurahan VALUES("3210052003","Tejamulya","321005");
INSERT INTO kelurahan VALUES("3210052004","Sukasari Kaler","321005");
INSERT INTO kelurahan VALUES("3210052005","Argamukti","321005");
INSERT INTO kelurahan VALUES("3210052006","Sukadana","321005");
INSERT INTO kelurahan VALUES("3210052007","Sadasari","321005");
INSERT INTO kelurahan VALUES("3210052008","Haurseah","321005");
INSERT INTO kelurahan VALUES("3210052009","Mekarwangi","321005");
INSERT INTO kelurahan VALUES("3210052010","Cikaracak","321005");
INSERT INTO kelurahan VALUES("3210052011","Heubeulisuk","321005");
INSERT INTO kelurahan VALUES("3210052012","Sukasari Kidul","321005");
INSERT INTO kelurahan VALUES("3210052013","Gunungwangi","321005");
INSERT INTO kelurahan VALUES("3210052014","Argalingga","321005");
INSERT INTO kelurahan VALUES("3210062001","Cihaur","321006");
INSERT INTO kelurahan VALUES("3210062002","Wanahayu","321006");
INSERT INTO kelurahan VALUES("3210062003","Cengal","321006");
INSERT INTO kelurahan VALUES("3210062004","Anggrawati","321006");
INSERT INTO kelurahan VALUES("3210062005","Cipicung","321006");
INSERT INTO kelurahan VALUES("3210062006","Malongpong","321006");
INSERT INTO kelurahan VALUES("3210062007","Tegalsari","321006");
INSERT INTO kelurahan VALUES("3210062008","Maja Utara","321006");
INSERT INTO kelurahan VALUES("3210062009","Pasanggrahan","321006");
INSERT INTO kelurahan VALUES("3210062010","Cieurih","321006");
INSERT INTO kelurahan VALUES("3210062011","Kartabasuki (Kertabasuki)","321006");
INSERT INTO kelurahan VALUES("3210062012","Sindangkerta","321006");
INSERT INTO kelurahan VALUES("3210062013","Banjaran","321006");
INSERT INTO kelurahan VALUES("3210062014","Paniis","321006");
INSERT INTO kelurahan VALUES("3210062015","Cicalung","321006");
INSERT INTO kelurahan VALUES("3210062016","Pageraji","321006");
INSERT INTO kelurahan VALUES("3210062017","Maja Selatan","321006");
INSERT INTO kelurahan VALUES("3210062018","Nunuk Baru","321006");
INSERT INTO kelurahan VALUES("3210071001","Munjul","321007");
INSERT INTO kelurahan VALUES("3210071002","Babakan Jawa","321007");
INSERT INTO kelurahan VALUES("3210071003","Cicurug","321007");
INSERT INTO kelurahan VALUES("3210071004","Sindangkasih","321007");
INSERT INTO kelurahan VALUES("3210071007","Majalengka Wetan","321007");
INSERT INTO kelurahan VALUES("3210071008","Majalengka Kulon","321007");
INSERT INTO kelurahan VALUES("3210071009","Tarikolot","321007");
INSERT INTO kelurahan VALUES("3210071010","Cikasarung","321007");
INSERT INTO kelurahan VALUES("3210071011","Tonjong","321007");
INSERT INTO kelurahan VALUES("3210071013","Cijati","321007");
INSERT INTO kelurahan VALUES("3210072005","Kulur","321007");
INSERT INTO kelurahan VALUES("3210072006","Kawunggirang","321007");
INSERT INTO kelurahan VALUES("3210072012","Sidamukti","321007");
INSERT INTO kelurahan VALUES("3210072014","Cibodas","321007");
INSERT INTO kelurahan VALUES("3210082001","Ciomas","321008");
INSERT INTO kelurahan VALUES("3210082002","Padahanten","321008");
INSERT INTO kelurahan VALUES("3210082009","Sukahaji","321008");
INSERT INTO kelurahan VALUES("3210082010","Salagedang","321008");
INSERT INTO kelurahan VALUES("3210082011","Cikeusik","321008");
INSERT INTO kelurahan VALUES("3210082012","Jayi","321008");
INSERT INTO kelurahan VALUES("3210082013","Nanggewer","321008");
INSERT INTO kelurahan VALUES("3210082014","Palabuhan/Palabuan","321008");
INSERT INTO kelurahan VALUES("3210082015","Cikoneng","321008");
INSERT INTO kelurahan VALUES("3210082016","Babakanmanjeti (Babakan Manjeti)","321008");
INSERT INTO kelurahan VALUES("3210082017","Tanjungsari","321008");
INSERT INTO kelurahan VALUES("3210082018","Cikalong","321008");
INSERT INTO kelurahan VALUES("3210082019","Candrajaya","321008");
INSERT INTO kelurahan VALUES("3210092001","Pajajar","321009");
INSERT INTO kelurahan VALUES("3210092002","Teja","321009");
INSERT INTO kelurahan VALUES("3210092003","Payung","321009");
INSERT INTO kelurahan VALUES("3210092004","Babakankareo","321009");
INSERT INTO kelurahan VALUES("3210092005","Sindangpano","321009");
INSERT INTO kelurahan VALUES("3210092006","Sadomas","321009");
INSERT INTO kelurahan VALUES("3210092007","Kumbung","321009");
INSERT INTO kelurahan VALUES("3210092008","Rajagaluh Kidul","321009");
INSERT INTO kelurahan VALUES("3210092009","Singawada","321009");
INSERT INTO kelurahan VALUES("3210092010","Rajagaluh Lor","321009");
INSERT INTO kelurahan VALUES("3210092011","Cipinang","321009");
INSERT INTO kelurahan VALUES("3210092012","Cisetu","321009");
INSERT INTO kelurahan VALUES("3210092013","Rajagaluh","321009");
INSERT INTO kelurahan VALUES("3210102001","Parakan","321010");
INSERT INTO kelurahan VALUES("3210102002","Patuanan","321010");
INSERT INTO kelurahan VALUES("3210102003","Nanggerang","321010");
INSERT INTO kelurahan VALUES("3210102004","Lame","321010");
INSERT INTO kelurahan VALUES("3210102005","Mindi","321010");
INSERT INTO kelurahan VALUES("3210102006","Rajawangi","321010");
INSERT INTO kelurahan VALUES("3210102007","Leuwikujang","321010");
INSERT INTO kelurahan VALUES("3210102008","Mirat","321010");
INSERT INTO kelurahan VALUES("3210102009","Leuwimunding","321010");
INSERT INTO kelurahan VALUES("3210102010","Ciparay","321010");
INSERT INTO kelurahan VALUES("3210102011","Heuleut","321010");
INSERT INTO kelurahan VALUES("3210102012","Karangasem","321010");
INSERT INTO kelurahan VALUES("3210102013","Tanjungsari","321010");
INSERT INTO kelurahan VALUES("3210102014","Parungjaya","321010");
INSERT INTO kelurahan VALUES("3210112001","Burujul Kulon","321011");
INSERT INTO kelurahan VALUES("3210112002","Burujul Wetan","321011");
INSERT INTO kelurahan VALUES("3210112003","Cicadas","321011");
INSERT INTO kelurahan VALUES("3210112004","Andir","321011");
INSERT INTO kelurahan VALUES("3210112005","Sukaraja Wetan","321011");
INSERT INTO kelurahan VALUES("3210112006","Pinangraja","321011");
INSERT INTO kelurahan VALUES("3210112007","Cibentar","321011");
INSERT INTO kelurahan VALUES("3210112008","Leuweunggede (Leuwenggede)","321011");
INSERT INTO kelurahan VALUES("3210112009","Cibolerang (Ciborelang)","321011");
INSERT INTO kelurahan VALUES("3210112010","Sutawangi","321011");
INSERT INTO kelurahan VALUES("3210112011","Jatisura","321011");
INSERT INTO kelurahan VALUES("3210112012","Jatiwangi","321011");
INSERT INTO kelurahan VALUES("3210112013","Loji","321011");
INSERT INTO kelurahan VALUES("3210112014","Sukaraja Kulon","321011");
INSERT INTO kelurahan VALUES("3210112015","Mekarsari","321011");
INSERT INTO kelurahan VALUES("3210112016","Surawangi","321011");
INSERT INTO kelurahan VALUES("3210122006","Gandu","321012");
INSERT INTO kelurahan VALUES("3210122007","Dawuan","321012");
INSERT INTO kelurahan VALUES("3210122008","Genteng","321012");
INSERT INTO kelurahan VALUES("3210122010","Mandapa","321012");
INSERT INTO kelurahan VALUES("3210122011","Balida","321012");
INSERT INTO kelurahan VALUES("3210122012","Karanganyar","321012");
INSERT INTO kelurahan VALUES("3210122013","Salawana","321012");
INSERT INTO kelurahan VALUES("3210122015","Bojongcideres","321012");
INSERT INTO kelurahan VALUES("3210122017","Sinarjati","321012");
INSERT INTO kelurahan VALUES("3210122018","Pasirmalati","321012");
INSERT INTO kelurahan VALUES("3210122021","Baturuyuk","321012");
INSERT INTO kelurahan VALUES("3210132001","Heuleut","321013");
INSERT INTO kelurahan VALUES("3210132002","Kadipaten","321013");
INSERT INTO kelurahan VALUES("3210132003","Babakananyar (Babakan Anyar)","321013");
INSERT INTO kelurahan VALUES("3210132004","Karangsambung","321013");
INSERT INTO kelurahan VALUES("3210132005","Liangjulang","321013");
INSERT INTO kelurahan VALUES("3210132006","Pagandon","321013");
INSERT INTO kelurahan VALUES("3210132007","Cipaku","321013");
INSERT INTO kelurahan VALUES("3210142001","Pakubeureum","321014");
INSERT INTO kelurahan VALUES("3210142002","Sukawana","321014");
INSERT INTO kelurahan VALUES("3210142003","Kertawinangun","321014");
INSERT INTO kelurahan VALUES("3210142004","Palasah","321014");
INSERT INTO kelurahan VALUES("3210142005","Babakan","321014");
INSERT INTO kelurahan VALUES("3210142006","Kertajati","321014");
INSERT INTO kelurahan VALUES("3210142007","Bantarjati","321014");
INSERT INTO kelurahan VALUES("3210142008","Pasiripis","321014");
INSERT INTO kelurahan VALUES("3210142009","Sukamulya","321014");
INSERT INTO kelurahan VALUES("3210142010","Kertasari","321014");
INSERT INTO kelurahan VALUES("3210142011","Mekarjaya","321014");
INSERT INTO kelurahan VALUES("3210142012","Mekarmulya","321014");
INSERT INTO kelurahan VALUES("3210142013","Sukakerta","321014");
INSERT INTO kelurahan VALUES("3210142014","Sahbandar","321014");
INSERT INTO kelurahan VALUES("3210152001","Biyawak","321015");
INSERT INTO kelurahan VALUES("3210152002","Panyingkiran","321015");
INSERT INTO kelurahan VALUES("3210152003","Panongan","321015");
INSERT INTO kelurahan VALUES("3210152004","Randegan Wetan","321015");
INSERT INTO kelurahan VALUES("3210152005","Putridalem","321015");
INSERT INTO kelurahan VALUES("3210152006","Jatitengah","321015");
INSERT INTO kelurahan VALUES("3210152007","Jatitujuh","321015");
INSERT INTO kelurahan VALUES("3210152008","Babajurang","321015");
INSERT INTO kelurahan VALUES("3210152009","Pilangsari","321015");
INSERT INTO kelurahan VALUES("3210152010","Jatiraga","321015");
INSERT INTO kelurahan VALUES("3210152011","Sumber Wetan","321015");
INSERT INTO kelurahan VALUES("3210152012","Pangkalanpari","321015");
INSERT INTO kelurahan VALUES("3210152013","Randegan Kulon","321015");
INSERT INTO kelurahan VALUES("3210152014","Sumber Kulon","321015");
INSERT INTO kelurahan VALUES("3210152015","Pasindangan","321015");
INSERT INTO kelurahan VALUES("3210162001","Cibogor","321016");
INSERT INTO kelurahan VALUES("3210162002","Beber","321016");
INSERT INTO kelurahan VALUES("3210162003","Beusi","321016");
INSERT INTO kelurahan VALUES("3210162004","Tegalaren","321016");
INSERT INTO kelurahan VALUES("3210162005","Buntu","321016");
INSERT INTO kelurahan VALUES("3210162006","Ligung","321016");
INSERT INTO kelurahan VALUES("3210162007","Wanasalam","321016");
INSERT INTO kelurahan VALUES("3210162008","Ampel","321016");
INSERT INTO kelurahan VALUES("3210162009","Bantarwaru","321016");
INSERT INTO kelurahan VALUES("3210162010","Majasari","321016");
INSERT INTO kelurahan VALUES("3210162011","Kedungkencana (Kedungkancana)","321016");
INSERT INTO kelurahan VALUES("3210162012","Kertasari","321016");
INSERT INTO kelurahan VALUES("3210162013","Leuweunghapit","321016");
INSERT INTO kelurahan VALUES("3210162014","Ligung Lor","321016");
INSERT INTO kelurahan VALUES("3210162015","Sukawera","321016");
INSERT INTO kelurahan VALUES("3210162016","Gandawesi","321016");
INSERT INTO kelurahan VALUES("3210162017","Kodasari","321016");
INSERT INTO kelurahan VALUES("3210162018","Leuwiliang Baru","321016");
INSERT INTO kelurahan VALUES("3210162019","Kedungsari","321016");
INSERT INTO kelurahan VALUES("3210172001","Bongas Wetan","321017");
INSERT INTO kelurahan VALUES("3210172002","Bongas Kulon","321017");
INSERT INTO kelurahan VALUES("3210172003","Garawangi","321017");
INSERT INTO kelurahan VALUES("3210172004","Rancaputat","321017");
INSERT INTO kelurahan VALUES("3210172005","Banjaran","321017");
INSERT INTO kelurahan VALUES("3210172006","Sepat","321017");
INSERT INTO kelurahan VALUES("3210172007","Paningkiran","321017");
INSERT INTO kelurahan VALUES("3210172008","Parapatan","321017");
INSERT INTO kelurahan VALUES("3210172009","Panjalin Kidul","321017");
INSERT INTO kelurahan VALUES("3210172010","Cidenok","321017");
INSERT INTO kelurahan VALUES("3210172011","Lojikobong (Loji Kobong)","321017");
INSERT INTO kelurahan VALUES("3210172012","Panjalin Lor","321017");
INSERT INTO kelurahan VALUES("3210172013","Sumberjaya","321017");
INSERT INTO kelurahan VALUES("3210172014","Pancaksuji","321017");
INSERT INTO kelurahan VALUES("3210172015","Gelok Mulya","321017");
INSERT INTO kelurahan VALUES("3210182001","Cijurey","321018");
INSERT INTO kelurahan VALUES("3210182002","Pasirmuncang","321018");
INSERT INTO kelurahan VALUES("3210182003","Jatipamor","321018");
INSERT INTO kelurahan VALUES("3210182004","Bantrangsana","321018");
INSERT INTO kelurahan VALUES("3210182005","Jatiserang","321018");
INSERT INTO kelurahan VALUES("3210182006","Bonang","321018");
INSERT INTO kelurahan VALUES("3210182007","Leuwiseeng","321018");
INSERT INTO kelurahan VALUES("3210182008","Panyingkiran","321018");
INSERT INTO kelurahan VALUES("3210182009","Karyamukti","321018");
INSERT INTO kelurahan VALUES("3210192001","Majasuka","321019");
INSERT INTO kelurahan VALUES("3210192002","Cisambeng","321019");
INSERT INTO kelurahan VALUES("3210192003","Palasah","321019");
INSERT INTO kelurahan VALUES("3210192004","Weragati","321019");
INSERT INTO kelurahan VALUES("3210192005","Trajaya","321019");
INSERT INTO kelurahan VALUES("3210192006","Tarikolot","321019");
INSERT INTO kelurahan VALUES("3210192007","Buniwangi","321019");
INSERT INTO kelurahan VALUES("3210192008","Sindanghaji","321019");
INSERT INTO kelurahan VALUES("3210192009","Waringin","321019");
INSERT INTO kelurahan VALUES("3210192010","Pasir","321019");
INSERT INTO kelurahan VALUES("3210192011","Karamat","321019");
INSERT INTO kelurahan VALUES("3210192012","Enggalwangi","321019");
INSERT INTO kelurahan VALUES("3210192013","Sindangwasa","321019");
INSERT INTO kelurahan VALUES("3210201004","Cigasong","321020");
INSERT INTO kelurahan VALUES("3210201005","Simpeureum","321020");
INSERT INTO kelurahan VALUES("3210201006","Cicenang","321020");
INSERT INTO kelurahan VALUES("3210202001","Kawunghilir","321020");
INSERT INTO kelurahan VALUES("3210202002","Tajur","321020");
INSERT INTO kelurahan VALUES("3210202003","Tenjolayar","321020");
INSERT INTO kelurahan VALUES("3210202007","Baribis","321020");
INSERT INTO kelurahan VALUES("3210202008","Batujaya","321020");
INSERT INTO kelurahan VALUES("3210202009","Kutamanggu","321020");
INSERT INTO kelurahan VALUES("3210202010","Karayunan","321020");
INSERT INTO kelurahan VALUES("3210212001","Bantaragung (Bantar Agung)","321021");
INSERT INTO kelurahan VALUES("3210212002","Padaherang","321021");
INSERT INTO kelurahan VALUES("3210212003","Lengkong Kulon (Lengkongkulon)","321021");
INSERT INTO kelurahan VALUES("3210212004","Jerukleueut","321021");
INSERT INTO kelurahan VALUES("3210212005","Sindangwangi","321021");
INSERT INTO kelurahan VALUES("3210212006","Buahkapas","321021");
INSERT INTO kelurahan VALUES("3210212007","Ujungberung","321021");
INSERT INTO kelurahan VALUES("3210212008","Balagedog","321021");
INSERT INTO kelurahan VALUES("3210212009","Leuwilaja","321021");
INSERT INTO kelurahan VALUES("3210212010","Lengkong Wetan (Lengkongwetan)","321021");
INSERT INTO kelurahan VALUES("3210222001","Genteng","321022");
INSERT INTO kelurahan VALUES("3210222002","Sunia","321022");
INSERT INTO kelurahan VALUES("3210222003","Darmalarang","321022");
INSERT INTO kelurahan VALUES("3210222004","Sindangpala","321022");
INSERT INTO kelurahan VALUES("3210222005","Banjaran","321022");
INSERT INTO kelurahan VALUES("3210222006","Kagok","321022");
INSERT INTO kelurahan VALUES("3210222007","Cimeong","321022");
INSERT INTO kelurahan VALUES("3210222008","Panyindangan","321022");
INSERT INTO kelurahan VALUES("3210222009","Kareo","321022");
INSERT INTO kelurahan VALUES("3210222010","Sangiang","321022");
INSERT INTO kelurahan VALUES("3210222011","Sunia Baru (Suniabaru)","321022");
INSERT INTO kelurahan VALUES("3210222012","Hegarmanah","321022");
INSERT INTO kelurahan VALUES("3210222013","Girimulya","321022");
INSERT INTO kelurahan VALUES("3210232001","Sedareja (Sedaraja)","321023");
INSERT INTO kelurahan VALUES("3210232002","Cidadap","321023");
INSERT INTO kelurahan VALUES("3210232003","Maniis","321023");
INSERT INTO kelurahan VALUES("3210232004","Nagarakembang","321023");
INSERT INTO kelurahan VALUES("3210232005","Wangkelang","321023");
INSERT INTO kelurahan VALUES("3210232006","Cimanggu (Cimanggugirang)","321023");
INSERT INTO kelurahan VALUES("3210232007","Cingambul","321023");
INSERT INTO kelurahan VALUES("3210232008","Cikondang","321023");
INSERT INTO kelurahan VALUES("3210232009","Ciranjeng","321023");
INSERT INTO kelurahan VALUES("3210232010","Rawa","321023");
INSERT INTO kelurahan VALUES("3210232011","Kondangmekar","321023");
INSERT INTO kelurahan VALUES("3210232012","Cintaasih","321023");
INSERT INTO kelurahan VALUES("3210232013","Muktisari","321023");
INSERT INTO kelurahan VALUES("3210242001","Jatisawit","321024");
INSERT INTO kelurahan VALUES("3210242002","Leuwikidang","321024");
INSERT INTO kelurahan VALUES("3210242003","Ranji Kulon (Ranjikulon)","321024");
INSERT INTO kelurahan VALUES("3210242004","Ranji Wetan (Ranjiwetan)","321024");
INSERT INTO kelurahan VALUES("3210242005","Gunungsari","321024");
INSERT INTO kelurahan VALUES("3210242006","Kasokandel","321024");
INSERT INTO kelurahan VALUES("3210242007","Girimukti","321024");
INSERT INTO kelurahan VALUES("3210242008","Jatimulya","321024");
INSERT INTO kelurahan VALUES("3210242009","Wanajaya","321024");
INSERT INTO kelurahan VALUES("3210242010","Gandasari","321024");
INSERT INTO kelurahan VALUES("3210252001","Pasirayu","321025");
INSERT INTO kelurahan VALUES("3210252002","Sindang","321025");
INSERT INTO kelurahan VALUES("3210252003","Garawastu","321025");
INSERT INTO kelurahan VALUES("3210252004","Indrakila","321025");
INSERT INTO kelurahan VALUES("3210252005","Gunungkuning (Gunung Kuning)","321025");
INSERT INTO kelurahan VALUES("3210252007","Sangkanhurip","321025");
INSERT INTO kelurahan VALUES("3210252008","Bayureja","321025");
INSERT INTO kelurahan VALUES("3210262001","Sukadana","321026");
INSERT INTO kelurahan VALUES("3210262002","Werasari","321026");
INSERT INTO kelurahan VALUES("3210262003","Malausma","321026");
INSERT INTO kelurahan VALUES("3210262004","Lebakwangi","321026");
INSERT INTO kelurahan VALUES("3210262005","Cimuncang","321026");
INSERT INTO kelurahan VALUES("3210262006","Ciranca","321026");
INSERT INTO kelurahan VALUES("3210262007","Banyusari","321026");
INSERT INTO kelurahan VALUES("3210262008","Buninagara","321026");
INSERT INTO kelurahan VALUES("3210262009","Jagamulya","321026");
INSERT INTO kelurahan VALUES("3210262010","Girimukti","321026");
INSERT INTO kelurahan VALUES("3210262011","Kramat Jaya (Keramat Jaya)","321026");
INSERT INTO kelurahan VALUES("3211012001","Cimungkal","321101");
INSERT INTO kelurahan VALUES("3211012002","Ganjaresik","321101");
INSERT INTO kelurahan VALUES("3211012003","Cilengkrang","321101");
INSERT INTO kelurahan VALUES("3211012004","Cikareo Selatan","321101");
INSERT INTO kelurahan VALUES("3211012005","Cikareo Utara","321101");
INSERT INTO kelurahan VALUES("3211012006","Wado","321101");
INSERT INTO kelurahan VALUES("3211012007","Mulyajaya","321101");
INSERT INTO kelurahan VALUES("3211012009","Sukajadi","321101");
INSERT INTO kelurahan VALUES("3211012010","Cisurat","321101");
INSERT INTO kelurahan VALUES("3211012011","Sukapura","321101");
INSERT INTO kelurahan VALUES("3211022001","Sirnasari","321102");
INSERT INTO kelurahan VALUES("3211022002","Tarikolot","321102");
INSERT INTO kelurahan VALUES("3211022003","Pawenang","321102");
INSERT INTO kelurahan VALUES("3211022004","Sarimekar","321102");
INSERT INTO kelurahan VALUES("3211022005","Banjarsari","321102");
INSERT INTO kelurahan VALUES("3211022006","Kirisik","321102");
INSERT INTO kelurahan VALUES("3211022007","Sukamanah","321102");
INSERT INTO kelurahan VALUES("3211022008","Cipeundeuy","321102");
INSERT INTO kelurahan VALUES("3211022009","Cimanintin","321102");
INSERT INTO kelurahan VALUES("3211032001","Darmaraja","321103");
INSERT INTO kelurahan VALUES("3211032002","Darmajaya","321103");
INSERT INTO kelurahan VALUES("3211032003","Sukamenak","321103");
INSERT INTO kelurahan VALUES("3211032005","Sukaratu","321103");
INSERT INTO kelurahan VALUES("3211032006","Cikeusi","321103");
INSERT INTO kelurahan VALUES("3211032007","Cipeuteuy","321103");
INSERT INTO kelurahan VALUES("3211032009","Cieunteung","321103");
INSERT INTO kelurahan VALUES("3211032010","Karangpakuan (Karang Pakuan)","321103");
INSERT INTO kelurahan VALUES("3211032011","Pakualam (Paku Alam)","321103");
INSERT INTO kelurahan VALUES("3211032013","Neglasari","321103");
INSERT INTO kelurahan VALUES("3211032015","Tarunajaya","321103");
INSERT INTO kelurahan VALUES("3211032016","Ranggon","321103");
INSERT INTO kelurahan VALUES("3211042001","Jayamekar","321104");
INSERT INTO kelurahan VALUES("3211042002","Buanamekar","321104");
INSERT INTO kelurahan VALUES("3211042003","Cibugel","321104");
INSERT INTO kelurahan VALUES("3211042004","Sukaraja","321104");
INSERT INTO kelurahan VALUES("3211042005","Cipasang","321104");
INSERT INTO kelurahan VALUES("3211042006","Tamansari","321104");
INSERT INTO kelurahan VALUES("3211042007","Jayamandiri","321104");
INSERT INTO kelurahan VALUES("3211052001","Cisitu","321105");
INSERT INTO kelurahan VALUES("3211052002","Situmekar","321105");
INSERT INTO kelurahan VALUES("3211052003","Pajagan","321105");
INSERT INTO kelurahan VALUES("3211052004","Cigintung","321105");
INSERT INTO kelurahan VALUES("3211052005","Sundamekar","321105");
INSERT INTO kelurahan VALUES("3211052006","Linggajaya","321105");
INSERT INTO kelurahan VALUES("3211052007","Ranjeng","321105");
INSERT INTO kelurahan VALUES("3211052008","Cilopang","321105");
INSERT INTO kelurahan VALUES("3211052009","Cimarga","321105");
INSERT INTO kelurahan VALUES("3211052010","Cinangsi","321105");
INSERT INTO kelurahan VALUES("3211062001","Situraja Utara","321106");
INSERT INTO kelurahan VALUES("3211062002","Situraja","321106");
INSERT INTO kelurahan VALUES("3211062003","Mekarmulya","321106");
INSERT INTO kelurahan VALUES("3211062004","Cikadu","321106");
INSERT INTO kelurahan VALUES("3211062005","Bangbayang","321106");
INSERT INTO kelurahan VALUES("3211062006","Kaduwulung","321106");
INSERT INTO kelurahan VALUES("3211062007","Karangheuleut","321106");
INSERT INTO kelurahan VALUES("3211062008","Cijeler","321106");
INSERT INTO kelurahan VALUES("3211062009","Ambit","321106");
INSERT INTO kelurahan VALUES("3211062010","Jatimekar","321106");
INSERT INTO kelurahan VALUES("3211062011","Cijati","321106");
INSERT INTO kelurahan VALUES("3211062012","Pamulihan","321106");
INSERT INTO kelurahan VALUES("3211062013","Malaka","321106");
INSERT INTO kelurahan VALUES("3211062014","Sukatali","321106");
INSERT INTO kelurahan VALUES("3211062015","Cicarimanah","321106");
INSERT INTO kelurahan VALUES("3211072001","Conggeang Kulon","321107");
INSERT INTO kelurahan VALUES("3211072002","Conggeang Wetan","321107");
INSERT INTO kelurahan VALUES("3211072003","Cipamekar","321107");
INSERT INTO kelurahan VALUES("3211072004","Cibeureuyeuh","321107");
INSERT INTO kelurahan VALUES("3211072005","Jambu","321107");
INSERT INTO kelurahan VALUES("3211072006","Babakan Asem","321107");
INSERT INTO kelurahan VALUES("3211072007","Padaasih","321107");
INSERT INTO kelurahan VALUES("3211072008","Ungkal","321107");
INSERT INTO kelurahan VALUES("3211072009","Karang Layung (Karanglayung)","321107");
INSERT INTO kelurahan VALUES("3211072010","Cacaban","321107");
INSERT INTO kelurahan VALUES("3211072011","Narimbang","321107");
INSERT INTO kelurahan VALUES("3211072012","Cibubuan","321107");
INSERT INTO kelurahan VALUES("3211082001","Pasehkidul (Paseh Kidul)","321108");
INSERT INTO kelurahan VALUES("3211082002","Paseh Kaler","321108");
INSERT INTO kelurahan VALUES("3211082003","Legok Kidul","321108");
INSERT INTO kelurahan VALUES("3211082004","Legok Kaler","321108");
INSERT INTO kelurahan VALUES("3211082005","Bongkok","321108");
INSERT INTO kelurahan VALUES("3211082006","Padanan (Padanaan)","321108");
INSERT INTO kelurahan VALUES("3211082007","Pasirreungit (Pasireungit)","321108");
INSERT INTO kelurahan VALUES("3211082008","Cijambe","321108");
INSERT INTO kelurahan VALUES("3211082009","Haurkuning","321108");
INSERT INTO kelurahan VALUES("3211082010","Citepok","321108");
INSERT INTO kelurahan VALUES("3211092001","Wanasari","321109");
INSERT INTO kelurahan VALUES("3211092002","Wanajaya","321109");
INSERT INTO kelurahan VALUES("3211092003","Pamekarsari","321109");
INSERT INTO kelurahan VALUES("3211092004","Tanjung","321109");
INSERT INTO kelurahan VALUES("3211092005","Surian","321109");
INSERT INTO kelurahan VALUES("3211092006","Suriamukti","321109");
INSERT INTO kelurahan VALUES("3211092007","Suriamedal (Suriamendal)","321109");
INSERT INTO kelurahan VALUES("3211092008","Ranggasari","321109");
INSERT INTO kelurahan VALUES("3211092009","Nanjung Wangi (Nanjungwangi)","321109");
INSERT INTO kelurahan VALUES("3211102001","Buahdua","321110");
INSERT INTO kelurahan VALUES("3211102002","Hariang","321110");
INSERT INTO kelurahan VALUES("3211102003","Karangbungur","321110");
INSERT INTO kelurahan VALUES("3211102004","Mekarmukti","321110");
INSERT INTO kelurahan VALUES("3211102005","Citaleus","321110");
INSERT INTO kelurahan VALUES("3211102006","Nagrak","321110");
INSERT INTO kelurahan VALUES("3211102007","Cibitung","321110");
INSERT INTO kelurahan VALUES("3211102008","Sekarwangi","321110");
INSERT INTO kelurahan VALUES("3211102009","Gendereh","321110");
INSERT INTO kelurahan VALUES("3211102010","Panyindangan","321110");
INSERT INTO kelurahan VALUES("3211102011","Cilangkap","321110");
INSERT INTO kelurahan VALUES("3211102012","Bojongloa","321110");
INSERT INTO kelurahan VALUES("3211102013","Cikurubuk","321110");
INSERT INTO kelurahan VALUES("3211102014","Ciawitali","321110");
INSERT INTO kelurahan VALUES("3211112001","Gudang","321111");
INSERT INTO kelurahan VALUES("3211112002","Tanjungsari","321111");
INSERT INTO kelurahan VALUES("3211112003","Jatisari","321111");
INSERT INTO kelurahan VALUES("3211112004","Margaluyu","321111");
INSERT INTO kelurahan VALUES("3211112005","Kutamandiri","321111");
INSERT INTO kelurahan VALUES("3211112006","Margajaya (Marga Jaya)","321111");
INSERT INTO kelurahan VALUES("3211112007","Raharja","321111");
INSERT INTO kelurahan VALUES("3211112008","Cijambu","321111");
INSERT INTO kelurahan VALUES("3211112009","Pasigaran","321111");
INSERT INTO kelurahan VALUES("3211112010","Gunungmanik","321111");
INSERT INTO kelurahan VALUES("3211112011","Kadakajaya","321111");
INSERT INTO kelurahan VALUES("3211112012","Cinanjung","321111");
INSERT INTO kelurahan VALUES("3211122001","Sukasari","321112");
INSERT INTO kelurahan VALUES("3211122002","Genteng","321112");
INSERT INTO kelurahan VALUES("3211122003","Banyuresmi","321112");
INSERT INTO kelurahan VALUES("3211122004","Nanggerang","321112");
INSERT INTO kelurahan VALUES("3211122005","Mekarsari","321112");
INSERT INTO kelurahan VALUES("3211122006","Sindangsari","321112");
INSERT INTO kelurahan VALUES("3211122007","Sukarapih","321112");
INSERT INTO kelurahan VALUES("3211132001","Cigendel","321113");
INSERT INTO kelurahan VALUES("3211132002","Cijeruk","321113");
INSERT INTO kelurahan VALUES("3211132003","Pamulihan","321113");
INSERT INTO kelurahan VALUES("3211132004","Haurgombong (Haurngombong)","321113");
INSERT INTO kelurahan VALUES("3211132005","Cilembu","321113");
INSERT INTO kelurahan VALUES("3211132006","Cimarias","321113");
INSERT INTO kelurahan VALUES("3211132007","Cinanggerang","321113");
INSERT INTO kelurahan VALUES("3211132008","Mekarbakti","321113");
INSERT INTO kelurahan VALUES("3211132009","Sukawangi","321113");
INSERT INTO kelurahan VALUES("3211132010","Ciptasari","321113");
INSERT INTO kelurahan VALUES("3211132011","Citali","321113");
INSERT INTO kelurahan VALUES("3211142001","Cimanggung","321114");
INSERT INTO kelurahan VALUES("3211142002","Sindangpakuon","321114");
INSERT INTO kelurahan VALUES("3211142003","Tegalmanggung","321114");
INSERT INTO kelurahan VALUES("3211142004","Sindulang","321114");
INSERT INTO kelurahan VALUES("3211142005","Sindanggalih","321114");
INSERT INTO kelurahan VALUES("3211142006","Sawahdadap","321114");
INSERT INTO kelurahan VALUES("3211142007","Cikahuripan","321114");
INSERT INTO kelurahan VALUES("3211142008","Sukadana","321114");
INSERT INTO kelurahan VALUES("3211142009","Mangunarga","321114");
INSERT INTO kelurahan VALUES("3211142010","Cihanjuang","321114");
INSERT INTO kelurahan VALUES("3211142011","Pasirnanjung (Pasirnunjang)","321114");
INSERT INTO kelurahan VALUES("3211152001","Cikeruh","321115");
INSERT INTO kelurahan VALUES("3211152002","Hegarmanah","321115");
INSERT INTO kelurahan VALUES("3211152003","Cibeusi","321115");
INSERT INTO kelurahan VALUES("3211152004","Cipacing","321115");
INSERT INTO kelurahan VALUES("3211152005","Sayang","321115");
INSERT INTO kelurahan VALUES("3211152006","Mekargalih","321115");
INSERT INTO kelurahan VALUES("3211152007","Cintamulya (Cinta Mulya)","321115");
INSERT INTO kelurahan VALUES("3211152008","Jatimukti","321115");
INSERT INTO kelurahan VALUES("3211152009","Cisempur","321115");
INSERT INTO kelurahan VALUES("3211152010","Jatiroke","321115");
INSERT INTO kelurahan VALUES("3211152011","Cileles","321115");
INSERT INTO kelurahan VALUES("3211152012","Cilayung","321115");
INSERT INTO kelurahan VALUES("3211162001","Nagarawangi","321116");
INSERT INTO kelurahan VALUES("3211162002","Cibunar","321116");
INSERT INTO kelurahan VALUES("3211162003","Pangadegan","321116");
INSERT INTO kelurahan VALUES("3211162004","Sukahayu","321116");
INSERT INTO kelurahan VALUES("3211162005","Sukamaju","321116");
INSERT INTO kelurahan VALUES("3211162006","Pamekaran","321116");
INSERT INTO kelurahan VALUES("3211162007","Rancakalong","321116");
INSERT INTO kelurahan VALUES("3211162008","Sukasirnarasa","321116");
INSERT INTO kelurahan VALUES("3211162009","Cibungur","321116");
INSERT INTO kelurahan VALUES("3211162010","Pasirbiru (Pasir Biru)","321116");
INSERT INTO kelurahan VALUES("3211171001","Pasanggrahan Baru (Pasanggrahan)","321117");
INSERT INTO kelurahan VALUES("3211171002","Kotakulon","321117");
INSERT INTO kelurahan VALUES("3211171003","Regolwetan (Regol Wetan)","321117");
INSERT INTO kelurahan VALUES("3211171004","Cipameungpeuk","321117");
INSERT INTO kelurahan VALUES("3211172005","Sukagalih","321117");
INSERT INTO kelurahan VALUES("3211172006","Baginda","321117");
INSERT INTO kelurahan VALUES("3211172007","Cipancar","321117");
INSERT INTO kelurahan VALUES("3211172008","Citengah","321117");
INSERT INTO kelurahan VALUES("3211172009","Gunasari","321117");
INSERT INTO kelurahan VALUES("3211172010","Sukajaya","321117");
INSERT INTO kelurahan VALUES("3211172011","Margamekar","321117");
INSERT INTO kelurahan VALUES("3211172012","Ciherang","321117");
INSERT INTO kelurahan VALUES("3211172013","Margalaksana","321117");
INSERT INTO kelurahan VALUES("3211172014","Mekar Rahayu","321117");
INSERT INTO kelurahan VALUES("3211181001","Kotakaler","321118");
INSERT INTO kelurahan VALUES("3211181002","Situ","321118");
INSERT INTO kelurahan VALUES("3211181003","Talun","321118");
INSERT INTO kelurahan VALUES("3211182004","Padasuka","321118");
INSERT INTO kelurahan VALUES("3211182005","Mulyasari","321118");
INSERT INTO kelurahan VALUES("3211182006","Girimukti","321118");
INSERT INTO kelurahan VALUES("3211182007","Mekarjaya","321118");
INSERT INTO kelurahan VALUES("3211182008","Margamukti","321118");
INSERT INTO kelurahan VALUES("3211182009","Sirnamulya","321118");
INSERT INTO kelurahan VALUES("3211182010","Kebonjati","321118");
INSERT INTO kelurahan VALUES("3211182011","Jatihurip","321118");
INSERT INTO kelurahan VALUES("3211182012","Jatimulya","321118");
INSERT INTO kelurahan VALUES("3211182013","Rancamulya","321118");
INSERT INTO kelurahan VALUES("3211192001","Ganeas","321119");
INSERT INTO kelurahan VALUES("3211192002","Dayeuhluhur","321119");
INSERT INTO kelurahan VALUES("3211192003","Cikoneng","321119");
INSERT INTO kelurahan VALUES("3211192004","Sukaluyu","321119");
INSERT INTO kelurahan VALUES("3211192005","Sukawening","321119");
INSERT INTO kelurahan VALUES("3211192006","Tanjunghurip","321119");
INSERT INTO kelurahan VALUES("3211192007","Cikondang","321119");
INSERT INTO kelurahan VALUES("3211192008","Cikonengkulon (Cikoneng Kulon)","321119");
INSERT INTO kelurahan VALUES("3211202001","Sukamantri","321120");
INSERT INTO kelurahan VALUES("3211202002","Cipanas","321120");
INSERT INTO kelurahan VALUES("3211202003","Gunturmekar","321120");
INSERT INTO kelurahan VALUES("3211202004","Mulyamekar","321120");
INSERT INTO kelurahan VALUES("3211202005","Banyuasih","321120");
INSERT INTO kelurahan VALUES("3211202006","Kertamekar","321120");
INSERT INTO kelurahan VALUES("3211202007","Kertaharja","321120");
INSERT INTO kelurahan VALUES("3211202008","Cigentur","321120");
INSERT INTO kelurahan VALUES("3211202009","Tanjungmekar","321120");
INSERT INTO kelurahan VALUES("3211202010","Tanjungmulya","321120");
INSERT INTO kelurahan VALUES("3211202011","Baros (Boros)","321120");
INSERT INTO kelurahan VALUES("3211202012","Awilega","321120");
INSERT INTO kelurahan VALUES("3211212001","Cikaramas","321121");
INSERT INTO kelurahan VALUES("3211212002","Wargaluyu","321121");
INSERT INTO kelurahan VALUES("3211212003","Jingkang","321121");
INSERT INTO kelurahan VALUES("3211212004","Kamal","321121");
INSERT INTO kelurahan VALUES("3211212005","Kertamukti","321121");
INSERT INTO kelurahan VALUES("3211212006","Tanjungwangi","321121");
INSERT INTO kelurahan VALUES("3211212007","Sukamukti","321121");
INSERT INTO kelurahan VALUES("3211212008","Sukatani","321121");
INSERT INTO kelurahan VALUES("3211212009","Tanjung Medar (Tanjungmedar)","321121");
INSERT INTO kelurahan VALUES("3211222001","Cimalaka","321122");
INSERT INTO kelurahan VALUES("3211222002","Galudra","321122");
INSERT INTO kelurahan VALUES("3211222003","Cibeureum Kulon","321122");
INSERT INTO kelurahan VALUES("3211222004","Naluk","321122");
INSERT INTO kelurahan VALUES("3211222005","Nyalindung","321122");
INSERT INTO kelurahan VALUES("3211222006","Trunamanggala","321122");
INSERT INTO kelurahan VALUES("3211222007","Cikole","321122");
INSERT INTO kelurahan VALUES("3211222008","Cibeureum Wetan","321122");
INSERT INTO kelurahan VALUES("3211222009","Mandalaherang","321122");
INSERT INTO kelurahan VALUES("3211222010","Licin","321122");
INSERT INTO kelurahan VALUES("3211222011","Citimun","321122");
INSERT INTO kelurahan VALUES("3211222012","Serang","321122");
INSERT INTO kelurahan VALUES("3211222013","Padasari","321122");
INSERT INTO kelurahan VALUES("3211222014","Cimuja","321122");
INSERT INTO kelurahan VALUES("3211232001","Cisarua","321123");
INSERT INTO kelurahan VALUES("3211232002","Ciuyah","321123");
INSERT INTO kelurahan VALUES("3211232003","Cimara","321123");
INSERT INTO kelurahan VALUES("3211232004","Bantarmara","321123");
INSERT INTO kelurahan VALUES("3211232005","Cipandanwangi","321123");
INSERT INTO kelurahan VALUES("3211232006","Cisalak","321123");
INSERT INTO kelurahan VALUES("3211232007","Kebonkalapa","321123");
INSERT INTO kelurahan VALUES("3211242001","Tomo","321124");
INSERT INTO kelurahan VALUES("3211242002","Tolengas","321124");
INSERT INTO kelurahan VALUES("3211242003","Darmawangi","321124");
INSERT INTO kelurahan VALUES("3211242004","Marongge","321124");
INSERT INTO kelurahan VALUES("3211242005","Jembarwangi","321124");
INSERT INTO kelurahan VALUES("3211242006","Bugel","321124");
INSERT INTO kelurahan VALUES("3211242007","Cipeles","321124");
INSERT INTO kelurahan VALUES("3211242008","Karyamukti","321124");
INSERT INTO kelurahan VALUES("3211242010","Mekarwangi","321124");
INSERT INTO kelurahan VALUES("3211252001","Ujungjaya","321125");
INSERT INTO kelurahan VALUES("3211252002","Palabuan","321125");
INSERT INTO kelurahan VALUES("3211252003","Palasari","321125");
INSERT INTO kelurahan VALUES("3211252004","Keboncau (Kebon Cau)","321125");
INSERT INTO kelurahan VALUES("3211252005","Sakurjaya","321125");
INSERT INTO kelurahan VALUES("3211252006","Kudangwangi","321125");
INSERT INTO kelurahan VALUES("3211252007","Sukamulya","321125");
INSERT INTO kelurahan VALUES("3211252008","Cipelang","321125");
INSERT INTO kelurahan VALUES("3211252009","Cibuluh","321125");
INSERT INTO kelurahan VALUES("3211262001","Cijeungjing","321126");
INSERT INTO kelurahan VALUES("3211262002","Kadujaya","321126");
INSERT INTO kelurahan VALUES("3211262003","Lebaksiuh","321126");
INSERT INTO kelurahan VALUES("3211262004","Cintajaya","321126");
INSERT INTO kelurahan VALUES("3211262005","Cipicung","321126");
INSERT INTO kelurahan VALUES("3211262006","Mekarasih","321126");
INSERT INTO kelurahan VALUES("3211262008","Ciranggem","321126");
INSERT INTO kelurahan VALUES("3211262009","Cisampih","321126");
INSERT INTO kelurahan VALUES("3211262010","Jemah","321126");
INSERT INTO kelurahan VALUES("3211262011","Karedok","321126");
INSERT INTO kelurahan VALUES("3211262012","Kadu","321126");
INSERT INTO kelurahan VALUES("3212012007","Haurkolot","321201");
INSERT INTO kelurahan VALUES("3212012008","Haurgeulis","321201");
INSERT INTO kelurahan VALUES("3212012009","Sukajati","321201");
INSERT INTO kelurahan VALUES("3212012010","Wanakaya","321201");
INSERT INTO kelurahan VALUES("3212012011","Karangtumaritis","321201");
INSERT INTO kelurahan VALUES("3212012012","Kertanegara","321201");
INSERT INTO kelurahan VALUES("3212012013","Cipancuh","321201");
INSERT INTO kelurahan VALUES("3212012014","Mekarjati","321201");
INSERT INTO kelurahan VALUES("3212012015","Sidodadi (Sidadadi)","321201");
INSERT INTO kelurahan VALUES("3212012016","Sumbermulya","321201");
INSERT INTO kelurahan VALUES("3212022001","Tanjungkerta","321202");
INSERT INTO kelurahan VALUES("3212022002","Kroya","321202");
INSERT INTO kelurahan VALUES("3212022003","Sumbon","321202");
INSERT INTO kelurahan VALUES("3212022004","Sukamelang","321202");
INSERT INTO kelurahan VALUES("3212022005","Temiyang","321202");
INSERT INTO kelurahan VALUES("3212022006","Tamiyangsari (Temiyangsari)","321202");
INSERT INTO kelurahan VALUES("3212022007","Jayamulya","321202");
INSERT INTO kelurahan VALUES("3212022008","Suka Slamet (Sukaslamet)","321202");
INSERT INTO kelurahan VALUES("3212022009","Sumberjaya","321202");
INSERT INTO kelurahan VALUES("3212032001","Kedung Dawa (Kedungdawa)","321203");
INSERT INTO kelurahan VALUES("3212032002","Babakan Jaya (Babakanjaya)","321203");
INSERT INTO kelurahan VALUES("3212032003","Gabus Kulon (Gabuskulon)","321203");
INSERT INTO kelurahan VALUES("3212032004","Sekar Mulya (Sekarmulya)","321203");
INSERT INTO kelurahan VALUES("3212032005","Kedokan Gabus (Kedokangabus)","321203");
INSERT INTO kelurahan VALUES("3212032006","Rancamulya","321203");
INSERT INTO kelurahan VALUES("3212032007","Rancahan","321203");
INSERT INTO kelurahan VALUES("3212032008","Gabus Wetan (Gabuswetan)","321203");
INSERT INTO kelurahan VALUES("3212032009","Drunten Wetan","321203");
INSERT INTO kelurahan VALUES("3212032010","Drunten Kulon","321203");
INSERT INTO kelurahan VALUES("3212042003","Loyang","321204");
INSERT INTO kelurahan VALUES("3212042004","Amis","321204");
INSERT INTO kelurahan VALUES("3212042005","Jatisura","321204");
INSERT INTO kelurahan VALUES("3212042006","Jambak","321204");
INSERT INTO kelurahan VALUES("3212042007","Cikidung Kidul (Cikedung)","321204");
INSERT INTO kelurahan VALUES("3212042012","Cikedung Lor","321204");
INSERT INTO kelurahan VALUES("3212042013","Mundakjaya","321204");
INSERT INTO kelurahan VALUES("3212052001","Tunggul Payung (Tunggulpayung)","321205");
INSERT INTO kelurahan VALUES("3212052002","Tugu","321205");
INSERT INTO kelurahan VALUES("3212052003","Nunuk","321205");
INSERT INTO kelurahan VALUES("3212052004","Tempel","321205");
INSERT INTO kelurahan VALUES("3212052005","Pangauban","321205");
INSERT INTO kelurahan VALUES("3212052006","Tegalasari (Telagasari)","321205");
INSERT INTO kelurahan VALUES("3212052007","Langgengsari","321205");
INSERT INTO kelurahan VALUES("3212052008","Tamansari","321205");
INSERT INTO kelurahan VALUES("3212052009","Lelea","321205");
INSERT INTO kelurahan VALUES("3212052010","Cempeh","321205");
INSERT INTO kelurahan VALUES("3212052011","Tempelkulon","321205");
INSERT INTO kelurahan VALUES("3212062008","Mulyasari","321206");
INSERT INTO kelurahan VALUES("3212062015","Bangodua","321206");
INSERT INTO kelurahan VALUES("3212062016","Beduyut","321206");
INSERT INTO kelurahan VALUES("3212062017","Rancasari","321206");
INSERT INTO kelurahan VALUES("3212062018","Wanasari","321206");
INSERT INTO kelurahan VALUES("3212062019","Karanggetas","321206");
INSERT INTO kelurahan VALUES("3212062020","Tegalgirang","321206");
INSERT INTO kelurahan VALUES("3212062021","Malangsari","321206");
INSERT INTO kelurahan VALUES("3212072006","Bangkaloa Ilir","321207");
INSERT INTO kelurahan VALUES("3212072007","Widasari","321207");
INSERT INTO kelurahan VALUES("3212072008","Kalensari","321207");
INSERT INTO kelurahan VALUES("3212072010","Bunder","321207");
INSERT INTO kelurahan VALUES("3212072011","Ujungaris","321207");
INSERT INTO kelurahan VALUES("3212072012","Kongsijaya","321207");
INSERT INTO kelurahan VALUES("3212072013","Ujungjaya","321207");
INSERT INTO kelurahan VALUES("3212072014","Ujung Pondok Jaya (Ujungpendokjaya)","321207");
INSERT INTO kelurahan VALUES("3212072015","Leuwigede","321207");
INSERT INTO kelurahan VALUES("3212072016","Kasmaran","321207");
INSERT INTO kelurahan VALUES("3212082007","Tulungagung","321208");
INSERT INTO kelurahan VALUES("3212082008","Jengkok","321208");
INSERT INTO kelurahan VALUES("3212082009","Tegal Wirangrong (Tegalwirangrong)","321208");
INSERT INTO kelurahan VALUES("3212082010","Manguntara","321208");
INSERT INTO kelurahan VALUES("3212082011","Jambe","321208");
INSERT INTO kelurahan VALUES("3212082012","Lemahayu","321208");
INSERT INTO kelurahan VALUES("3212082013","Tenajar Kidul","321208");
INSERT INTO kelurahan VALUES("3212082014","Kertasemaya","321208");
INSERT INTO kelurahan VALUES("3212082015","Kliwed","321208");
INSERT INTO kelurahan VALUES("3212082016","Tenajar","321208");
INSERT INTO kelurahan VALUES("3212082017","Larangan Jambe (Laranganjambe)","321208");
INSERT INTO kelurahan VALUES("3212082018","Tenajar Lor","321208");
INSERT INTO kelurahan VALUES("3212082019","Sukawera","321208");
INSERT INTO kelurahan VALUES("3212092001","Purwajaya","321209");
INSERT INTO kelurahan VALUES("3212092002","Kapringan","321209");
INSERT INTO kelurahan VALUES("3212092003","Singakerta","321209");
INSERT INTO kelurahan VALUES("3212092004","Dukuhjati","321209");
INSERT INTO kelurahan VALUES("3212092005","Tegalmulya","321209");
INSERT INTO kelurahan VALUES("3212092006","Kedungwungu","321209");
INSERT INTO kelurahan VALUES("3212092007","Srengseng","321209");
INSERT INTO kelurahan VALUES("3212092008","Luwunggesik","321209");
INSERT INTO kelurahan VALUES("3212092009","Kalianyar","321209");
INSERT INTO kelurahan VALUES("3212092010","Krangkeng","321209");
INSERT INTO kelurahan VALUES("3212092011","Tanjakan","321209");
INSERT INTO kelurahan VALUES("3212102008","Tanjungpura","321210");
INSERT INTO kelurahan VALUES("3212102009","Tanjungsari","321210");
INSERT INTO kelurahan VALUES("3212102010","Pringgacala","321210");
INSERT INTO kelurahan VALUES("3212102011","Benda","321210");
INSERT INTO kelurahan VALUES("3212102012","Sendang","321210");
INSERT INTO kelurahan VALUES("3212102013","Karangampel Kidul","321210");
INSERT INTO kelurahan VALUES("3212102014","Karangampel","321210");
INSERT INTO kelurahan VALUES("3212102015","Dukuh Jeruk (Dukuhjeruk)","321210");
INSERT INTO kelurahan VALUES("3212102016","Dukuh Tengah (Dukuhtengah)","321210");
INSERT INTO kelurahan VALUES("3212102017","Mundu","321210");
INSERT INTO kelurahan VALUES("3212102019","Kaplongan Lor (Kaplonganlor)","321210");
INSERT INTO kelurahan VALUES("3212112001","Segeran Kidul","321211");
INSERT INTO kelurahan VALUES("3212112002","Segeran","321211");
INSERT INTO kelurahan VALUES("3212112003","Juntiweden","321211");
INSERT INTO kelurahan VALUES("3212112004","Dadap","321211");
INSERT INTO kelurahan VALUES("3212112005","Juntunyuat (Juntinyuat)","321211");
INSERT INTO kelurahan VALUES("3212112006","Juntikedokan","321211");
INSERT INTO kelurahan VALUES("3212112007","Pondoh","321211");
INSERT INTO kelurahan VALUES("3212112008","Sambirmaya (Sambimaya)","321211");
INSERT INTO kelurahan VALUES("3212112009","Tinumpuk","321211");
INSERT INTO kelurahan VALUES("3212112010","Juntikebon (Junti Kebon)","321211");
INSERT INTO kelurahan VALUES("3212112011","Lombang","321211");
INSERT INTO kelurahan VALUES("3212112012","Limbangan","321211");
INSERT INTO kelurahan VALUES("3212122001","Sleman","321212");
INSERT INTO kelurahan VALUES("3212122002","Tambi","321212");
INSERT INTO kelurahan VALUES("3212122003","Sudikampiran","321212");
INSERT INTO kelurahan VALUES("3212122004","Tambi Lor","321212");
INSERT INTO kelurahan VALUES("3212122005","Sleman Lor","321212");
INSERT INTO kelurahan VALUES("3212122006","Majasari","321212");
INSERT INTO kelurahan VALUES("3212122007","Majasih","321212");
INSERT INTO kelurahan VALUES("3212122008","Sliyeg","321212");
INSERT INTO kelurahan VALUES("3212122009","Gadingan","321212");
INSERT INTO kelurahan VALUES("3212122010","Mekargading","321212");
INSERT INTO kelurahan VALUES("3212122011","Sliyeg Lor (Sliyeglor)","321212");
INSERT INTO kelurahan VALUES("3212122012","Tugukidul (Tugu Kidul)","321212");
INSERT INTO kelurahan VALUES("3212122013","Tugu","321212");
INSERT INTO kelurahan VALUES("3212122016","Longok","321212");
INSERT INTO kelurahan VALUES("3212132001","Sukalila","321213");
INSERT INTO kelurahan VALUES("3212132002","Pilangsari","321213");
INSERT INTO kelurahan VALUES("3212132003","Jatibarang Baru","321213");
INSERT INTO kelurahan VALUES("3212132004","Bulak","321213");
INSERT INTO kelurahan VALUES("3212132005","Bulak Lor","321213");
INSERT INTO kelurahan VALUES("3212132006","Jatibarang","321213");
INSERT INTO kelurahan VALUES("3212132007","Kebulen","321213");
INSERT INTO kelurahan VALUES("3212132008","Pawidean","321213");
INSERT INTO kelurahan VALUES("3212132009","Jatisawit","321213");
INSERT INTO kelurahan VALUES("3212132010","Jatisawit Lor","321213");
INSERT INTO kelurahan VALUES("3212132011","Krasak","321213");
INSERT INTO kelurahan VALUES("3212132012","Kalimati","321213");
INSERT INTO kelurahan VALUES("3212132013","Malang Semirang (Malangsemirang)","321213");
INSERT INTO kelurahan VALUES("3212132014","Lohbener (Lobener)","321213");
INSERT INTO kelurahan VALUES("3212132015","Lohbener Lor (Lobener Lor)","321213");
INSERT INTO kelurahan VALUES("3212142001","Tegal Sembadra (Tegalsembadra)","321214");
INSERT INTO kelurahan VALUES("3212142002","Sukareja","321214");
INSERT INTO kelurahan VALUES("3212142003","Sukaurip","321214");
INSERT INTO kelurahan VALUES("3212142004","Rawadalem","321214");
INSERT INTO kelurahan VALUES("3212142005","Gelarmendala","321214");
INSERT INTO kelurahan VALUES("3212142006","Tegalurung","321214");
INSERT INTO kelurahan VALUES("3212142007","Balongan","321214");
INSERT INTO kelurahan VALUES("3212142008","Majakerta","321214");
INSERT INTO kelurahan VALUES("3212142009","Sudimampir","321214");
INSERT INTO kelurahan VALUES("3212142010","Sudimampir Lor (Sudimampirlor)","321214");
INSERT INTO kelurahan VALUES("3212151001","Bojongsari","321215");
INSERT INTO kelurahan VALUES("3212151002","Kepandean","321215");
INSERT INTO kelurahan VALUES("3212151003","Karangmalang","321215");
INSERT INTO kelurahan VALUES("3212151004","Karanganyar","321215");
INSERT INTO kelurahan VALUES("3212151005","Lemahmekar","321215");
INSERT INTO kelurahan VALUES("3212151006","Lemahabang","321215");
INSERT INTO kelurahan VALUES("3212151007","Margadadi","321215");
INSERT INTO kelurahan VALUES("3212151008","Paoman","321215");
INSERT INTO kelurahan VALUES("3212152009","Telukagung","321215");
INSERT INTO kelurahan VALUES("3212152010","Plumbon","321215");
INSERT INTO kelurahan VALUES("3212152011","Dukuh","321215");
INSERT INTO kelurahan VALUES("3212152012","Pekandangan Jaya","321215");
INSERT INTO kelurahan VALUES("3212152013","Singaraja","321215");
INSERT INTO kelurahan VALUES("3212152014","Singajaya","321215");
INSERT INTO kelurahan VALUES("3212152015","Pekandangan","321215");
INSERT INTO kelurahan VALUES("3212152016","Karangsong","321215");
INSERT INTO kelurahan VALUES("3212152017","Pabean Udik (Pabeanudik)","321215");
INSERT INTO kelurahan VALUES("3212152020","Tambak","321215");
INSERT INTO kelurahan VALUES("3212162001","Panyindangan Kulon","321216");
INSERT INTO kelurahan VALUES("3212162002","Rambatan Wetan","321216");
INSERT INTO kelurahan VALUES("3212162003","Panyindangan Wetan","321216");
INSERT INTO kelurahan VALUES("3212162004","Kenanga","321216");
INSERT INTO kelurahan VALUES("3212162005","Terusan","321216");
INSERT INTO kelurahan VALUES("3212162006","Dermayu","321216");
INSERT INTO kelurahan VALUES("3212162007","Sindang","321216");
INSERT INTO kelurahan VALUES("3212162008","Penganjang","321216");
INSERT INTO kelurahan VALUES("3212162009","Babadan","321216");
INSERT INTO kelurahan VALUES("3212162014","Wanantara","321216");
INSERT INTO kelurahan VALUES("3212172001","Cangkring","321217");
INSERT INTO kelurahan VALUES("3212172002","Cantigi Kulon","321217");
INSERT INTO kelurahan VALUES("3212172003","Cantigi Wetan","321217");
INSERT INTO kelurahan VALUES("3212172004","Panyingkiran Kidul","321217");
INSERT INTO kelurahan VALUES("3212172005","Panyingkiran Lor","321217");
INSERT INTO kelurahan VALUES("3212172006","Lamarantarung","321217");
INSERT INTO kelurahan VALUES("3212172007","Cemara","321217");
INSERT INTO kelurahan VALUES("3212182001","Kiajaran Wetan (Kijaran Wetan)","321218");
INSERT INTO kelurahan VALUES("3212182002","Kiajaran Kulon","321218");
INSERT INTO kelurahan VALUES("3212182003","Lanjan","321218");
INSERT INTO kelurahan VALUES("3212182004","Langut","321218");
INSERT INTO kelurahan VALUES("3212182005","Larangan","321218");
INSERT INTO kelurahan VALUES("3212182006","Waru","321218");
INSERT INTO kelurahan VALUES("3212182007","Legok","321218");
INSERT INTO kelurahan VALUES("3212182008","Bojongslawi","321218");
INSERT INTO kelurahan VALUES("3212182009","Lohbener","321218");
INSERT INTO kelurahan VALUES("3212182010","Pamayahan","321218");
INSERT INTO kelurahan VALUES("3212182011","Sindangkerta","321218");
INSERT INTO kelurahan VALUES("3212182012","Rambatan Kulon","321218");
INSERT INTO kelurahan VALUES("3212192001","Arahan Kidul","321219");
INSERT INTO kelurahan VALUES("3212192002","Arahan Lor","321219");
INSERT INTO kelurahan VALUES("3212192003","Linggajati","321219");
INSERT INTO kelurahan VALUES("3212192004","Cidempet","321219");
INSERT INTO kelurahan VALUES("3212192005","Sukadadi","321219");
INSERT INTO kelurahan VALUES("3212192006","Pranggong","321219");
INSERT INTO kelurahan VALUES("3212192007","Sukasari","321219");
INSERT INTO kelurahan VALUES("3212192008","Tawangsari","321219");
INSERT INTO kelurahan VALUES("3212202001","Ranjeng","321220");
INSERT INTO kelurahan VALUES("3212202002","Krimun","321220");
INSERT INTO kelurahan VALUES("3212202003","Puntang","321220");
INSERT INTO kelurahan VALUES("3212202004","Pegagan","321220");
INSERT INTO kelurahan VALUES("3212202005","Rajaiyang","321220");
INSERT INTO kelurahan VALUES("3212202006","Jangga","321220");
INSERT INTO kelurahan VALUES("3212202007","Jumbleng","321220");
INSERT INTO kelurahan VALUES("3212202008","Pangkalan","321220");
INSERT INTO kelurahan VALUES("3212202010","Losarang","321220");
INSERT INTO kelurahan VALUES("3212202011","Muntur","321220");
INSERT INTO kelurahan VALUES("3212202012","Santing","321220");
INSERT INTO kelurahan VALUES("3212202013","Cemara Kulon","321220");
INSERT INTO kelurahan VALUES("3212212001","Curug","321221");
INSERT INTO kelurahan VALUES("3212212002","Pranti","321221");
INSERT INTO kelurahan VALUES("3212212003","Wirakanan","321221");
INSERT INTO kelurahan VALUES("3212212004","Karangmulya","321221");
INSERT INTO kelurahan VALUES("3212212005","Karang Anyar (Karanganyar)","321221");
INSERT INTO kelurahan VALUES("3212212006","Wirapanjunan","321221");
INSERT INTO kelurahan VALUES("3212212007","Pareangirang (Parean Girang)","321221");
INSERT INTO kelurahan VALUES("3212212008","Bulak","321221");
INSERT INTO kelurahan VALUES("3212212009","Ilir","321221");
INSERT INTO kelurahan VALUES("3212212010","Soge","321221");
INSERT INTO kelurahan VALUES("3212212011","Eretan Wetan","321221");
INSERT INTO kelurahan VALUES("3212212012","Eretan Kulon","321221");
INSERT INTO kelurahan VALUES("3212212013","Kertawinangun","321221");
INSERT INTO kelurahan VALUES("3212222001","Cipedang","321222");
INSERT INTO kelurahan VALUES("3212222002","Sidamulya","321222");
INSERT INTO kelurahan VALUES("3212222003","Margamulya","321222");
INSERT INTO kelurahan VALUES("3212222004","Kertajaya","321222");
INSERT INTO kelurahan VALUES("3212222005","Bongas","321222");
INSERT INTO kelurahan VALUES("3212222006","Cipaat","321222");
INSERT INTO kelurahan VALUES("3212222007","Kertamulya","321222");
INSERT INTO kelurahan VALUES("3212222008","Plawangan","321222");
INSERT INTO kelurahan VALUES("3212232001","Anjatan","321223");
INSERT INTO kelurahan VALUES("3212232002","Mangunjaya","321223");
INSERT INTO kelurahan VALUES("3212232003","Bugis","321223");
INSERT INTO kelurahan VALUES("3212232004","Bugis Tua (Bugistua)","321223");
INSERT INTO kelurahan VALUES("3212232005","Salamdarma","321223");
INSERT INTO kelurahan VALUES("3212232006","Kedungwungu","321223");
INSERT INTO kelurahan VALUES("3212232007","Wanguk","321223");
INSERT INTO kelurahan VALUES("3212232008","Lempuyang","321223");
INSERT INTO kelurahan VALUES("3212232009","Kopyah","321223");
INSERT INTO kelurahan VALUES("3212232010","Anjatan Baru","321223");
INSERT INTO kelurahan VALUES("3212232011","Cilandak","321223");
INSERT INTO kelurahan VALUES("3212232012","Cilandak Lor","321223");
INSERT INTO kelurahan VALUES("3212232013","Anjatan Utara","321223");
INSERT INTO kelurahan VALUES("3212242001","Bogor","321224");
INSERT INTO kelurahan VALUES("3212242002","Sukra","321224");
INSERT INTO kelurahan VALUES("3212242003","Ujunggebang","321224");
INSERT INTO kelurahan VALUES("3212242004","Tagal Taman (Tegaltaman)","321224");
INSERT INTO kelurahan VALUES("3212242005","Sukrawetan","321224");
INSERT INTO kelurahan VALUES("3212242006","Sumuradem","321224");
INSERT INTO kelurahan VALUES("3212242007","Sumuradem Timur","321224");
INSERT INTO kelurahan VALUES("3212242017","Karang Layung","321224");
INSERT INTO kelurahan VALUES("3212252001","Bantarwaru","321225");
INSERT INTO kelurahan VALUES("3212252002","Sanca","321225");
INSERT INTO kelurahan VALUES("3212252003","Mekarjaya","321225");
INSERT INTO kelurahan VALUES("3212252004","Gantar","321225");
INSERT INTO kelurahan VALUES("3212252005","Situraja","321225");
INSERT INTO kelurahan VALUES("3212252006","Balereja (Baleraja)","321225");
INSERT INTO kelurahan VALUES("3212252007","Mekarwaru","321225");
INSERT INTO kelurahan VALUES("3212262001","Cikawung","321226");
INSERT INTO kelurahan VALUES("3212262002","Jatimulya","321226");
INSERT INTO kelurahan VALUES("3212262003","Jatimunggul","321226");
INSERT INTO kelurahan VALUES("3212262004","Plosokerep","321226");
INSERT INTO kelurahan VALUES("3212262005","Rajasinga","321226");
INSERT INTO kelurahan VALUES("3212262006","Karangasem","321226");
INSERT INTO kelurahan VALUES("3212262007","Cibereng","321226");
INSERT INTO kelurahan VALUES("3212262008","Kendayakan","321226");
INSERT INTO kelurahan VALUES("3212262009","Manggungan","321226");
INSERT INTO kelurahan VALUES("3212272001","Cibeber","321227");
INSERT INTO kelurahan VALUES("3212272002","Bondan","321227");
INSERT INTO kelurahan VALUES("3212272003","Gunungsari","321227");
INSERT INTO kelurahan VALUES("3212272004","Sukagumiwang","321227");
INSERT INTO kelurahan VALUES("3212272005","Tersana","321227");
INSERT INTO kelurahan VALUES("3212272006","Cadang Pinggan (Cadangpinggan)","321227");
INSERT INTO kelurahan VALUES("3212272007","Gedangan","321227");
INSERT INTO kelurahan VALUES("3212282001","Cangkingan","321228");
INSERT INTO kelurahan VALUES("3212282002","Jayawinangun","321228");
INSERT INTO kelurahan VALUES("3212282003","Kedokan Agung","321228");
INSERT INTO kelurahan VALUES("3212282004","Kedokanbunder","321228");
INSERT INTO kelurahan VALUES("3212282005","Kedokanbunderwetan (Kedokanbunder Wetan)","321228");
INSERT INTO kelurahan VALUES("3212282006","Kaplongan","321228");
INSERT INTO kelurahan VALUES("3212282007","Jayalaksana","321228");
INSERT INTO kelurahan VALUES("3212292001","Brondong","321229");
INSERT INTO kelurahan VALUES("3212292002","Pabean Ilir (Pabeanilir)","321229");
INSERT INTO kelurahan VALUES("3212292003","Pagirikan","321229");
INSERT INTO kelurahan VALUES("3212292004","Pasekan","321229");
INSERT INTO kelurahan VALUES("3212292005","Karanganyar","321229");
INSERT INTO kelurahan VALUES("3212292006","Totoran","321229");
INSERT INTO kelurahan VALUES("3212302001","Bodas","321230");
INSERT INTO kelurahan VALUES("3212302002","Gadel","321230");
INSERT INTO kelurahan VALUES("3212302003","Rancajawat","321230");
INSERT INTO kelurahan VALUES("3212302004","Kerticala","321230");
INSERT INTO kelurahan VALUES("3212302005","Cangko","321230");
INSERT INTO kelurahan VALUES("3212302006","Karangkerta","321230");
INSERT INTO kelurahan VALUES("3212302007","Sukamulya","321230");
INSERT INTO kelurahan VALUES("3212302008","Mekarsari","321230");
INSERT INTO kelurahan VALUES("3212302009","Lajer","321230");
INSERT INTO kelurahan VALUES("3212302010","Tukdana","321230");
INSERT INTO kelurahan VALUES("3212302011","Sukadana","321230");
INSERT INTO kelurahan VALUES("3212302012","Pagedangan","321230");
INSERT INTO kelurahan VALUES("3212302013","Sukaperna","321230");
INSERT INTO kelurahan VALUES("3212312001","Limpas","321231");
INSERT INTO kelurahan VALUES("3212312002","Mekarsari","321231");
INSERT INTO kelurahan VALUES("3212312003","Patrol Baru","321231");
INSERT INTO kelurahan VALUES("3212312004","Patrol Lor (Patrollor)","321231");
INSERT INTO kelurahan VALUES("3212312005","Patrol","321231");
INSERT INTO kelurahan VALUES("3212312006","Bugel","321231");
INSERT INTO kelurahan VALUES("3212312007","Arjasari","321231");
INSERT INTO kelurahan VALUES("3212312008","Sukahaji","321231");
INSERT INTO kelurahan VALUES("3213012003","Sukamandi","321301");
INSERT INTO kelurahan VALUES("3213012004","Cicadas","321301");
INSERT INTO kelurahan VALUES("3213012005","Sagalaherang Kidul (Sagalaherang)","321301");
INSERT INTO kelurahan VALUES("3213012006","Dayeuh Kolot (Dayeuhkolot)","321301");
INSERT INTO kelurahan VALUES("3213012009","Leles","321301");
INSERT INTO kelurahan VALUES("3213012010","Curugagung","321301");
INSERT INTO kelurahan VALUES("3213012011","Sagalaherang Kaler","321301");
INSERT INTO kelurahan VALUES("3213022001","Cupunagara","321302");
INSERT INTO kelurahan VALUES("3213022002","Cimanggu","321302");
INSERT INTO kelurahan VALUES("3213022003","Gardusayang","321302");
INSERT INTO kelurahan VALUES("3213022004","Mayang","321302");
INSERT INTO kelurahan VALUES("3213022005","Sukakerti","321302");
INSERT INTO kelurahan VALUES("3213022007","Darmaga","321302");
INSERT INTO kelurahan VALUES("3213022008","Cisalak","321302");
INSERT INTO kelurahan VALUES("3213022011","Cigadog","321302");
INSERT INTO kelurahan VALUES("3213022014","Pakuhaji","321302");
INSERT INTO kelurahan VALUES("3213031001","Parung","321303");
INSERT INTO kelurahan VALUES("3213031002","Cigadung","321303");
INSERT INTO kelurahan VALUES("3213031003","Pasirkareumbi","321303");
INSERT INTO kelurahan VALUES("3213031004","Karanganyar","321303");
INSERT INTO kelurahan VALUES("3213031005","Soklat","321303");
INSERT INTO kelurahan VALUES("3213031006","Sukamelang","321303");
INSERT INTO kelurahan VALUES("3213031007","Dangdeur","321303");
INSERT INTO kelurahan VALUES("3213031008","Wanareja","321303");
INSERT INTO kelurahan VALUES("3213042006","Marengmang","321304");
INSERT INTO kelurahan VALUES("3213042007","Kalijati Timur","321304");
INSERT INTO kelurahan VALUES("3213042008","Kaliangsana","321304");
INSERT INTO kelurahan VALUES("3213042011","Kalijati Barat","321304");
INSERT INTO kelurahan VALUES("3213042012","Tanggulun Timur","321304");
INSERT INTO kelurahan VALUES("3213042013","Tanggulun Barat","321304");
INSERT INTO kelurahan VALUES("3213042017","Caracas","321304");
INSERT INTO kelurahan VALUES("3213042018","Ciruluk","321304");
INSERT INTO kelurahan VALUES("3213042019","Jalupang","321304");
INSERT INTO kelurahan VALUES("3213042020","Banggalamulya","321304");
INSERT INTO kelurahan VALUES("3213052001","Cihambulu","321305");
INSERT INTO kelurahan VALUES("3213052002","Siluman","321305");
INSERT INTO kelurahan VALUES("3213052003","Pringkasap","321305");
INSERT INTO kelurahan VALUES("3213052004","Pabuaran","321305");
INSERT INTO kelurahan VALUES("3213052005","Karanghegar","321305");
INSERT INTO kelurahan VALUES("3213052006","Salamjaya","321305");
INSERT INTO kelurahan VALUES("3213052007","Kadawung","321305");
INSERT INTO kelurahan VALUES("3213052008","Balebandung Jaya","321305");
INSERT INTO kelurahan VALUES("3213062001","Wanakerta","321306");
INSERT INTO kelurahan VALUES("3213062002","Pagon","321306");
INSERT INTO kelurahan VALUES("3213062003","Prapatan (Parapatan)","321306");
INSERT INTO kelurahan VALUES("3213062004","Purwadadi (Purwadadi Timur)","321306");
INSERT INTO kelurahan VALUES("3213062005","Belendung (Blendung)","321306");
INSERT INTO kelurahan VALUES("3213062006","Koranji","321306");
INSERT INTO kelurahan VALUES("3213062007","Panyingkiran","321306");
INSERT INTO kelurahan VALUES("3213062008","Pasirbungur","321306");
INSERT INTO kelurahan VALUES("3213062009","Purwadadi Barat","321306");
INSERT INTO kelurahan VALUES("3213062010","Rancamahi","321306");
INSERT INTO kelurahan VALUES("3213072004","Gunungsembung","321307");
INSERT INTO kelurahan VALUES("3213072005","Gembor","321307");
INSERT INTO kelurahan VALUES("3213072006","Kamarung","321307");
INSERT INTO kelurahan VALUES("3213072010","Gambarsari","321307");
INSERT INTO kelurahan VALUES("3213072011","Pagedan (Pagaden)","321307");
INSERT INTO kelurahan VALUES("3213072012","Sukamulya","321307");
INSERT INTO kelurahan VALUES("3213072013","Neglasari","321307");
INSERT INTO kelurahan VALUES("3213072014","Sumbersari","321307");
INSERT INTO kelurahan VALUES("3213072015","Gunungsari","321307");
INSERT INTO kelurahan VALUES("3213072019","Jabong","321307");
INSERT INTO kelurahan VALUES("3213082001","Cicadas","321308");
INSERT INTO kelurahan VALUES("3213082002","Kihiyang","321308");
INSERT INTO kelurahan VALUES("3213082003","Binong","321308");
INSERT INTO kelurahan VALUES("3213082004","Kediri","321308");
INSERT INTO kelurahan VALUES("3213082010","Citrajaya","321308");
INSERT INTO kelurahan VALUES("3213082011","Mulyasari","321308");
INSERT INTO kelurahan VALUES("3213082014","Karangsari","321308");
INSERT INTO kelurahan VALUES("3213082016","Karangwangi","321308");
INSERT INTO kelurahan VALUES("3213082018","Nanggerang","321308");
INSERT INTO kelurahan VALUES("3213092001","Ciasem Girang","321309");
INSERT INTO kelurahan VALUES("3213092002","Ciasem Tengah","321309");
INSERT INTO kelurahan VALUES("3213092003","Dukuh","321309");
INSERT INTO kelurahan VALUES("3213092004","Ciasem Hilir","321309");
INSERT INTO kelurahan VALUES("3213092005","Sukahaji","321309");
INSERT INTO kelurahan VALUES("3213092006","Sukamandijaya","321309");
INSERT INTO kelurahan VALUES("3213092007","Ciasem Baru (Ciasembaru)","321309");
INSERT INTO kelurahan VALUES("3213092008","Pinangsari","321309");
INSERT INTO kelurahan VALUES("3213092009","Jatibaru","321309");
INSERT INTO kelurahan VALUES("3213102005","Pusakaratu","321310");
INSERT INTO kelurahan VALUES("3213102006","Gempol","321310");
INSERT INTO kelurahan VALUES("3213102007","Kalentambo","321310");
INSERT INTO kelurahan VALUES("3213102008","Patimban","321310");
INSERT INTO kelurahan VALUES("3213102012","Rancadaka","321310");
INSERT INTO kelurahan VALUES("3213102014","Kotasari","321310");
INSERT INTO kelurahan VALUES("3213102015","Mundusari","321310");
INSERT INTO kelurahan VALUES("3213112002","Rancasari","321311");
INSERT INTO kelurahan VALUES("3213112003","Rancahilir","321311");
INSERT INTO kelurahan VALUES("3213112004","Pamanukan","321311");
INSERT INTO kelurahan VALUES("3213112006","Pamanukan Hilir","321311");
INSERT INTO kelurahan VALUES("3213112007","Pamanukan Sebrang","321311");
INSERT INTO kelurahan VALUES("3213112009","Mulyasari","321311");
INSERT INTO kelurahan VALUES("3213112010","Lengkongjaya","321311");
INSERT INTO kelurahan VALUES("3213112011","Bongas","321311");
INSERT INTO kelurahan VALUES("3213122007","Curugrendeng","321312");
INSERT INTO kelurahan VALUES("3213122008","Tambakan","321312");
INSERT INTO kelurahan VALUES("3213122009","Bunihayu","321312");
INSERT INTO kelurahan VALUES("3213122011","Kumpay","321312");
INSERT INTO kelurahan VALUES("3213122012","Sarireja","321312");
INSERT INTO kelurahan VALUES("3213122014","Tambakmekar","321312");
INSERT INTO kelurahan VALUES("3213122017","Jalancagak","321312");
INSERT INTO kelurahan VALUES("3213132001","Tanjungtiga","321313");
INSERT INTO kelurahan VALUES("3213132002","Muara","321313");
INSERT INTO kelurahan VALUES("3213132003","Blanakan","321313");
INSERT INTO kelurahan VALUES("3213132004","Rawameneng","321313");
INSERT INTO kelurahan VALUES("3213132005","Cilamayagirang (Cilamaya Girang)","321313");
INSERT INTO kelurahan VALUES("3213132006","Jayamukti","321313");
INSERT INTO kelurahan VALUES("3213132007","Cilamayahilir (Cilamaya Hilir)","321313");
INSERT INTO kelurahan VALUES("3213132008","Rawamekar","321313");
INSERT INTO kelurahan VALUES("3213132009","Langensari","321313");
INSERT INTO kelurahan VALUES("3213142001","Buniara","321314");
INSERT INTO kelurahan VALUES("3213142002","Tanjungsiang","321314");
INSERT INTO kelurahan VALUES("3213142003","Cimeuhmal","321314");
INSERT INTO kelurahan VALUES("3213142004","Sirap","321314");
INSERT INTO kelurahan VALUES("3213142005","Kawungluwuk","321314");
INSERT INTO kelurahan VALUES("3213142006","Cibuluh","321314");
INSERT INTO kelurahan VALUES("3213142007","Sindanglaya","321314");
INSERT INTO kelurahan VALUES("3213142008","Rancamanggung","321314");
INSERT INTO kelurahan VALUES("3213142009","Cikawung","321314");
INSERT INTO kelurahan VALUES("3213142010","Gandasoli","321314");
INSERT INTO kelurahan VALUES("3213152001","Jatimulya","321315");
INSERT INTO kelurahan VALUES("3213152002","Sukatani","321315");
INSERT INTO kelurahan VALUES("3213152003","Jatireja","321315");
INSERT INTO kelurahan VALUES("3213152004","Compreng","321315");
INSERT INTO kelurahan VALUES("3213152005","Kalensari","321315");
INSERT INTO kelurahan VALUES("3213152006","Mekarjaya","321315");
INSERT INTO kelurahan VALUES("3213152007","Kiarasari","321315");
INSERT INTO kelurahan VALUES("3213152008","Sukadana","321315");
INSERT INTO kelurahan VALUES("3213162001","Rancabango","321316");
INSERT INTO kelurahan VALUES("3213162002","Tanjungrasa (Tanjungrasa Kaler)","321316");
INSERT INTO kelurahan VALUES("3213162003","Ciberes","321316");
INSERT INTO kelurahan VALUES("3213162004","Jatiragas Hilir","321316");
INSERT INTO kelurahan VALUES("3213162005","Tambakjati","321316");
INSERT INTO kelurahan VALUES("3213162006","Rancajaya","321316");
INSERT INTO kelurahan VALUES("3213162007","Gempolsari","321316");
INSERT INTO kelurahan VALUES("3213162008","Tanjungrasa Kidul","321316");
INSERT INTO kelurahan VALUES("3213162009","Rancaasih","321316");
INSERT INTO kelurahan VALUES("3213162010","Rancamulya","321316");
INSERT INTO kelurahan VALUES("3213172001","Sumurbarang","321317");
INSERT INTO kelurahan VALUES("3213172002","Cibogo","321317");
INSERT INTO kelurahan VALUES("3213172003","Cinangsi","321317");
INSERT INTO kelurahan VALUES("3213172004","Padaasih","321317");
INSERT INTO kelurahan VALUES("3213172005","Sadawarna","321317");
INSERT INTO kelurahan VALUES("3213172006","Majasari","321317");
INSERT INTO kelurahan VALUES("3213172007","Cisaga","321317");
INSERT INTO kelurahan VALUES("3213172008","Belendung (Balendung)","321317");
INSERT INTO kelurahan VALUES("3213172009","Cibalandong Jaya","321317");
INSERT INTO kelurahan VALUES("3213182001","Wanasari","321318");
INSERT INTO kelurahan VALUES("3213182002","Sidamulya","321318");
INSERT INTO kelurahan VALUES("3213182003","Tanjung","321318");
INSERT INTO kelurahan VALUES("3213182004","Jati","321318");
INSERT INTO kelurahan VALUES("3213182005","Simpar","321318");
INSERT INTO kelurahan VALUES("3213182006","Parigimulya","321318");
INSERT INTO kelurahan VALUES("3213182007","Sidajaya","321318");
INSERT INTO kelurahan VALUES("3213182008","Padamulya","321318");
INSERT INTO kelurahan VALUES("3213182009","Kosambi","321318");
INSERT INTO kelurahan VALUES("3213182010","Manyingsal","321318");
INSERT INTO kelurahan VALUES("3213192001","Gunungtua","321319");
INSERT INTO kelurahan VALUES("3213192002","Cijambe","321319");
INSERT INTO kelurahan VALUES("3213192003","Cirangkong","321319");
INSERT INTO kelurahan VALUES("3213192004","Cimenteng","321319");
INSERT INTO kelurahan VALUES("3213192005","Bantarsari","321319");
INSERT INTO kelurahan VALUES("3213192006","Tanjungwangi","321319");
INSERT INTO kelurahan VALUES("3213192007","Cikadu","321319");
INSERT INTO kelurahan VALUES("3213192008","Sukahurip","321319");
INSERT INTO kelurahan VALUES("3213202001","Karyamukti","321320");
INSERT INTO kelurahan VALUES("3213202002","Cimayasari","321320");
INSERT INTO kelurahan VALUES("3213202003","Lengkong","321320");
INSERT INTO kelurahan VALUES("3213202004","Cipeundeuy","321320");
INSERT INTO kelurahan VALUES("3213202005","Wantilan","321320");
INSERT INTO kelurahan VALUES("3213202006","Kosar","321320");
INSERT INTO kelurahan VALUES("3213202007","Sawangan","321320");
INSERT INTO kelurahan VALUES("3213212001","Tegalurung","321321");
INSERT INTO kelurahan VALUES("3213212002","Bobos","321321");
INSERT INTO kelurahan VALUES("3213212003","Legonkulon","321321");
INSERT INTO kelurahan VALUES("3213212004","Mayangan","321321");
INSERT INTO kelurahan VALUES("3213212005","Legonwetan","321321");
INSERT INTO kelurahan VALUES("3213212006","Pangarengan","321321");
INSERT INTO kelurahan VALUES("3213212007","Karangmulya","321321");
INSERT INTO kelurahan VALUES("3213222001","Kawunganten (Kaunganten)","321322");
INSERT INTO kelurahan VALUES("3213222002","Sindangsari","321322");
INSERT INTO kelurahan VALUES("3213222003","Cikaum Barat","321322");
INSERT INTO kelurahan VALUES("3213222004","Cikaum Timur","321322");
INSERT INTO kelurahan VALUES("3213222005","Tanjungsari Barat","321322");
INSERT INTO kelurahan VALUES("3213222006","Mekarsari","321322");
INSERT INTO kelurahan VALUES("3213222007","Tanjungsari Timur","321322");
INSERT INTO kelurahan VALUES("3213222008","Gandasari","321322");
INSERT INTO kelurahan VALUES("3213222009","Pasirmuncang","321322");
INSERT INTO kelurahan VALUES("3213232001","Cijengkol","321323");
INSERT INTO kelurahan VALUES("3213232002","Talagasari","321323");
INSERT INTO kelurahan VALUES("3213232003","Cintamekar","321323");
INSERT INTO kelurahan VALUES("3213232004","Ponggang","321323");
INSERT INTO kelurahan VALUES("3213232005","Cikujang","321323");
INSERT INTO kelurahan VALUES("3213232006","Cipancar","321323");
INSERT INTO kelurahan VALUES("3213242001","Anggasari","321324");
INSERT INTO kelurahan VALUES("3213242002","Batangsari","321324");
INSERT INTO kelurahan VALUES("3213242003","Sukamaju","321324");
INSERT INTO kelurahan VALUES("3213242004","Mandalawangi","321324");
INSERT INTO kelurahan VALUES("3213242005","Curugreja","321324");
INSERT INTO kelurahan VALUES("3213242006","Sukareja","321324");
INSERT INTO kelurahan VALUES("3213242007","Sukasari","321324");
INSERT INTO kelurahan VALUES("3213252001","Tanjungrasa","321325");
INSERT INTO kelurahan VALUES("3213252002","Wanajaya","321325");
INSERT INTO kelurahan VALUES("3213252003","Gardumukti","321325");
INSERT INTO kelurahan VALUES("3213252004","Mariuk","321325");
INSERT INTO kelurahan VALUES("3213252005","Kertajaya","321325");
INSERT INTO kelurahan VALUES("3213252006","Tambakdahan","321325");
INSERT INTO kelurahan VALUES("3213252007","Rancaudik","321325");
INSERT INTO kelurahan VALUES("3213252008","Bojongkeding","321325");
INSERT INTO kelurahan VALUES("3213252009","Bojonegara","321325");
INSERT INTO kelurahan VALUES("3213262001","Sindangsari","321326");
INSERT INTO kelurahan VALUES("3213262002","Pasanggrahan","321326");
INSERT INTO kelurahan VALUES("3213262003","Bojongloa","321326");
INSERT INTO kelurahan VALUES("3213262004","Sukamelang","321326");
INSERT INTO kelurahan VALUES("3213262005","Tenjolaya","321326");
INSERT INTO kelurahan VALUES("3213262006","Kasomalang Wetan","321326");
INSERT INTO kelurahan VALUES("3213262007","Kasomalang Kulon","321326");
INSERT INTO kelurahan VALUES("3213262008","Cimanglid","321326");
INSERT INTO kelurahan VALUES("3213272001","Manyeti","321327");
INSERT INTO kelurahan VALUES("3213272002","Rawalele","321327");
INSERT INTO kelurahan VALUES("3213272003","Sukasari","321327");
INSERT INTO kelurahan VALUES("3213272004","Situsari","321327");
INSERT INTO kelurahan VALUES("3213272005","Dawuan Kaler","321327");
INSERT INTO kelurahan VALUES("3213272006","Dawuan Kidul","321327");
INSERT INTO kelurahan VALUES("3213272007","Cisampih","321327");
INSERT INTO kelurahan VALUES("3213272008","Margasari","321327");
INSERT INTO kelurahan VALUES("3213272009","Batusari","321327");
INSERT INTO kelurahan VALUES("3213272010","Jambelaer","321327");
INSERT INTO kelurahan VALUES("3213282001","Mekarwangi","321328");
INSERT INTO kelurahan VALUES("3213282002","Bendungan","321328");
INSERT INTO kelurahan VALUES("3213282003","Munjul","321328");
INSERT INTO kelurahan VALUES("3213282004","Margahayu","321328");
INSERT INTO kelurahan VALUES("3213282005","Pangsor","321328");
INSERT INTO kelurahan VALUES("3213282006","Sumurgintung","321328");
INSERT INTO kelurahan VALUES("3213282007","Balimbing (Balingbing)","321328");
INSERT INTO kelurahan VALUES("3213282008","Cidahu","321328");
INSERT INTO kelurahan VALUES("3213282009","Cidadap","321328");
INSERT INTO kelurahan VALUES("3213292001","Cisaat","321329");
INSERT INTO kelurahan VALUES("3213292002","Ciater","321329");
INSERT INTO kelurahan VALUES("3213292003","Nagrak","321329");
INSERT INTO kelurahan VALUES("3213292004","Cibeusi","321329");
INSERT INTO kelurahan VALUES("3213292005","Cibitung","321329");
INSERT INTO kelurahan VALUES("3213292006","Palasari","321329");
INSERT INTO kelurahan VALUES("3213292007","Sanca","321329");
INSERT INTO kelurahan VALUES("3213302001","Kebondanas","321330");
INSERT INTO kelurahan VALUES("3213302002","Pusakajaya","321330");
INSERT INTO kelurahan VALUES("3213302003","Karanganyar","321330");
INSERT INTO kelurahan VALUES("3213302004","Bojongtengah","321330");
INSERT INTO kelurahan VALUES("3213302005","Bojongjaya (Bojong Jaya)","321330");
INSERT INTO kelurahan VALUES("3213302006","Cigugur","321330");
INSERT INTO kelurahan VALUES("3213302007","Cigugur Kaler","321330");
INSERT INTO kelurahan VALUES("3213302008","Rangdu","321330");
INSERT INTO kelurahan VALUES("3214011001","Nagri Kidul (Nagrikidul)","321401");
INSERT INTO kelurahan VALUES("3214011002","Nagri Kaler (Nagrikaler)","321401");
INSERT INTO kelurahan VALUES("3214011003","Nagri Tengah (Nagritengah)","321401");
INSERT INTO kelurahan VALUES("3214011004","Sindangkasih","321401");
INSERT INTO kelurahan VALUES("3214011005","Cipaisan","321401");
INSERT INTO kelurahan VALUES("3214011006","Purwamekar","321401");
INSERT INTO kelurahan VALUES("3214011007","Ciseureuh","321401");
INSERT INTO kelurahan VALUES("3214011008","Tegalmuncul (Tegalmunjul)","321401");
INSERT INTO kelurahan VALUES("3214011009","Munjuljaya","321401");
INSERT INTO kelurahan VALUES("3214012010","Citalang","321401");
INSERT INTO kelurahan VALUES("3214022001","Campaka","321402");
INSERT INTO kelurahan VALUES("3214022002","Campakasari","321402");
INSERT INTO kelurahan VALUES("3214022003","Benteng","321402");
INSERT INTO kelurahan VALUES("3214022004","Cirende","321402");
INSERT INTO kelurahan VALUES("3214022005","Cikumpay","321402");
INSERT INTO kelurahan VALUES("3214022006","Cijaya","321402");
INSERT INTO kelurahan VALUES("3214022007","Kertamukti","321402");
INSERT INTO kelurahan VALUES("3214022008","Cimahi","321402");
INSERT INTO kelurahan VALUES("3214022009","Cijunti","321402");
INSERT INTO kelurahan VALUES("3214022010","Cisaat","321402");
INSERT INTO kelurahan VALUES("3214032001","Cikaobandung","321403");
INSERT INTO kelurahan VALUES("3214032002","Jatimekar","321403");
INSERT INTO kelurahan VALUES("3214032003","Jatiluhur","321403");
INSERT INTO kelurahan VALUES("3214032004","Cilegong","321403");
INSERT INTO kelurahan VALUES("3214032005","Kembangkuning","321403");
INSERT INTO kelurahan VALUES("3214032006","Cibinong","321403");
INSERT INTO kelurahan VALUES("3214032007","Bunder","321403");
INSERT INTO kelurahan VALUES("3214032008","Mekargalih","321403");
INSERT INTO kelurahan VALUES("3214032009","Cisalada","321403");
INSERT INTO kelurahan VALUES("3214032010","Parakanlima","321403");
INSERT INTO kelurahan VALUES("3214042001","Plered","321404");
INSERT INTO kelurahan VALUES("3214042002","Palinggihan","321404");
INSERT INTO kelurahan VALUES("3214042003","Cibogohilir","321404");
INSERT INTO kelurahan VALUES("3214042004","Linggasari (Linggarsari)","321404");
INSERT INTO kelurahan VALUES("3214042005","Gandasoli","321404");
INSERT INTO kelurahan VALUES("3214042006","Citeko","321404");
INSERT INTO kelurahan VALUES("3214042007","Liunggunung","321404");
INSERT INTO kelurahan VALUES("3214042008","Rawasari","321404");
INSERT INTO kelurahan VALUES("3214042009","Anjun","321404");
INSERT INTO kelurahan VALUES("3214042010","Sindangsari","321404");
INSERT INTO kelurahan VALUES("3214042011","Babakansari","321404");
INSERT INTO kelurahan VALUES("3214042012","Gandamekar","321404");
INSERT INTO kelurahan VALUES("3214042013","Citekokaler (Citeko Kaler)","321404");
INSERT INTO kelurahan VALUES("3214042014","Pamoyanan","321404");
INSERT INTO kelurahan VALUES("3214042015","Sempur","321404");
INSERT INTO kelurahan VALUES("3214042016","Cibogo Girang (Cibogogirang)","321404");
INSERT INTO kelurahan VALUES("3214052001","Sukatani","321405");
INSERT INTO kelurahan VALUES("3214052002","Malangnengah","321405");
INSERT INTO kelurahan VALUES("3214052003","Cilalawi","321405");
INSERT INTO kelurahan VALUES("3214052004","Sukamaju","321405");
INSERT INTO kelurahan VALUES("3214052005","Cipicung","321405");
INSERT INTO kelurahan VALUES("3214052006","Cianting Utara","321405");
INSERT INTO kelurahan VALUES("3214052007","Cianting","321405");
INSERT INTO kelurahan VALUES("3214052008","Pasirmunjul","321405");
INSERT INTO kelurahan VALUES("3214052009","Tajursindang","321405");
INSERT INTO kelurahan VALUES("3214052010","Cibodas","321405");
INSERT INTO kelurahan VALUES("3214052011","Cijantung","321405");
INSERT INTO kelurahan VALUES("3214052012","Sukajaya","321405");
INSERT INTO kelurahan VALUES("3214052013","Panyindangan","321405");
INSERT INTO kelurahan VALUES("3214052014","Sindanglaya","321405");
INSERT INTO kelurahan VALUES("3214062001","Darangdan","321406");
INSERT INTO kelurahan VALUES("3214062002","Depok","321406");
INSERT INTO kelurahan VALUES("3214062003","Cilingga","321406");
INSERT INTO kelurahan VALUES("3214062004","Nangewer","321406");
INSERT INTO kelurahan VALUES("3214062005","Mekarsari","321406");
INSERT INTO kelurahan VALUES("3214062006","Linggarsari (Linggasari)","321406");
INSERT INTO kelurahan VALUES("3214062007","Sawit","321406");
INSERT INTO kelurahan VALUES("3214062008","Linggamukti","321406");
INSERT INTO kelurahan VALUES("3214062009","Gununghejo","321406");
INSERT INTO kelurahan VALUES("3214062010","Pasirangin","321406");
INSERT INTO kelurahan VALUES("3214062011","Legoksari","321406");
INSERT INTO kelurahan VALUES("3214062012","Sirnamanah","321406");
INSERT INTO kelurahan VALUES("3214062013","Sadarkarya","321406");
INSERT INTO kelurahan VALUES("3214062014","Neglasari","321406");
INSERT INTO kelurahan VALUES("3214062015","Nagrak","321406");
INSERT INTO kelurahan VALUES("3214072001","Gunungkarung","321407");
INSERT INTO kelurahan VALUES("3214072002","Citamiang","321407");
INSERT INTO kelurahan VALUES("3214072003","Sinargalih","321407");
INSERT INTO kelurahan VALUES("3214072004","Tegaldatar","321407");
INSERT INTO kelurahan VALUES("3214072005","Cijati","321407");
INSERT INTO kelurahan VALUES("3214072006","Ciramahilir","321407");
INSERT INTO kelurahan VALUES("3214072007","Sukamukti","321407");
INSERT INTO kelurahan VALUES("3214072008","Pasirjambu","321407");
INSERT INTO kelurahan VALUES("3214082001","Batutumpang","321408");
INSERT INTO kelurahan VALUES("3214082002","Citalang","321408");
INSERT INTO kelurahan VALUES("3214082003","Tegalwaru","321408");
INSERT INTO kelurahan VALUES("3214082004","Tegalsari","321408");
INSERT INTO kelurahan VALUES("3214082005","Warungjeruk","321408");
INSERT INTO kelurahan VALUES("3214082006","Galumpit","321408");
INSERT INTO kelurahan VALUES("3214082007","Sukahaji","321408");
INSERT INTO kelurahan VALUES("3214082008","Karoya","321408");
INSERT INTO kelurahan VALUES("3214082009","Cadassari","321408");
INSERT INTO kelurahan VALUES("3214082010","Cadasmekar","321408");
INSERT INTO kelurahan VALUES("3214082011","Cisarua","321408");
INSERT INTO kelurahan VALUES("3214082012","Sukamulya","321408");
INSERT INTO kelurahan VALUES("3214082013","Pasanggrahan","321408");
INSERT INTO kelurahan VALUES("3214092001","Wanayasa","321409");
INSERT INTO kelurahan VALUES("3214092002","Sukadami","321409");
INSERT INTO kelurahan VALUES("3214092003","Wanasari","321409");
INSERT INTO kelurahan VALUES("3214092004","Simpang","321409");
INSERT INTO kelurahan VALUES("3214092005","Nagrog","321409");
INSERT INTO kelurahan VALUES("3214092006","Cibuntu","321409");
INSERT INTO kelurahan VALUES("3214092007","Babakan","321409");
INSERT INTO kelurahan VALUES("3214092008","Nangerang","321409");
INSERT INTO kelurahan VALUES("3214092009","Ciawi","321409");
INSERT INTO kelurahan VALUES("3214092010","Sumurugul","321409");
INSERT INTO kelurahan VALUES("3214092011","Raharja","321409");
INSERT INTO kelurahan VALUES("3214092012","Sakambang","321409");
INSERT INTO kelurahan VALUES("3214092013","Taringgul Tonggoh","321409");
INSERT INTO kelurahan VALUES("3214092014","Legokhuni","321409");
INSERT INTO kelurahan VALUES("3214092015","Taringgul Tengah","321409");
INSERT INTO kelurahan VALUES("3214102001","Pasawahananyar","321410");
INSERT INTO kelurahan VALUES("3214102002","Pasawahan","321410");
INSERT INTO kelurahan VALUES("3214102003","Sawahkulon (Sawah Kulon)","321410");
INSERT INTO kelurahan VALUES("3214102004","Ciherang","321410");
INSERT INTO kelurahan VALUES("3214102005","Cidahu","321410");
INSERT INTO kelurahan VALUES("3214102006","Pasawahankidul (Pasawahan Kidul)","321410");
INSERT INTO kelurahan VALUES("3214102007","Kertajaya","321410");
INSERT INTO kelurahan VALUES("3214102008","Lebakanyar (Lebak Anyar)","321410");
INSERT INTO kelurahan VALUES("3214102009","Selaawi","321410");
INSERT INTO kelurahan VALUES("3214102010","Margasari","321410");
INSERT INTO kelurahan VALUES("3214102011","Warungkadu (Warung Kadu)","321410");
INSERT INTO kelurahan VALUES("3214102012","Cihuni","321410");
INSERT INTO kelurahan VALUES("3214112001","Bojong Barat","321411");
INSERT INTO kelurahan VALUES("3214112002","Bojong Timur","321411");
INSERT INTO kelurahan VALUES("3214112003","Cikeris","321411");
INSERT INTO kelurahan VALUES("3214112004","Cihanjawar","321411");
INSERT INTO kelurahan VALUES("3214112005","Cipeundeuy","321411");
INSERT INTO kelurahan VALUES("3214112006","Cileunca","321411");
INSERT INTO kelurahan VALUES("3214112007","Cibingbin","321411");
INSERT INTO kelurahan VALUES("3214112008","Kertasari","321411");
INSERT INTO kelurahan VALUES("3214112009","Pangkalan","321411");
INSERT INTO kelurahan VALUES("3214112010","Pawenang","321411");
INSERT INTO kelurahan VALUES("3214112011","Sukamanah","321411");
INSERT INTO kelurahan VALUES("3214112012","Sindangpanon","321411");
INSERT INTO kelurahan VALUES("3214112013","Sindangsari","321411");
INSERT INTO kelurahan VALUES("3214112014","Pasanggrahan","321411");
INSERT INTO kelurahan VALUES("3214122001","Cilangkap","321412");
INSERT INTO kelurahan VALUES("3214122002","Cicadas","321412");
INSERT INTO kelurahan VALUES("3214122003","Hegarmanah","321412");
INSERT INTO kelurahan VALUES("3214122004","Babakancikao","321412");
INSERT INTO kelurahan VALUES("3214122005","Kadumekar","321412");
INSERT INTO kelurahan VALUES("3214122006","Marancang (Maracang)","321412");
INSERT INTO kelurahan VALUES("3214122007","Ciwareng","321412");
INSERT INTO kelurahan VALUES("3214122008","Mulyamekar","321412");
INSERT INTO kelurahan VALUES("3214122009","Cigelam","321412");
INSERT INTO kelurahan VALUES("3214132001","Ciwangi","321413");
INSERT INTO kelurahan VALUES("3214132002","Cibening","321413");
INSERT INTO kelurahan VALUES("3214132003","Bungursari","321413");
INSERT INTO kelurahan VALUES("3214132004","Dangdeur","321413");
INSERT INTO kelurahan VALUES("3214132005","Cibungur","321413");
INSERT INTO kelurahan VALUES("3214132006","Wanakerta","321413");
INSERT INTO kelurahan VALUES("3214132007","Cinangka","321413");
INSERT INTO kelurahan VALUES("3214132008","Cikopo","321413");
INSERT INTO kelurahan VALUES("3214132009","Cibodas","321413");
INSERT INTO kelurahan VALUES("3214132010","Karangmukti","321413");
INSERT INTO kelurahan VALUES("3214142001","Cibatu","321414");
INSERT INTO kelurahan VALUES("3214142002","Cilandak","321414");
INSERT INTO kelurahan VALUES("3214142003","Karyamekar","321414");
INSERT INTO kelurahan VALUES("3214142004","Cipinang","321414");
INSERT INTO kelurahan VALUES("3214142005","Ciparungsari","321414");
INSERT INTO kelurahan VALUES("3214142006","Cirangkong","321414");
INSERT INTO kelurahan VALUES("3214142007","Cikadu","321414");
INSERT INTO kelurahan VALUES("3214142008","Cibukamanah","321414");
INSERT INTO kelurahan VALUES("3214142009","Wanawali","321414");
INSERT INTO kelurahan VALUES("3214142010","Cipancur","321414");
INSERT INTO kelurahan VALUES("3214152001","Kutamanah","321415");
INSERT INTO kelurahan VALUES("3214152002","Kertamanah","321415");
INSERT INTO kelurahan VALUES("3214152003","Ciririp","321415");
INSERT INTO kelurahan VALUES("3214152004","Sukasari","321415");
INSERT INTO kelurahan VALUES("3214152005","Parungbanteng","321415");
INSERT INTO kelurahan VALUES("3214162001","Parakansalam","321416");
INSERT INTO kelurahan VALUES("3214162002","Pondokbungur","321416");
INSERT INTO kelurahan VALUES("3214162003","Salem","321416");
INSERT INTO kelurahan VALUES("3214162004","Galudra","321416");
INSERT INTO kelurahan VALUES("3214162005","Tanjungsari (Tanjung Sari)","321416");
INSERT INTO kelurahan VALUES("3214162006","Salammulya","321416");
INSERT INTO kelurahan VALUES("3214162007","Salamjaya","321416");
INSERT INTO kelurahan VALUES("3214162008","Bungurjaya","321416");
INSERT INTO kelurahan VALUES("3214162009","Gurudug","321416");
INSERT INTO kelurahan VALUES("3214162010","Sukajadi","321416");
INSERT INTO kelurahan VALUES("3214162011","Situ","321416");
INSERT INTO kelurahan VALUES("3214172001","Karangpedas (Kiarapedes)","321417");
INSERT INTO kelurahan VALUES("3214172002","Ciracas","321417");
INSERT INTO kelurahan VALUES("3214172003","Parakangarokgek (Parakan Garokgek)","321417");
INSERT INTO kelurahan VALUES("3214172004","Taringgullandeuh (Taringgul Landeuh)","321417");
INSERT INTO kelurahan VALUES("3214172005","Mekarjaya","321417");
INSERT INTO kelurahan VALUES("3214172006","Margaluyu","321417");
INSERT INTO kelurahan VALUES("3214172007","Gardu","321417");
INSERT INTO kelurahan VALUES("3214172008","Cibeber","321417");
INSERT INTO kelurahan VALUES("3214172009","Pusakamulya","321417");
INSERT INTO kelurahan VALUES("3214172010","Sumbersari","321417");
INSERT INTO kelurahan VALUES("3215011001","Karawang Kulon","321501");
INSERT INTO kelurahan VALUES("3215011003","Adiarsa Barat","321501");
INSERT INTO kelurahan VALUES("3215011005","Tanjungpura","321501");
INSERT INTO kelurahan VALUES("3215011006","Tanjungmekar","321501");
INSERT INTO kelurahan VALUES("3215011007","Tunggakjati","321501");
INSERT INTO kelurahan VALUES("3215011010","Karawangpawitan (Karangpawitan)","321501");
INSERT INTO kelurahan VALUES("3215011011","Nagasari","321501");
INSERT INTO kelurahan VALUES("3215011012","Mekarjati","321501");
INSERT INTO kelurahan VALUES("3215022001","Ciptasari","321502");
INSERT INTO kelurahan VALUES("3215022002","Tamanmekar","321502");
INSERT INTO kelurahan VALUES("3215022003","Tamansari","321502");
INSERT INTO kelurahan VALUES("3215022004","Jatilaksana","321502");
INSERT INTO kelurahan VALUES("3215022005","Cintaasih","321502");
INSERT INTO kelurahan VALUES("3215022006","Kertasari","321502");
INSERT INTO kelurahan VALUES("3215022007","Mulangsari","321502");
INSERT INTO kelurahan VALUES("3215022008","Medalsari","321502");
INSERT INTO kelurahan VALUES("3215032001","Telukjambe","321503");
INSERT INTO kelurahan VALUES("3215032002","Sukaharja","321503");
INSERT INTO kelurahan VALUES("3215032003","Sirnabaya","321503");
INSERT INTO kelurahan VALUES("3215032004","Puseurjaya","321503");
INSERT INTO kelurahan VALUES("3215032005","Sukaluyu","321503");
INSERT INTO kelurahan VALUES("3215032006","Wadas","321503");
INSERT INTO kelurahan VALUES("3215032011","Purwadana","321503");
INSERT INTO kelurahan VALUES("3215032012","Sukamakmur","321503");
INSERT INTO kelurahan VALUES("3215032019","Pinayungan","321503");
INSERT INTO kelurahan VALUES("3215042001","Kutapohaci","321504");
INSERT INTO kelurahan VALUES("3215042003","Parungmulya","321504");
INSERT INTO kelurahan VALUES("3215042004","Kutamekar","321504");
INSERT INTO kelurahan VALUES("3215042005","Kutanegara","321504");
INSERT INTO kelurahan VALUES("3215042006","Mulyasari","321504");
INSERT INTO kelurahan VALUES("3215042007","Mulyasejati","321504");
INSERT INTO kelurahan VALUES("3215042008","Tegallega (Tegalega)","321504");
INSERT INTO kelurahan VALUES("3215052001","Duren","321505");
INSERT INTO kelurahan VALUES("3215052002","Pancawati","321505");
INSERT INTO kelurahan VALUES("3215052003","Walahar","321505");
INSERT INTO kelurahan VALUES("3215052004","Kiarapayung","321505");
INSERT INTO kelurahan VALUES("3215052005","Sumurkondang","321505");
INSERT INTO kelurahan VALUES("3215052006","Cibalongsari","321505");
INSERT INTO kelurahan VALUES("3215052007","Klari","321505");
INSERT INTO kelurahan VALUES("3215052008","Belendung","321505");
INSERT INTO kelurahan VALUES("3215052016","Anggadita","321505");
INSERT INTO kelurahan VALUES("3215052017","Gintungkerta","321505");
INSERT INTO kelurahan VALUES("3215052018","Curug","321505");
INSERT INTO kelurahan VALUES("3215052019","Karanganyar","321505");
INSERT INTO kelurahan VALUES("3215052020","Cimahi","321505");
INSERT INTO kelurahan VALUES("3215062001","Rengasdengklok Selatan","321506");
INSERT INTO kelurahan VALUES("3215062002","Rengasdengklok Utara","321506");
INSERT INTO kelurahan VALUES("3215062003","Kertasari","321506");
INSERT INTO kelurahan VALUES("3215062004","Dewisari","321506");
INSERT INTO kelurahan VALUES("3215062005","Amansari","321506");
INSERT INTO kelurahan VALUES("3215062006","Karyasari","321506");
INSERT INTO kelurahan VALUES("3215062007","Dukuhkarya","321506");
INSERT INTO kelurahan VALUES("3215062008","Kalangsari","321506");
INSERT INTO kelurahan VALUES("3215062009","Kalangsurya (Kalangsuria)","321506");
INSERT INTO kelurahan VALUES("3215072001","Waluya","321507");
INSERT INTO kelurahan VALUES("3215072002","Mulyajaya","321507");
INSERT INTO kelurahan VALUES("3215072003","Kutakarya","321507");
INSERT INTO kelurahan VALUES("3215072004","Kutagandok","321507");
INSERT INTO kelurahan VALUES("3215072005","Kutamukti","321507");
INSERT INTO kelurahan VALUES("3215072006","Kutajaya","321507");
INSERT INTO kelurahan VALUES("3215072007","Sampalan","321507");
INSERT INTO kelurahan VALUES("3215072008","Sindangmulya","321507");
INSERT INTO kelurahan VALUES("3215072009","Sindangmukti","321507");
INSERT INTO kelurahan VALUES("3215072010","Kutaraja","321507");
INSERT INTO kelurahan VALUES("3215072011","Sindangsari","321507");
INSERT INTO kelurahan VALUES("3215072012","Sindangkarya","321507");
INSERT INTO kelurahan VALUES("3215082001","Batujaya","321508");
INSERT INTO kelurahan VALUES("3215082002","Telukambulu","321508");
INSERT INTO kelurahan VALUES("3215082003","Telukbango","321508");
INSERT INTO kelurahan VALUES("3215082004","Karyabhakti (Karyabakti)","321508");
INSERT INTO kelurahan VALUES("3215082005","Baturaden","321508");
INSERT INTO kelurahan VALUES("3215082006","Segaran","321508");
INSERT INTO kelurahan VALUES("3215082007","Segarjaya","321508");
INSERT INTO kelurahan VALUES("3215082008","Kutaampel","321508");
INSERT INTO kelurahan VALUES("3215082009","Karyamulya","321508");
INSERT INTO kelurahan VALUES("3215082010","Karyamakmur","321508");
INSERT INTO kelurahan VALUES("3215092001","Sabajaya","321509");
INSERT INTO kelurahan VALUES("3215092002","Pisangsambo","321509");
INSERT INTO kelurahan VALUES("3215092003","Gempolkarya","321509");
INSERT INTO kelurahan VALUES("3215092004","Medankarya","321509");
INSERT INTO kelurahan VALUES("3215092005","Tambaksumur","321509");
INSERT INTO kelurahan VALUES("3215092006","Tambaksari","321509");
INSERT INTO kelurahan VALUES("3215092007","Sumurlaban","321509");
INSERT INTO kelurahan VALUES("3215092008","Srijaya","321509");
INSERT INTO kelurahan VALUES("3215092009","Kutamakmur","321509");
INSERT INTO kelurahan VALUES("3215092010","Bolang","321509");
INSERT INTO kelurahan VALUES("3215092011","Srikamulyan","321509");
INSERT INTO kelurahan VALUES("3215102001","Payungsari","321510");
INSERT INTO kelurahan VALUES("3215102002","Karangjaya","321510");
INSERT INTO kelurahan VALUES("3215102003","Kertaraharja","321510");
INSERT INTO kelurahan VALUES("3215102005","Sungaibuntu","321510");
INSERT INTO kelurahan VALUES("3215102006","Dongkal","321510");
INSERT INTO kelurahan VALUES("3215102007","Kertamulya","321510");
INSERT INTO kelurahan VALUES("3215102008","Puspasari","321510");
INSERT INTO kelurahan VALUES("3215102010","Labanjaya","321510");
INSERT INTO kelurahan VALUES("3215102012","Jatimulya","321510");
INSERT INTO kelurahan VALUES("3215102016","Rangdumulya (Randumulya)","321510");
INSERT INTO kelurahan VALUES("3215102017","Kendaljaya (Kedaljaya)","321510");
INSERT INTO kelurahan VALUES("3215102018","Malangsari","321510");
INSERT INTO kelurahan VALUES("3215112001","Pejaten","321511");
INSERT INTO kelurahan VALUES("3215112002","Cibuaya","321511");
INSERT INTO kelurahan VALUES("3215112003","Kertarahayu","321511");
INSERT INTO kelurahan VALUES("3215112004","Sukasari","321511");
INSERT INTO kelurahan VALUES("3215112005","Kedungjeruk","321511");
INSERT INTO kelurahan VALUES("3215112006","Kalidungjaya","321511");
INSERT INTO kelurahan VALUES("3215112007","Sedari","321511");
INSERT INTO kelurahan VALUES("3215112008","Cemarajaya","321511");
INSERT INTO kelurahan VALUES("3215112009","Jayamulya","321511");
INSERT INTO kelurahan VALUES("3215112010","Kedungjaya","321511");
INSERT INTO kelurahan VALUES("3215112011","Gebangjaya","321511");
INSERT INTO kelurahan VALUES("3215122001","Tanjungmekar","321512");
INSERT INTO kelurahan VALUES("3215122002","Telagajaya (Talagajaya)","321512");
INSERT INTO kelurahan VALUES("3215122003","Telukbuyung","321512");
INSERT INTO kelurahan VALUES("3215122004","Tanahbaru","321512");
INSERT INTO kelurahan VALUES("3215122005","Solokan","321512");
INSERT INTO kelurahan VALUES("3215122006","Tanjungbungin","321512");
INSERT INTO kelurahan VALUES("3215122007","Telukjaya","321512");
INSERT INTO kelurahan VALUES("3215122008","Tanjungpakis","321512");
INSERT INTO kelurahan VALUES("3215132001","Dawuan Timur","321513");
INSERT INTO kelurahan VALUES("3215132002","Kalihurip","321513");
INSERT INTO kelurahan VALUES("3215132003","Cikampek Kota","321513");
INSERT INTO kelurahan VALUES("3215132004","Dawuan Tengah","321513");
INSERT INTO kelurahan VALUES("3215132006","Cikampek Selatan","321513");
INSERT INTO kelurahan VALUES("3215132007","Cikampek Pusaka","321513");
INSERT INTO kelurahan VALUES("3215132008","Cikampek Barat","321513");
INSERT INTO kelurahan VALUES("3215132009","Cikampek Timur","321513");
INSERT INTO kelurahan VALUES("3215132010","Kamojing","321513");
INSERT INTO kelurahan VALUES("3215132011","Dawuan Barat","321513");
INSERT INTO kelurahan VALUES("3215142001","Mekarsari","321514");
INSERT INTO kelurahan VALUES("3215142002","Jatisari","321514");
INSERT INTO kelurahan VALUES("3215142003","Barugbug","321514");
INSERT INTO kelurahan VALUES("3215142004","Cikalongsari","321514");
INSERT INTO kelurahan VALUES("3215142005","Cirejag","321514");
INSERT INTO kelurahan VALUES("3215142006","Jatibaru","321514");
INSERT INTO kelurahan VALUES("3215142007","Jatiragas","321514");
INSERT INTO kelurahan VALUES("3215142008","Jatiwangi","321514");
INSERT INTO kelurahan VALUES("3215142009","Kalijati","321514");
INSERT INTO kelurahan VALUES("3215142010","Balonggandu","321514");
INSERT INTO kelurahan VALUES("3215142011","Pacing","321514");
INSERT INTO kelurahan VALUES("3215142012","Situdam","321514");
INSERT INTO kelurahan VALUES("3215142013","Sukamekar","321514");
INSERT INTO kelurahan VALUES("3215142014","Telarsari","321514");
INSERT INTO kelurahan VALUES("3215152001","Mekarmaya","321515");
INSERT INTO kelurahan VALUES("3215152002","Cilamaya","321515");
INSERT INTO kelurahan VALUES("3215152003","Muara","321515");
INSERT INTO kelurahan VALUES("3215152004","Muarabaru","321515");
INSERT INTO kelurahan VALUES("3215152005","Sukatani","321515");
INSERT INTO kelurahan VALUES("3215152006","Tegalwaru","321515");
INSERT INTO kelurahan VALUES("3215152007","Tegalsari","321515");
INSERT INTO kelurahan VALUES("3215152008","Cikalong","321515");
INSERT INTO kelurahan VALUES("3215152009","Cikarang","321515");
INSERT INTO kelurahan VALUES("3215152010","Rawagempol Wetan","321515");
INSERT INTO kelurahan VALUES("3215152011","Rawagempol Kulon","321515");
INSERT INTO kelurahan VALUES("3215152012","Sukakerta","321515");
INSERT INTO kelurahan VALUES("3215162001","Citarik","321516");
INSERT INTO kelurahan VALUES("3215162002","Karangsinom","321516");
INSERT INTO kelurahan VALUES("3215162003","Karangjaya","321516");
INSERT INTO kelurahan VALUES("3215162004","Parakan","321516");
INSERT INTO kelurahan VALUES("3215162005","Parakanmulya","321516");
INSERT INTO kelurahan VALUES("3215162006","Kamurang","321516");
INSERT INTO kelurahan VALUES("3215162007","Cipondoh","321516");
INSERT INTO kelurahan VALUES("3215162008","Kertawaluya","321516");
INSERT INTO kelurahan VALUES("3215162009","Bojongsari","321516");
INSERT INTO kelurahan VALUES("3215162010","Tirtasari","321516");
INSERT INTO kelurahan VALUES("3215172001","Telagamulya (Talagamulya)","321517");
INSERT INTO kelurahan VALUES("3215172002","Telagasari (Talagasari)","321517");
INSERT INTO kelurahan VALUES("3215172003","Pasirtalaga","321517");
INSERT INTO kelurahan VALUES("3215172004","Cariumulya","321517");
INSERT INTO kelurahan VALUES("3215172005","Pasirmukti","321517");
INSERT INTO kelurahan VALUES("3215172006","Kalibuaya","321517");
INSERT INTO kelurahan VALUES("3215172007","Pasirkamuning","321517");
INSERT INTO kelurahan VALUES("3215172008","Kalijaya","321517");
INSERT INTO kelurahan VALUES("3215172009","Kalisari","321517");
INSERT INTO kelurahan VALUES("3215172010","Cadas Kertajaya (Cadaskertajaya)","321517");
INSERT INTO kelurahan VALUES("3215172011","Cilewo","321517");
INSERT INTO kelurahan VALUES("3215172012","Ciwulan","321517");
INSERT INTO kelurahan VALUES("3215172013","Linggarsari","321517");
INSERT INTO kelurahan VALUES("3215172014","Pulosari","321517");
INSERT INTO kelurahan VALUES("3215182001","Sukamerta","321518");
INSERT INTO kelurahan VALUES("3215182002","Kutawargi","321518");
INSERT INTO kelurahan VALUES("3215182003","Panyingkiran","321518");
INSERT INTO kelurahan VALUES("3215182004","Pasirkaliki","321518");
INSERT INTO kelurahan VALUES("3215182005","Pasirawi","321518");
INSERT INTO kelurahan VALUES("3215182006","Balongsari","321518");
INSERT INTO kelurahan VALUES("3215182007","Mekarjaya","321518");
INSERT INTO kelurahan VALUES("3215182008","Sekarwangi","321518");
INSERT INTO kelurahan VALUES("3215182009","Purwamekar","321518");
INSERT INTO kelurahan VALUES("3215182010","Sukapura","321518");
INSERT INTO kelurahan VALUES("3215182011","Cibadak","321518");
INSERT INTO kelurahan VALUES("3215182012","Sukaraja","321518");
INSERT INTO kelurahan VALUES("3215182014","Gombongsari","321518");
INSERT INTO kelurahan VALUES("3215192001","Karyamukti","321519");
INSERT INTO kelurahan VALUES("3215192002","Ciwaringin","321519");
INSERT INTO kelurahan VALUES("3215192003","Waringinkarya","321519");
INSERT INTO kelurahan VALUES("3215192004","Kedawung","321519");
INSERT INTO kelurahan VALUES("3215192005","Karangtanjung","321519");
INSERT INTO kelurahan VALUES("3215192006","Pasirtanjung","321519");
INSERT INTO kelurahan VALUES("3215192007","Lemahabang","321519");
INSERT INTO kelurahan VALUES("3215192008","Lemahmukti","321519");
INSERT INTO kelurahan VALUES("3215192009","Pulojaya","321519");
INSERT INTO kelurahan VALUES("3215192010","Pulokalapa (Pulokelapa)","321519");
INSERT INTO kelurahan VALUES("3215192011","Pulomulya","321519");
INSERT INTO kelurahan VALUES("3215202001","Pancakarya","321520");
INSERT INTO kelurahan VALUES("3215202002","Dayeuhluhur","321520");
INSERT INTO kelurahan VALUES("3215202003","Lemahduhur","321520");
INSERT INTO kelurahan VALUES("3215202004","Lemahkarya","321520");
INSERT INTO kelurahan VALUES("3215202005","Lemahsubur","321520");
INSERT INTO kelurahan VALUES("3215202006","Lemahmakmur","321520");
INSERT INTO kelurahan VALUES("3215202008","Purwajaya","321520");
INSERT INTO kelurahan VALUES("3215202010","Tanjungjaya","321520");
INSERT INTO kelurahan VALUES("3215202011","Sumberjaya","321520");
INSERT INTO kelurahan VALUES("3215202012","Pagadungan","321520");
INSERT INTO kelurahan VALUES("3215202013","Tempuran","321520");
INSERT INTO kelurahan VALUES("3215202014","Cikuntul","321520");
INSERT INTO kelurahan VALUES("3215202016","Jayanegara (Jayanagara)","321520");
INSERT INTO kelurahan VALUES("3215202017","Ciparagejaya","321520");
INSERT INTO kelurahan VALUES("3215212001","Majalaya","321521");
INSERT INTO kelurahan VALUES("3215212002","Ciranggon","321521");
INSERT INTO kelurahan VALUES("3215212003","Pasirjengkol","321521");
INSERT INTO kelurahan VALUES("3215212005","Sarijaya","321521");
INSERT INTO kelurahan VALUES("3215212006","Pasirmulya","321521");
INSERT INTO kelurahan VALUES("3215212007","Lemahmulya","321521");
INSERT INTO kelurahan VALUES("3215212008","Bangle (Bengle)","321521");
INSERT INTO kelurahan VALUES("3215222001","Jayamakmur","321522");
INSERT INTO kelurahan VALUES("3215222002","Kemiri","321522");
INSERT INTO kelurahan VALUES("3215222003","Makmurjaya","321522");
INSERT INTO kelurahan VALUES("3215222004","Kertajaya","321522");
INSERT INTO kelurahan VALUES("3215222005","Jayakerta","321522");
INSERT INTO kelurahan VALUES("3215222006","Medangasem","321522");
INSERT INTO kelurahan VALUES("3215222007","Ciptamarga","321522");
INSERT INTO kelurahan VALUES("3215222008","Kampungsawah","321522");
INSERT INTO kelurahan VALUES("3215232001","Sukamulya","321523");
INSERT INTO kelurahan VALUES("3215232002","Tegalurung","321523");
INSERT INTO kelurahan VALUES("3215232003","Langensari","321523");
INSERT INTO kelurahan VALUES("3215232004","Bayur Lor","321523");
INSERT INTO kelurahan VALUES("3215232005","Bayur Kidul","321523");
INSERT INTO kelurahan VALUES("3215232006","Kiara","321523");
INSERT INTO kelurahan VALUES("3215232007","Manggungjaya","321523");
INSERT INTO kelurahan VALUES("3215232008","Sumurgede","321523");
INSERT INTO kelurahan VALUES("3215232009","Muktijaya","321523");
INSERT INTO kelurahan VALUES("3215232010","Pasirukem","321523");
INSERT INTO kelurahan VALUES("3215232011","Pasirjaya","321523");
INSERT INTO kelurahan VALUES("3215232012","Sukajaya","321523");
INSERT INTO kelurahan VALUES("3215242001","Gembongan","321524");
INSERT INTO kelurahan VALUES("3215242002","Gempol","321524");
INSERT INTO kelurahan VALUES("3215242003","Gempol Kolot (Gempolkolot)","321524");
INSERT INTO kelurahan VALUES("3215242004","Banyuasih","321524");
INSERT INTO kelurahan VALUES("3215242005","Kertaraharja (Kutaraharja)","321524");
INSERT INTO kelurahan VALUES("3215242006","Tanjung","321524");
INSERT INTO kelurahan VALUES("3215242007","Jayamukti","321524");
INSERT INTO kelurahan VALUES("3215242008","Cicinde Utara","321524");
INSERT INTO kelurahan VALUES("3215242009","Cicinde Selatan","321524");
INSERT INTO kelurahan VALUES("3215242010","Mekarasih","321524");
INSERT INTO kelurahan VALUES("3215242011","Talunjaya","321524");
INSERT INTO kelurahan VALUES("3215242012","Pamekaran","321524");
INSERT INTO kelurahan VALUES("3215252001","Wancimekar","321525");
INSERT INTO kelurahan VALUES("3215252002","Pangulah Selatan","321525");
INSERT INTO kelurahan VALUES("3215252003","Pangulah Utara","321525");
INSERT INTO kelurahan VALUES("3215252004","Pangulah Baru","321525");
INSERT INTO kelurahan VALUES("3215252005","Pucung","321525");
INSERT INTO kelurahan VALUES("3215252006","Jomin Timur","321525");
INSERT INTO kelurahan VALUES("3215252007","Jomin Barat","321525");
INSERT INTO kelurahan VALUES("3215252008","Sarimulya","321525");
INSERT INTO kelurahan VALUES("3215252009","Cilkampek Utara (Cikampek Utara)","321525");
INSERT INTO kelurahan VALUES("3215261001","Karawang Wetan","321526");
INSERT INTO kelurahan VALUES("3215261002","Adiarsa Timur","321526");
INSERT INTO kelurahan VALUES("3215261003","Palumbonsari","321526");
INSERT INTO kelurahan VALUES("3215261004","Plawad (Palawad)","321526");
INSERT INTO kelurahan VALUES("3215262005","Margasari","321526");
INSERT INTO kelurahan VALUES("3215262006","Warungbambu","321526");
INSERT INTO kelurahan VALUES("3215262007","Kondangjaya","321526");
INSERT INTO kelurahan VALUES("3215262008","Tegal Sawah (Tegalsawah)","321526");
INSERT INTO kelurahan VALUES("3215272001","Margakaya","321527");
INSERT INTO kelurahan VALUES("3215272002","Margamulya","321527");
INSERT INTO kelurahan VALUES("3215272003","Kalangligar (Karangligar)","321527");
INSERT INTO kelurahan VALUES("3215272004","Mekarmulya","321527");
INSERT INTO kelurahan VALUES("3215272005","Parungsari","321527");
INSERT INTO kelurahan VALUES("3215272006","Karangmulya","321527");
INSERT INTO kelurahan VALUES("3215272007","Wanasari","321527");
INSERT INTO kelurahan VALUES("3215272008","Wanakerta","321527");
INSERT INTO kelurahan VALUES("3215272009","Wanajaya","321527");
INSERT INTO kelurahan VALUES("3215272010","Mulyajaya","321527");
INSERT INTO kelurahan VALUES("3215282001","Cigunungsari","321528");
INSERT INTO kelurahan VALUES("3215282002","Wargasetra","321528");
INSERT INTO kelurahan VALUES("3215282003","Mekarbuana","321528");
INSERT INTO kelurahan VALUES("3215282004","Cintalaksana","321528");
INSERT INTO kelurahan VALUES("3215282005","Cintawargi","321528");
INSERT INTO kelurahan VALUES("3215282006","Cintalanggeng","321528");
INSERT INTO kelurahan VALUES("3215282007","Kutalanggeng","321528");
INSERT INTO kelurahan VALUES("3215282008","Kutamaneuh","321528");
INSERT INTO kelurahan VALUES("3215282009","Cipurwasari","321528");
INSERT INTO kelurahan VALUES("3215292001","Darawolong","321529");
INSERT INTO kelurahan VALUES("3215292002","Tegalsari","321529");
INSERT INTO kelurahan VALUES("3215292003","Purwasari","321529");
INSERT INTO kelurahan VALUES("3215292004","Mekarjaya","321529");
INSERT INTO kelurahan VALUES("3215292005","Tamelang","321529");
INSERT INTO kelurahan VALUES("3215292006","Cengkong","321529");
INSERT INTO kelurahan VALUES("3215292007","Sukasari","321529");
INSERT INTO kelurahan VALUES("3215292008","Karangsari","321529");
INSERT INTO kelurahan VALUES("3215302001","Kertamukti","321530");
INSERT INTO kelurahan VALUES("3215302002","Rawasari","321530");
INSERT INTO kelurahan VALUES("3215302003","Pusakajaya Selatan","321530");
INSERT INTO kelurahan VALUES("3215302004","Cikande","321530");
INSERT INTO kelurahan VALUES("3215302005","Kosambibatu","321530");
INSERT INTO kelurahan VALUES("3215302006","Pusakajaya Utara","321530");
INSERT INTO kelurahan VALUES("3215302007","Sukaratu","321530");
INSERT INTO kelurahan VALUES("3215302008","Ciptamargi","321530");
INSERT INTO kelurahan VALUES("3215302009","Mekarpohaci","321530");
INSERT INTO kelurahan VALUES("3215302010","Tanjungsari","321530");
INSERT INTO kelurahan VALUES("3216012001","Sagara Makmur (Segara Makmur)","321601");
INSERT INTO kelurahan VALUES("3216012002","Segarajaya (Segara Jaya)","321601");
INSERT INTO kelurahan VALUES("3216012003","Pusaka Rakyat","321601");
INSERT INTO kelurahan VALUES("3216012004","Pahlawan Setia","321601");
INSERT INTO kelurahan VALUES("3216012005","Setia Mulya","321601");
INSERT INTO kelurahan VALUES("3216012006","Samudra Jaya","321601");
INSERT INTO kelurahan VALUES("3216012007","Setia Asih","321601");
INSERT INTO kelurahan VALUES("3216012008","Pantai Makmur","321601");
INSERT INTO kelurahan VALUES("3216021006","Bahagia","321602");
INSERT INTO kelurahan VALUES("3216021007","Kebalen","321602");
INSERT INTO kelurahan VALUES("3216022001","Bunibakti (Buni Bakti)","321602");
INSERT INTO kelurahan VALUES("3216022002","Muarabakti (Muara Bakti)","321602");
INSERT INTO kelurahan VALUES("3216022003","Kedung Pengawas","321602");
INSERT INTO kelurahan VALUES("3216022004","Hurip Jaya","321602");
INSERT INTO kelurahan VALUES("3216022005","Pantaihurip (Pantai Hurip)","321602");
INSERT INTO kelurahan VALUES("3216022008","Babelankota (Babelan Kota)","321602");
INSERT INTO kelurahan VALUES("3216022009","Kedungjaya","321602");
INSERT INTO kelurahan VALUES("3216032001","Sukaringin","321603");
INSERT INTO kelurahan VALUES("3216032002","Sukabudi","321603");
INSERT INTO kelurahan VALUES("3216032003","Sukadaya","321603");
INSERT INTO kelurahan VALUES("3216032004","Sukawangi","321603");
INSERT INTO kelurahan VALUES("3216032005","Sukakerta","321603");
INSERT INTO kelurahan VALUES("3216032006","Sukatenang","321603");
INSERT INTO kelurahan VALUES("3216032007","Sukamekar","321603");
INSERT INTO kelurahan VALUES("3216042001","Sukawijaya","321604");
INSERT INTO kelurahan VALUES("3216042002","Sukamaju","321604");
INSERT INTO kelurahan VALUES("3216042003","Sukaraja","321604");
INSERT INTO kelurahan VALUES("3216042004","Sukarapih","321604");
INSERT INTO kelurahan VALUES("3216042005","Sukarahayu","321604");
INSERT INTO kelurahan VALUES("3216042006","Sukamantri","321604");
INSERT INTO kelurahan VALUES("3216042007","Sukabakti","321604");
INSERT INTO kelurahan VALUES("3216052001","Satriajaya","321605");
INSERT INTO kelurahan VALUES("3216052002","Jalenjaya (Jejalenjaya)","321605");
INSERT INTO kelurahan VALUES("3216052003","Satriamekar","321605");
INSERT INTO kelurahan VALUES("3216052004","Sriamur","321605");
INSERT INTO kelurahan VALUES("3216052005","Srimukti","321605");
INSERT INTO kelurahan VALUES("3216052006","Srijaya","321605");
INSERT INTO kelurahan VALUES("3216052007","Srimahi","321605");
INSERT INTO kelurahan VALUES("3216052008","Karangsatria","321605");
INSERT INTO kelurahan VALUES("3216061001","Jatimulya","321606");
INSERT INTO kelurahan VALUES("3216062002","Lambangsari","321606");
INSERT INTO kelurahan VALUES("3216062003","Lambangjaya","321606");
INSERT INTO kelurahan VALUES("3216062004","Tambun","321606");
INSERT INTO kelurahan VALUES("3216062005","Setiadarma","321606");
INSERT INTO kelurahan VALUES("3216062006","Setiamekar","321606");
INSERT INTO kelurahan VALUES("3216062007","Mekarsari","321606");
INSERT INTO kelurahan VALUES("3216062008","Tridaya Sakti","321606");
INSERT INTO kelurahan VALUES("3216062009","Mangunjaya","321606");
INSERT INTO kelurahan VALUES("3216062010","Sumberjaya (Sumber Jaya)","321606");
INSERT INTO kelurahan VALUES("3216071001","Wanasari","321607");
INSERT INTO kelurahan VALUES("3216072002","Wanajaya","321607");
INSERT INTO kelurahan VALUES("3216072003","Kertamukti (Kerta Mukti)","321607");
INSERT INTO kelurahan VALUES("3216072004","Muktiwari","321607");
INSERT INTO kelurahan VALUES("3216072005","Sarimukti","321607");
INSERT INTO kelurahan VALUES("3216072006","Sukajaya","321607");
INSERT INTO kelurahan VALUES("3216072007","Cibuntu","321607");
INSERT INTO kelurahan VALUES("3216081008","Telaga Asih","321608");
INSERT INTO kelurahan VALUES("3216082001","Telagamurni (Telaga Murni)","321608");
INSERT INTO kelurahan VALUES("3216082002","Mekarwangi (Mekar Wangi)","321608");
INSERT INTO kelurahan VALUES("3216082003","Jatiwangi","321608");
INSERT INTO kelurahan VALUES("3216082004","Danau Indah","321608");
INSERT INTO kelurahan VALUES("3216082005","Gandamekar","321608");
INSERT INTO kelurahan VALUES("3216082006","Gandasari","321608");
INSERT INTO kelurahan VALUES("3216082007","Sukadanau","321608");
INSERT INTO kelurahan VALUES("3216082009","Kalijaya (Kali Jaya)","321608");
INSERT INTO kelurahan VALUES("3216082010","Telajung","321608");
INSERT INTO kelurahan VALUES("3216082011","Cikedokan","321608");
INSERT INTO kelurahan VALUES("3216092001","Cikarangkota (Cikarang Kota)","321609");
INSERT INTO kelurahan VALUES("3216092002","Karangbaru (Karang Baru)","321609");
INSERT INTO kelurahan VALUES("3216092003","Karangasih","321609");
INSERT INTO kelurahan VALUES("3216092004","Waluya","321609");
INSERT INTO kelurahan VALUES("3216092005","Karangraharja","321609");
INSERT INTO kelurahan VALUES("3216092006","Pasirgombong (Pasir Gombong)","321609");
INSERT INTO kelurahan VALUES("3216092007","Simpangan","321609");
INSERT INTO kelurahan VALUES("3216092008","Tanjungsari","321609");
INSERT INTO kelurahan VALUES("3216092009","Hajarmekar (Harja Mekar)","321609");
INSERT INTO kelurahan VALUES("3216092010","Mekarmukti","321609");
INSERT INTO kelurahan VALUES("3216092011","Wangunharja","321609");
INSERT INTO kelurahan VALUES("3216102001","Sukaraya","321610");
INSERT INTO kelurahan VALUES("3216102002","Karangrahayu (Karang Rahayu)","321610");
INSERT INTO kelurahan VALUES("3216102003","Karangsetia (Karang Setra)","321610");
INSERT INTO kelurahan VALUES("3216102004","Karanganyar","321610");
INSERT INTO kelurahan VALUES("3216102005","Karangbahagia (Karang Bahagia)","321610");
INSERT INTO kelurahan VALUES("3216102006","Karangsentosa (Karang Sentosa)","321610");
INSERT INTO kelurahan VALUES("3216102007","Karangsatu (Karang Setu)","321610");
INSERT INTO kelurahan VALUES("3216102008","Karangmukti","321610");
INSERT INTO kelurahan VALUES("3216111007","Sertajaya","321611");
INSERT INTO kelurahan VALUES("3216112001","Tanjungbaru","321611");
INSERT INTO kelurahan VALUES("3216112002","Cipayung","321611");
INSERT INTO kelurahan VALUES("3216112003","Hegarmanah","321611");
INSERT INTO kelurahan VALUES("3216112004","Jatireja","321611");
INSERT INTO kelurahan VALUES("3216112005","Jatibaru","321611");
INSERT INTO kelurahan VALUES("3216112006","Labansari","321611");
INSERT INTO kelurahan VALUES("3216112008","Karangsari","321611");
INSERT INTO kelurahan VALUES("3216122001","Karangsambung (Karang Sambung)","321612");
INSERT INTO kelurahan VALUES("3216122002","Waringinjaya (Waringin Jaya)","321612");
INSERT INTO kelurahan VALUES("3216122003","Karangmekar (Karang Mekar)","321612");
INSERT INTO kelurahan VALUES("3216122004","Mekarjaya (Mekar Jaya)","321612");
INSERT INTO kelurahan VALUES("3216122005","Karangharum (Karang Harum)","321612");
INSERT INTO kelurahan VALUES("3216122006","Bojongsari","321612");
INSERT INTO kelurahan VALUES("3216122007","Kedungwaringin","321612");
INSERT INTO kelurahan VALUES("3216131011","Kertasari","321613");
INSERT INTO kelurahan VALUES("3216132001","Karangharja (Karang Harja)","321613");
INSERT INTO kelurahan VALUES("3216132002","Karangsegar","321613");
INSERT INTO kelurahan VALUES("3216132003","Sumberurip","321613");
INSERT INTO kelurahan VALUES("3216132004","Sumbereja (Sumberreja)","321613");
INSERT INTO kelurahan VALUES("3216132005","Karangreja","321613");
INSERT INTO kelurahan VALUES("3216132006","Karangjaya","321613");
INSERT INTO kelurahan VALUES("3216132007","Sumbersari","321613");
INSERT INTO kelurahan VALUES("3216132008","Karangpatri","321613");
INSERT INTO kelurahan VALUES("3216132009","Karanghaur","321613");
INSERT INTO kelurahan VALUES("3216132010","Kertajaya","321613");
INSERT INTO kelurahan VALUES("3216132012","Bantarsari","321613");
INSERT INTO kelurahan VALUES("3216132013","Bantarjaya","321613");
INSERT INTO kelurahan VALUES("3216142001","Sukamurni","321614");
INSERT INTO kelurahan VALUES("3216142002","Sukaindah","321614");
INSERT INTO kelurahan VALUES("3216142003","Sukakarya","321614");
INSERT INTO kelurahan VALUES("3216142004","Sukalaksana","321614");
INSERT INTO kelurahan VALUES("3216142005","Sukajadi","321614");
INSERT INTO kelurahan VALUES("3216142006","Sukakarsa (Sukakersa)","321614");
INSERT INTO kelurahan VALUES("3216142007","Sukamakmur","321614");
INSERT INTO kelurahan VALUES("3216152001","Sukamulya","321615");
INSERT INTO kelurahan VALUES("3216152002","Sukamanah","321615");
INSERT INTO kelurahan VALUES("3216152003","Sukahurip","321615");
INSERT INTO kelurahan VALUES("3216152004","Sukaasih (Suka Asih)","321615");
INSERT INTO kelurahan VALUES("3216152005","Sukarukun","321615");
INSERT INTO kelurahan VALUES("3216152006","Banjarsari (Banjar Sari)","321615");
INSERT INTO kelurahan VALUES("3216152007","Sukadarma","321615");
INSERT INTO kelurahan VALUES("3216162001","Jayabakti (Jaya Bakti)","321616");
INSERT INTO kelurahan VALUES("3216162002","Jayalaksana (Jaya Laksana)","321616");
INSERT INTO kelurahan VALUES("3216162003","Sindangsari","321616");
INSERT INTO kelurahan VALUES("3216162004","Sindangjaya (Sindang Jaya)","321616");
INSERT INTO kelurahan VALUES("3216162005","Setialaksana","321616");
INSERT INTO kelurahan VALUES("3216162006","Setiajaya (Setia Jaya)","321616");
INSERT INTO kelurahan VALUES("3216162007","Lenggahjaya (Lenggah Jaya)","321616");
INSERT INTO kelurahan VALUES("3216162008","Lenggahsari (Lenggah Sari)","321616");
INSERT INTO kelurahan VALUES("3216172001","Pantai Mekar","321617");
INSERT INTO kelurahan VALUES("3216172002","Pantai Bahagia","321617");
INSERT INTO kelurahan VALUES("3216172003","Pantai Bakti","321617");
INSERT INTO kelurahan VALUES("3216172004","Pantai Harapanjaya (Pantai Harapan Jaya)","321617");
INSERT INTO kelurahan VALUES("3216172005","Pantai Sederhana","321617");
INSERT INTO kelurahan VALUES("3216172006","Jayasakti","321617");
INSERT INTO kelurahan VALUES("3216182001","Cijengkol","321618");
INSERT INTO kelurahan VALUES("3216182002","Lubangbuaya","321618");
INSERT INTO kelurahan VALUES("3216182003","Burangkeng","321618");
INSERT INTO kelurahan VALUES("3216182004","Ciledug (Cileduk)","321618");
INSERT INTO kelurahan VALUES("3216182005","Cibening","321618");
INSERT INTO kelurahan VALUES("3216182006","Taman Sari","321618");
INSERT INTO kelurahan VALUES("3216182007","Taman Rahayu","321618");
INSERT INTO kelurahan VALUES("3216182008","Cikarageman","321618");
INSERT INTO kelurahan VALUES("3216182009","Ragamanunggal (Ragemanunggal)","321618");
INSERT INTO kelurahan VALUES("3216182010","Muktijaya","321618");
INSERT INTO kelurahan VALUES("3216182011","Kertarahayu","321618");
INSERT INTO kelurahan VALUES("3216192001","Cibatu","321619");
INSERT INTO kelurahan VALUES("3216192002","Sukasejati","321619");
INSERT INTO kelurahan VALUES("3216192003","Ciantra","321619");
INSERT INTO kelurahan VALUES("3216192004","Sukadami","321619");
INSERT INTO kelurahan VALUES("3216192005","Sukaresmi","321619");
INSERT INTO kelurahan VALUES("3216192006","Serang","321619");
INSERT INTO kelurahan VALUES("3216192007","Pasirsari","321619");
INSERT INTO kelurahan VALUES("3216202001","Cicau","321620");
INSERT INTO kelurahan VALUES("3216202002","Sukamahi","321620");
INSERT INTO kelurahan VALUES("3216202003","Pasiranji (Pasirpanji)","321620");
INSERT INTO kelurahan VALUES("3216202004","Hegarmukti","321620");
INSERT INTO kelurahan VALUES("3216202005","Jayamukti","321620");
INSERT INTO kelurahan VALUES("3216202006","Pasirtanjung","321620");
INSERT INTO kelurahan VALUES("3216212001","Sukaragam","321621");
INSERT INTO kelurahan VALUES("3216212002","Sirnajaya","321621");
INSERT INTO kelurahan VALUES("3216212003","Sukasari","321621");
INSERT INTO kelurahan VALUES("3216212004","Jayamulya","321621");
INSERT INTO kelurahan VALUES("3216212005","Nagacipta","321621");
INSERT INTO kelurahan VALUES("3216212006","Nagasari","321621");
INSERT INTO kelurahan VALUES("3216212007","Cilangkara","321621");
INSERT INTO kelurahan VALUES("3216212008","Jayasampurna (Jaya Sampurna)","321621");
INSERT INTO kelurahan VALUES("3216222001","Sirnajaya (Sirnajati)","321622");
INSERT INTO kelurahan VALUES("3216222002","Ridogalih","321622");
INSERT INTO kelurahan VALUES("3216222003","Ridomanah","321622");
INSERT INTO kelurahan VALUES("3216222004","Wibawamulya","321622");
INSERT INTO kelurahan VALUES("3216222005","Cibarusah Kota (Cibarusahkota)","321622");
INSERT INTO kelurahan VALUES("3216222006","Cibarusah Jaya (Cibarusahjaya)","321622");
INSERT INTO kelurahan VALUES("3216222007","Sindangmulya","321622");
INSERT INTO kelurahan VALUES("3216232001","Karangmulya","321623");
INSERT INTO kelurahan VALUES("3216232002","Karangindah","321623");
INSERT INTO kelurahan VALUES("3216232003","Bojongmangu (Bojongmanggu)","321623");
INSERT INTO kelurahan VALUES("3216232004","Sukabungah","321623");
INSERT INTO kelurahan VALUES("3216232005","Sukamukti","321623");
INSERT INTO kelurahan VALUES("3216232006","Medalkrisna","321623");
INSERT INTO kelurahan VALUES("3217012001","Pagerwangi","321701");
INSERT INTO kelurahan VALUES("3217012002","Kayuambon","321701");
INSERT INTO kelurahan VALUES("3217012003","Lembang","321701");
INSERT INTO kelurahan VALUES("3217012004","Cikidang","321701");
INSERT INTO kelurahan VALUES("3217012005","Cikahuripan","321701");
INSERT INTO kelurahan VALUES("3217012006","Cikole","321701");
INSERT INTO kelurahan VALUES("3217012007","Gudangkahuripan","321701");
INSERT INTO kelurahan VALUES("3217012008","Jayagiri","321701");
INSERT INTO kelurahan VALUES("3217012009","Cibodas","321701");
INSERT INTO kelurahan VALUES("3217012010","Langensari","321701");
INSERT INTO kelurahan VALUES("3217012011","Mekarwangi","321701");
INSERT INTO kelurahan VALUES("3217012012","Cibogo","321701");
INSERT INTO kelurahan VALUES("3217012013","Sukajaya","321701");
INSERT INTO kelurahan VALUES("3217012014","Suntenjaya","321701");
INSERT INTO kelurahan VALUES("3217012015","Wangunharja","321701");
INSERT INTO kelurahan VALUES("3217012016","Wangunsari","321701");
INSERT INTO kelurahan VALUES("3217022001","Karyawangi","321702");
INSERT INTO kelurahan VALUES("3217022002","Cihanjuang","321702");
INSERT INTO kelurahan VALUES("3217022003","Cihanjuangrahayu (Cihanjuang Rahayu)","321702");
INSERT INTO kelurahan VALUES("3217022004","Cihideung","321702");
INSERT INTO kelurahan VALUES("3217022005","Ciwaruga","321702");
INSERT INTO kelurahan VALUES("3217022006","Cigugurgirang (Cigugur Girang)","321702");
INSERT INTO kelurahan VALUES("3217022007","Sariwangi","321702");
INSERT INTO kelurahan VALUES("3217032001","Jambudipa","321703");
INSERT INTO kelurahan VALUES("3217032002","Padaasih","321703");
INSERT INTO kelurahan VALUES("3217032003","Pasirhalang","321703");
INSERT INTO kelurahan VALUES("3217032004","Pasirlangu","321703");
INSERT INTO kelurahan VALUES("3217032005","Cipada","321703");
INSERT INTO kelurahan VALUES("3217032006","Kertawangi","321703");
INSERT INTO kelurahan VALUES("3217032007","Tugumukti","321703");
INSERT INTO kelurahan VALUES("3217032008","Sadangmekar","321703");
INSERT INTO kelurahan VALUES("3217042001","Ciptagumati","321704");
INSERT INTO kelurahan VALUES("3217042002","Cikalong","321704");
INSERT INTO kelurahan VALUES("3217042003","Cipada","321704");
INSERT INTO kelurahan VALUES("3217042004","Cisomangbarat (Cisomang Barat)","321704");
INSERT INTO kelurahan VALUES("3217042005","Ganjarsari","321704");
INSERT INTO kelurahan VALUES("3217042006","Kanangasari","321704");
INSERT INTO kelurahan VALUES("3217042007","Mandalasari","321704");
INSERT INTO kelurahan VALUES("3217042008","Mandalamukti","321704");
INSERT INTO kelurahan VALUES("3217042009","Mekarjaya","321704");
INSERT INTO kelurahan VALUES("3217042010","Puteran","321704");
INSERT INTO kelurahan VALUES("3217042011","Rende","321704");
INSERT INTO kelurahan VALUES("3217042012","Tenjolaut","321704");
INSERT INTO kelurahan VALUES("3217042013","Wangunjaya","321704");
INSERT INTO kelurahan VALUES("3217052001","Cipeundeuy","321705");
INSERT INTO kelurahan VALUES("3217052002","Ciharashas","321705");
INSERT INTO kelurahan VALUES("3217052003","Bojongmekar","321705");
INSERT INTO kelurahan VALUES("3217052004","Ciroyom","321705");
INSERT INTO kelurahan VALUES("3217052005","Jatimekar","321705");
INSERT INTO kelurahan VALUES("3217052006","Margalaksana","321705");
INSERT INTO kelurahan VALUES("3217052007","Margaluyu","321705");
INSERT INTO kelurahan VALUES("3217052008","Nanggeleng","321705");
INSERT INTO kelurahan VALUES("3217052009","Nyenang","321705");
INSERT INTO kelurahan VALUES("3217052010","Sirnaraja","321705");
INSERT INTO kelurahan VALUES("3217052011","Sirnagalih","321705");
INSERT INTO kelurahan VALUES("3217052012","Sukahaji","321705");
INSERT INTO kelurahan VALUES("3217062001","Ngamprah","321706");
INSERT INTO kelurahan VALUES("3217062002","Cimareme","321706");
INSERT INTO kelurahan VALUES("3217062003","Cilame","321706");
INSERT INTO kelurahan VALUES("3217062004","Tanimulya","321706");
INSERT INTO kelurahan VALUES("3217062005","Cimanggu","321706");
INSERT INTO kelurahan VALUES("3217062006","Bojongkoneng","321706");
INSERT INTO kelurahan VALUES("3217062007","Margajaya","321706");
INSERT INTO kelurahan VALUES("3217062008","Mekarsari","321706");
INSERT INTO kelurahan VALUES("3217062009","Gadobangkong","321706");
INSERT INTO kelurahan VALUES("3217062010","Sukatani","321706");
INSERT INTO kelurahan VALUES("3217062011","Pakuhaji","321706");
INSERT INTO kelurahan VALUES("3217072001","Ciptaharja","321707");
INSERT INTO kelurahan VALUES("3217072002","Cipatat","321707");
INSERT INTO kelurahan VALUES("3217072003","Citatah","321707");
INSERT INTO kelurahan VALUES("3217072004","Rajamandalakulon (Rajamandala Kulon)","321707");
INSERT INTO kelurahan VALUES("3217072005","Mandalawangi","321707");
INSERT INTO kelurahan VALUES("3217072006","Kertamukti","321707");
INSERT INTO kelurahan VALUES("3217072007","Nyalindung","321707");
INSERT INTO kelurahan VALUES("3217072008","Gunungmasigit","321707");
INSERT INTO kelurahan VALUES("3217072009","Cirawamekar","321707");
INSERT INTO kelurahan VALUES("3217072010","Mandalasari","321707");
INSERT INTO kelurahan VALUES("3217072011","Sumurbandung","321707");
INSERT INTO kelurahan VALUES("3217072012","Sarimukti","321707");
INSERT INTO kelurahan VALUES("3217082001","Kertamulya","321708");
INSERT INTO kelurahan VALUES("3217082002","Padalarang","321708");
INSERT INTO kelurahan VALUES("3217082003","Cimerang","321708");
INSERT INTO kelurahan VALUES("3217082004","Campaka Mekar (Cempakamekar)","321708");
INSERT INTO kelurahan VALUES("3217082005","Tagogapu","321708");
INSERT INTO kelurahan VALUES("3217082006","Ciburuy","321708");
INSERT INTO kelurahan VALUES("3217082007","Kertajaya","321708");
INSERT INTO kelurahan VALUES("3217082008","Cipeundeuy","321708");
INSERT INTO kelurahan VALUES("3217082009","Jayamekar","321708");
INSERT INTO kelurahan VALUES("3217082010","Laksanamekar","321708");
INSERT INTO kelurahan VALUES("3217092001","Batujajar Timur","321709");
INSERT INTO kelurahan VALUES("3217092002","Batujajar Barat","321709");
INSERT INTO kelurahan VALUES("3217092004","Galanggang","321709");
INSERT INTO kelurahan VALUES("3217092005","Cangkorah","321709");
INSERT INTO kelurahan VALUES("3217092007","Selacau","321709");
INSERT INTO kelurahan VALUES("3217092008","Pangauban","321709");
INSERT INTO kelurahan VALUES("3217092010","Giriasih","321709");
INSERT INTO kelurahan VALUES("3217102001","Cipatik","321710");
INSERT INTO kelurahan VALUES("3217102002","Citapen","321710");
INSERT INTO kelurahan VALUES("3217102003","Cihampelas","321710");
INSERT INTO kelurahan VALUES("3217102004","Mekarjaya","321710");
INSERT INTO kelurahan VALUES("3217102005","Mekarmukti","321710");
INSERT INTO kelurahan VALUES("3217102006","Pataruman","321710");
INSERT INTO kelurahan VALUES("3217102007","Situwangi","321710");
INSERT INTO kelurahan VALUES("3217102008","Singajaya","321710");
INSERT INTO kelurahan VALUES("3217102009","Tanjungwangi","321710");
INSERT INTO kelurahan VALUES("3217102010","Tanjungjaya","321710");
INSERT INTO kelurahan VALUES("3217112001","Cililin","321711");
INSERT INTO kelurahan VALUES("3217112002","Budiharja","321711");
INSERT INTO kelurahan VALUES("3217112003","Batulayang","321711");
INSERT INTO kelurahan VALUES("3217112004","Bongas","321711");
INSERT INTO kelurahan VALUES("3217112005","Karanganyar","321711");
INSERT INTO kelurahan VALUES("3217112006","Karangtanjung","321711");
INSERT INTO kelurahan VALUES("3217112007","Karyamukti","321711");
INSERT INTO kelurahan VALUES("3217112008","Kidangpananjung","321711");
INSERT INTO kelurahan VALUES("3217112009","Mukapayung","321711");
INSERT INTO kelurahan VALUES("3217112010","Nanggerang","321711");
INSERT INTO kelurahan VALUES("3217112011","Rancapanggung","321711");
INSERT INTO kelurahan VALUES("3217122001","Sarinagen","321712");
INSERT INTO kelurahan VALUES("3217122002","Baranangsiang","321712");
INSERT INTO kelurahan VALUES("3217122003","Citalem","321712");
INSERT INTO kelurahan VALUES("3217122004","Cijenuk","321712");
INSERT INTO kelurahan VALUES("3217122005","Cijambu","321712");
INSERT INTO kelurahan VALUES("3217122006","Cibenda","321712");
INSERT INTO kelurahan VALUES("3217122007","Cintaasih","321712");
INSERT INTO kelurahan VALUES("3217122008","Cicangkanghilir (Cicangkang Hilir)","321712");
INSERT INTO kelurahan VALUES("3217122009","Girimukti","321712");
INSERT INTO kelurahan VALUES("3217122010","Karangsari","321712");
INSERT INTO kelurahan VALUES("3217122011","Mekarsari","321712");
INSERT INTO kelurahan VALUES("3217122012","Neglasari","321712");
INSERT INTO kelurahan VALUES("3217122013","Sirnagalih","321712");
INSERT INTO kelurahan VALUES("3217122014","Sukamulya","321712");
INSERT INTO kelurahan VALUES("3217132001","Cibedug","321713");
INSERT INTO kelurahan VALUES("3217132002","Bojong","321713");
INSERT INTO kelurahan VALUES("3217132003","Bojongsalam","321713");
INSERT INTO kelurahan VALUES("3217132004","Cibitung","321713");
INSERT INTO kelurahan VALUES("3217132005","Cicadas","321713");
INSERT INTO kelurahan VALUES("3217132006","Cinengah","321713");
INSERT INTO kelurahan VALUES("3217132007","Sukamanah","321713");
INSERT INTO kelurahan VALUES("3217132008","Sukaresmi","321713");
INSERT INTO kelurahan VALUES("3217142001","Cintakarya","321714");
INSERT INTO kelurahan VALUES("3217142002","Sindangkerta","321714");
INSERT INTO kelurahan VALUES("3217142003","Buninagara","321714");
INSERT INTO kelurahan VALUES("3217142004","Cikadu","321714");
INSERT INTO kelurahan VALUES("3217142005","Cicangkanggirang (Cicangkang Girang)","321714");
INSERT INTO kelurahan VALUES("3217142006","Mekarwangi","321714");
INSERT INTO kelurahan VALUES("3217142007","Pasirpogor","321714");
INSERT INTO kelurahan VALUES("3217142008","Puncaksari","321714");
INSERT INTO kelurahan VALUES("3217142009","Rancasenggang (Ranca Senggang)","321714");
INSERT INTO kelurahan VALUES("3217142010","Weninggalih","321714");
INSERT INTO kelurahan VALUES("3217142011","Wangunsari","321714");
INSERT INTO kelurahan VALUES("3217152001","Sirnajaya","321715");
INSERT INTO kelurahan VALUES("3217152002","Gununghalu","321715");
INSERT INTO kelurahan VALUES("3217152003","Bunijaya","321715");
INSERT INTO kelurahan VALUES("3217152004","Celak","321715");
INSERT INTO kelurahan VALUES("3217152005","Cilangari","321715");
INSERT INTO kelurahan VALUES("3217152006","Sindangjaya","321715");
INSERT INTO kelurahan VALUES("3217152007","Sukasari","321715");
INSERT INTO kelurahan VALUES("3217152008","Tamanjaya","321715");
INSERT INTO kelurahan VALUES("3217152009","Wargasaluyu","321715");
INSERT INTO kelurahan VALUES("3217162001","Cikande","321716");
INSERT INTO kelurahan VALUES("3217162002","Jati","321716");
INSERT INTO kelurahan VALUES("3217162003","Girimukti","321716");
INSERT INTO kelurahan VALUES("3217162004","Bojonghaleuang","321716");
INSERT INTO kelurahan VALUES("3217162005","Cipangeran","321716");
INSERT INTO kelurahan VALUES("3217162006","Saguling","321716");
INSERT INTO kelurahan VALUES("3218012001","Parigi","321801");
INSERT INTO kelurahan VALUES("3218012002","Karangbenda","321801");
INSERT INTO kelurahan VALUES("3218012003","Ciliang","321801");
INSERT INTO kelurahan VALUES("3218012004","Bojong","321801");
INSERT INTO kelurahan VALUES("3218012005","Cintaratu","321801");
INSERT INTO kelurahan VALUES("3218012006","Selasari","321801");
INSERT INTO kelurahan VALUES("3218012007","Karangjaladri","321801");
INSERT INTO kelurahan VALUES("3218012008","Cibenda","321801");
INSERT INTO kelurahan VALUES("3218012009","Cintakarya","321801");
INSERT INTO kelurahan VALUES("3218012010","Parakanmanggu","321801");
INSERT INTO kelurahan VALUES("3218022001","Batukaras","321802");
INSERT INTO kelurahan VALUES("3218022002","Ciakar","321802");
INSERT INTO kelurahan VALUES("3218022003","Cibanten","321802");
INSERT INTO kelurahan VALUES("3218022004","Kertayasa","321802");
INSERT INTO kelurahan VALUES("3218022005","Cijulang","321802");
INSERT INTO kelurahan VALUES("3218022006","Kondangjajar","321802");
INSERT INTO kelurahan VALUES("3218022007","Margacinta","321802");
INSERT INTO kelurahan VALUES("3218032001","Kertaharja","321803");
INSERT INTO kelurahan VALUES("3218032002","Ciparanti","321803");
INSERT INTO kelurahan VALUES("3218032003","Legokjawa","321803");
INSERT INTO kelurahan VALUES("3218032004","Masawah","321803");
INSERT INTO kelurahan VALUES("3218032005","Cimerak","321803");
INSERT INTO kelurahan VALUES("3218032006","Sukajaya","321803");
INSERT INTO kelurahan VALUES("3218032007","Kertamukti","321803");
INSERT INTO kelurahan VALUES("3218032008","Sindangsari","321803");
INSERT INTO kelurahan VALUES("3218032009","Batumalang","321803");
INSERT INTO kelurahan VALUES("3218032010","Mekarsari","321803");
INSERT INTO kelurahan VALUES("3218032011","Limusgede","321803");
INSERT INTO kelurahan VALUES("3218042001","Cigugur","321804");
INSERT INTO kelurahan VALUES("3218042002","Cimindi","321804");
INSERT INTO kelurahan VALUES("3218042003","Pagerbumi","321804");
INSERT INTO kelurahan VALUES("3218042004","Kertajaya","321804");
INSERT INTO kelurahan VALUES("3218042005","Bunisari","321804");
INSERT INTO kelurahan VALUES("3218042006","Campaka","321804");
INSERT INTO kelurahan VALUES("3218042007","Harumandala (Harum Mandala)","321804");
INSERT INTO kelurahan VALUES("3218052001","Karangkamiri","321805");
INSERT INTO kelurahan VALUES("3218052002","Cimanggu","321805");
INSERT INTO kelurahan VALUES("3218052003","Langkaplancar","321805");
INSERT INTO kelurahan VALUES("3218052004","Pangkalan","321805");
INSERT INTO kelurahan VALUES("3218052005","Bojongkondang","321805");
INSERT INTO kelurahan VALUES("3218052006","Bangunjaya","321805");
INSERT INTO kelurahan VALUES("3218052007","Jayasari","321805");
INSERT INTO kelurahan VALUES("3218052008","Jadimulya","321805");
INSERT INTO kelurahan VALUES("3218052009","Jadikarya","321805");
INSERT INTO kelurahan VALUES("3218052010","Bojong","321805");
INSERT INTO kelurahan VALUES("3218052011","Bangunkarya","321805");
INSERT INTO kelurahan VALUES("3218052012","Sukamulya","321805");
INSERT INTO kelurahan VALUES("3218052013","Mekarwangi","321805");
INSERT INTO kelurahan VALUES("3218052014","Cisarua","321805");
INSERT INTO kelurahan VALUES("3218052015","Bungur Raya","321805");
INSERT INTO kelurahan VALUES("3218062001","Sukamaju","321806");
INSERT INTO kelurahan VALUES("3218062002","Kertajaya","321806");
INSERT INTO kelurahan VALUES("3218062003","Mangunjaya","321806");
INSERT INTO kelurahan VALUES("3218062004","Sindangjaya (Sindang Jaya)","321806");
INSERT INTO kelurahan VALUES("3218062005","Jangraga","321806");
INSERT INTO kelurahan VALUES("3218072001","Panyutran","321807");
INSERT INTO kelurahan VALUES("3218072002","Ciganjeng","321807");
INSERT INTO kelurahan VALUES("3218072003","Karangsari","321807");
INSERT INTO kelurahan VALUES("3218072004","Sukanagara","321807");
INSERT INTO kelurahan VALUES("3218072005","Paledah","321807");
INSERT INTO kelurahan VALUES("3218072006","Karangpawitan","321807");
INSERT INTO kelurahan VALUES("3218072007","Padaherang","321807");
INSERT INTO kelurahan VALUES("3218072008","Kedungwuluh","321807");
INSERT INTO kelurahan VALUES("3218072009","Cibogo","321807");
INSERT INTO kelurahan VALUES("3218072010","Pasirgeulis","321807");
INSERT INTO kelurahan VALUES("3218072011","Bojongsari","321807");
INSERT INTO kelurahan VALUES("3218072012","Sindangwangi","321807");
INSERT INTO kelurahan VALUES("3218072013","Maruyungsari (Maruyung Sari)","321807");
INSERT INTO kelurahan VALUES("3218072014","Karangmulya","321807");
INSERT INTO kelurahan VALUES("3218082001","Putrapinggan","321808");
INSERT INTO kelurahan VALUES("3218082002","Emplak","321808");
INSERT INTO kelurahan VALUES("3218082003","Bagolo","321808");
INSERT INTO kelurahan VALUES("3218082004","Pamotan","321808");
INSERT INTO kelurahan VALUES("3218082005","Kalipucang","321808");
INSERT INTO kelurahan VALUES("3218082006","Cibuluh","321808");
INSERT INTO kelurahan VALUES("3218082007","Banjarharja","321808");
INSERT INTO kelurahan VALUES("3218082008","Tunggilis","321808");
INSERT INTO kelurahan VALUES("3218082009","Ciparakan","321808");
INSERT INTO kelurahan VALUES("3218092001","Babakan","321809");
INSERT INTO kelurahan VALUES("3218092002","Sukahurip","321809");
INSERT INTO kelurahan VALUES("3218092003","Purbahayu","321809");
INSERT INTO kelurahan VALUES("3218092004","Pangandaran","321809");
INSERT INTO kelurahan VALUES("3218092005","Wonoharjo","321809");
INSERT INTO kelurahan VALUES("3218092006","Sidomulyo","321809");
INSERT INTO kelurahan VALUES("3218092007","Pananjung","321809");
INSERT INTO kelurahan VALUES("3218092008","Pagergunung","321809");
INSERT INTO kelurahan VALUES("3218102001","Sidamulih","321810");
INSERT INTO kelurahan VALUES("3218102002","Cikalong","321810");
INSERT INTO kelurahan VALUES("3218102003","Sukaresik","321810");
INSERT INTO kelurahan VALUES("3218102004","Cikembulan","321810");
INSERT INTO kelurahan VALUES("3218102005","Pajaten","321810");
INSERT INTO kelurahan VALUES("3218102006","Kersaratu","321810");
INSERT INTO kelurahan VALUES("3218102007","Kalijati","321810");
INSERT INTO kelurahan VALUES("3271011001","Batu Tulis (Batutulis)","327101");
INSERT INTO kelurahan VALUES("3271011002","Bondongan","327101");
INSERT INTO kelurahan VALUES("3271011003","Empang","327101");
INSERT INTO kelurahan VALUES("3271011004","Lawanggintung (Lawang Gintung)","327101");
INSERT INTO kelurahan VALUES("3271011005","Pamoyanan","327101");
INSERT INTO kelurahan VALUES("3271011006","Ranggamekar","327101");
INSERT INTO kelurahan VALUES("3271011007","Mulyaharja","327101");
INSERT INTO kelurahan VALUES("3271011008","Cikaret","327101");
INSERT INTO kelurahan VALUES("3271011009","Bojongkerta","327101");
INSERT INTO kelurahan VALUES("3271011010","Rancamaya","327101");
INSERT INTO kelurahan VALUES("3271011011","Kertamaya","327101");
INSERT INTO kelurahan VALUES("3271011012","Harjasari","327101");
INSERT INTO kelurahan VALUES("3271011013","Muarasari","327101");
INSERT INTO kelurahan VALUES("3271011014","Genteng","327101");
INSERT INTO kelurahan VALUES("3271011015","Pakuan","327101");
INSERT INTO kelurahan VALUES("3271011016","Cipaku","327101");
INSERT INTO kelurahan VALUES("3271021001","Sukasari","327102");
INSERT INTO kelurahan VALUES("3271021002","Baranangsiang","327102");
INSERT INTO kelurahan VALUES("3271021003","Katulampa","327102");
INSERT INTO kelurahan VALUES("3271021004","Sindangsari","327102");
INSERT INTO kelurahan VALUES("3271021005","Sindangrasa","327102");
INSERT INTO kelurahan VALUES("3271021006","Tajur","327102");
INSERT INTO kelurahan VALUES("3271031001","Gudang","327103");
INSERT INTO kelurahan VALUES("3271031002","Paledang","327103");
INSERT INTO kelurahan VALUES("3271031003","Pabaton","327103");
INSERT INTO kelurahan VALUES("3271031004","Cibogor","327103");
INSERT INTO kelurahan VALUES("3271031005","Babakan","327103");
INSERT INTO kelurahan VALUES("3271031006","Sempur","327103");
INSERT INTO kelurahan VALUES("3271031007","Tegallega (Tegal Panjang)","327103");
INSERT INTO kelurahan VALUES("3271031008","Babakan Pasar","327103");
INSERT INTO kelurahan VALUES("3271031009","Panaragan","327103");
INSERT INTO kelurahan VALUES("3271031010","Ciwaringin","327103");
INSERT INTO kelurahan VALUES("3271031011","Kebon Kalapa (Kebon Kelapa)","327103");
INSERT INTO kelurahan VALUES("3271041001","Menteng","327104");
INSERT INTO kelurahan VALUES("3271041002","Sindang Barang (Sindangbarang)","327104");
INSERT INTO kelurahan VALUES("3271041003","Bubulak","327104");
INSERT INTO kelurahan VALUES("3271041004","Margajaya","327104");
INSERT INTO kelurahan VALUES("3271041005","Balumbang Jaya (Balungbang Jaya)","327104");
INSERT INTO kelurahan VALUES("3271041006","Situ Gede","327104");
INSERT INTO kelurahan VALUES("3271041007","Semplak","327104");
INSERT INTO kelurahan VALUES("3271041008","Cilendek Barat","327104");
INSERT INTO kelurahan VALUES("3271041009","Cilendek Timur","327104");
INSERT INTO kelurahan VALUES("3271041010","Curug Mekar","327104");
INSERT INTO kelurahan VALUES("3271041011","Curug","327104");
INSERT INTO kelurahan VALUES("3271041012","Pasir Jaya","327104");
INSERT INTO kelurahan VALUES("3271041013","Pasir Kuda","327104");
INSERT INTO kelurahan VALUES("3271041014","Pasir Mulya","327104");
INSERT INTO kelurahan VALUES("3271041015","Gunung Batu (Gunungbatu)","327104");
INSERT INTO kelurahan VALUES("3271041016","Loji","327104");
INSERT INTO kelurahan VALUES("3271051001","Bantarjati","327105");
INSERT INTO kelurahan VALUES("3271051002","Tegal Gundil","327105");
INSERT INTO kelurahan VALUES("3271051003","Kedung Halang (Kedunghalang)","327105");
INSERT INTO kelurahan VALUES("3271051004","Ciparigi","327105");
INSERT INTO kelurahan VALUES("3271051005","Cibuluh","327105");
INSERT INTO kelurahan VALUES("3271051006","Ciluar","327105");
INSERT INTO kelurahan VALUES("3271051007","Tanah Baru","327105");
INSERT INTO kelurahan VALUES("3271051008","Cimahpar","327105");
INSERT INTO kelurahan VALUES("3271061001","Tanah Sareal","327106");
INSERT INTO kelurahan VALUES("3271061002","Kebon Pedes","327106");
INSERT INTO kelurahan VALUES("3271061003","Kedung Badak","327106");
INSERT INTO kelurahan VALUES("3271061004","Sukaresmi","327106");
INSERT INTO kelurahan VALUES("3271061005","Kedung Waringin","327106");
INSERT INTO kelurahan VALUES("3271061006","Kedung Jaya","327106");
INSERT INTO kelurahan VALUES("3271061007","Sukadamai","327106");
INSERT INTO kelurahan VALUES("3271061008","Mekar Wangi (Mekarwangi)","327106");
INSERT INTO kelurahan VALUES("3271061009","Kencana","327106");
INSERT INTO kelurahan VALUES("3271061010","Kayu Manis (Kayumanis)","327106");
INSERT INTO kelurahan VALUES("3271061011","Cibadak","327106");
INSERT INTO kelurahan VALUES("3272011001","Gunung Puyuh","327201");
INSERT INTO kelurahan VALUES("3272011002","Karamat","327201");
INSERT INTO kelurahan VALUES("3272011003","Sriwidari (Sriwedari)","327201");
INSERT INTO kelurahan VALUES("3272011004","Karang Tengah (Karangtengah)","327201");
INSERT INTO kelurahan VALUES("3272021001","Cikole","327202");
INSERT INTO kelurahan VALUES("3272021002","Selabatu","327202");
INSERT INTO kelurahan VALUES("3272021003","Gunungparang (Gunung Parang)","327202");
INSERT INTO kelurahan VALUES("3272021004","Kebonjati","327202");
INSERT INTO kelurahan VALUES("3272021005","Cisarua","327202");
INSERT INTO kelurahan VALUES("3272021006","Subangjaya","327202");
INSERT INTO kelurahan VALUES("3272031001","Citamiang","327203");
INSERT INTO kelurahan VALUES("3272031002","Tipar","327203");
INSERT INTO kelurahan VALUES("3272031003","Nanggeleng","327203");
INSERT INTO kelurahan VALUES("3272031004","Gedongpanjang","327203");
INSERT INTO kelurahan VALUES("3272031005","Cikondang","327203");
INSERT INTO kelurahan VALUES("3272041001","Warudoyong","327204");
INSERT INTO kelurahan VALUES("3272041002","Nyomplong","327204");
INSERT INTO kelurahan VALUES("3272041003","Dayeuhluhur","327204");
INSERT INTO kelurahan VALUES("3272041004","Sukakarya","327204");
INSERT INTO kelurahan VALUES("3272041005","Benteng","327204");
INSERT INTO kelurahan VALUES("3272051001","Baros","327205");
INSERT INTO kelurahan VALUES("3272051002","Jayaraksa","327205");
INSERT INTO kelurahan VALUES("3272051003","Jayamekar","327205");
INSERT INTO kelurahan VALUES("3272051004","Sudajaya Hilir (Sudajayahilir)","327205");
INSERT INTO kelurahan VALUES("3272061001","Cipanengah","327206");
INSERT INTO kelurahan VALUES("3272061002","Situmekar","327206");
INSERT INTO kelurahan VALUES("3272061003","Lembursitu","327206");
INSERT INTO kelurahan VALUES("3272061004","Cikundul","327206");
INSERT INTO kelurahan VALUES("3272061005","Sindangsari","327206");
INSERT INTO kelurahan VALUES("3272071001","Cibeureum Hilir (Cibeureumhilir)","327207");
INSERT INTO kelurahan VALUES("3272071002","Babakan","327207");
INSERT INTO kelurahan VALUES("3272071003","Sindangpalay","327207");
INSERT INTO kelurahan VALUES("3272071004","Limusnunggal","327207");
INSERT INTO kelurahan VALUES("3273011001","Sukarasa","327301");
INSERT INTO kelurahan VALUES("3273011002","Gegerkalong (Geger Kalong)","327301");
INSERT INTO kelurahan VALUES("3273011003","Isola","327301");
INSERT INTO kelurahan VALUES("3273011004","Sarijadi","327301");
INSERT INTO kelurahan VALUES("3273021001","Cipaganti","327302");
INSERT INTO kelurahan VALUES("3273021002","Lebakgede (Lebak Gede)","327302");
INSERT INTO kelurahan VALUES("3273021003","Sadangserang (Sadang Serang)","327302");
INSERT INTO kelurahan VALUES("3273021004","Dago","327302");
INSERT INTO kelurahan VALUES("3273021005","Sekeloa","327302");
INSERT INTO kelurahan VALUES("3273021006","Lebak Siliwangi","327302");
INSERT INTO kelurahan VALUES("3273031001","Babakan Ciparay","327303");
INSERT INTO kelurahan VALUES("3273031002","Babakan","327303");
INSERT INTO kelurahan VALUES("3273031003","Sukahaji","327303");
INSERT INTO kelurahan VALUES("3273031004","Margahayu Utara","327303");
INSERT INTO kelurahan VALUES("3273031005","Margasuka","327303");
INSERT INTO kelurahan VALUES("3273031006","Cirangrang","327303");
INSERT INTO kelurahan VALUES("3273041001","Kopo","327304");
INSERT INTO kelurahan VALUES("3273041002","Babakan Tarogong","327304");
INSERT INTO kelurahan VALUES("3273041003","Jamika","327304");
INSERT INTO kelurahan VALUES("3273041004","Babakan Asih","327304");
INSERT INTO kelurahan VALUES("3273041005","Suka Asih","327304");
INSERT INTO kelurahan VALUES("3273051001","Maleber (Maleer)","327305");
INSERT INTO kelurahan VALUES("3273051002","Dungus Cariang","327305");
INSERT INTO kelurahan VALUES("3273051003","Ciroyom","327305");
INSERT INTO kelurahan VALUES("3273051004","Kebon Jeruk","327305");
INSERT INTO kelurahan VALUES("3273051005","Garuda","327305");
INSERT INTO kelurahan VALUES("3273051006","Campaka","327305");
INSERT INTO kelurahan VALUES("3273061001","Husen Sastranegara","327306");
INSERT INTO kelurahan VALUES("3273061002","Arjuna","327306");
INSERT INTO kelurahan VALUES("3273061003","Pajajaran","327306");
INSERT INTO kelurahan VALUES("3273061004","Pasir Kaliki","327306");
INSERT INTO kelurahan VALUES("3273061005","Pamoyanan","327306");
INSERT INTO kelurahan VALUES("3273061006","Sukaraja","327306");
INSERT INTO kelurahan VALUES("3273071001","Pasteur","327307");
INSERT INTO kelurahan VALUES("3273071002","Cipedes","327307");
INSERT INTO kelurahan VALUES("3273071003","Sukawarna","327307");
INSERT INTO kelurahan VALUES("3273071004","Sukagalih","327307");
INSERT INTO kelurahan VALUES("3273071005","Sukabungah","327307");
INSERT INTO kelurahan VALUES("3273081001","Hegarmanah","327308");
INSERT INTO kelurahan VALUES("3273081002","Ciumbuleuit","327308");
INSERT INTO kelurahan VALUES("3273081003","Ledeng","327308");
INSERT INTO kelurahan VALUES("3273091001","Cihapit","327309");
INSERT INTO kelurahan VALUES("3273091002","Tamansari","327309");
INSERT INTO kelurahan VALUES("3273091003","Citarum","327309");
INSERT INTO kelurahan VALUES("3273101001","Karasak","327310");
INSERT INTO kelurahan VALUES("3273101002","Nyengseret","327310");
INSERT INTO kelurahan VALUES("3273101003","Karanganyar","327310");
INSERT INTO kelurahan VALUES("3273101004","Panjunan","327310");
INSERT INTO kelurahan VALUES("3273101005","Cibadak","327310");
INSERT INTO kelurahan VALUES("3273101006","Pelindung Hewan","327310");
INSERT INTO kelurahan VALUES("3273111001","Cigereleng","327311");
INSERT INTO kelurahan VALUES("3273111002","Ancol","327311");
INSERT INTO kelurahan VALUES("3273111003","Pungkur","327311");
INSERT INTO kelurahan VALUES("3273111004","Balonggede (Balong Gede)","327311");
INSERT INTO kelurahan VALUES("3273111005","Ciseureuh","327311");
INSERT INTO kelurahan VALUES("3273111006","Ciateul","327311");
INSERT INTO kelurahan VALUES("3273111007","Pasirluyu","327311");
INSERT INTO kelurahan VALUES("3273121001","Gumuruh","327312");
INSERT INTO kelurahan VALUES("3273121002","Maleer","327312");
INSERT INTO kelurahan VALUES("3273121003","Cibangkong","327312");
INSERT INTO kelurahan VALUES("3273121004","Kacapiring","327312");
INSERT INTO kelurahan VALUES("3273121005","Kebonwaru","327312");
INSERT INTO kelurahan VALUES("3273121006","Kebongedang (Kebon Gedang)","327312");
INSERT INTO kelurahan VALUES("3273121007","Samoja","327312");
INSERT INTO kelurahan VALUES("3273121008","Binong","327312");
INSERT INTO kelurahan VALUES("3273131001","Cijagra","327313");
INSERT INTO kelurahan VALUES("3273131002","Lingkar Selatan","327313");
INSERT INTO kelurahan VALUES("3273131003","Burangrang","327313");
INSERT INTO kelurahan VALUES("3273131004","Paledang","327313");
INSERT INTO kelurahan VALUES("3273131005","Turangga","327313");
INSERT INTO kelurahan VALUES("3273131006","Malabar","327313");
INSERT INTO kelurahan VALUES("3273131007","Cikawao","327313");
INSERT INTO kelurahan VALUES("3273141001","Padasuka","327314");
INSERT INTO kelurahan VALUES("3273141002","Cikutra","327314");
INSERT INTO kelurahan VALUES("3273141003","Cicadas","327314");
INSERT INTO kelurahan VALUES("3273141004","Sukamaju","327314");
INSERT INTO kelurahan VALUES("3273141005","Sukapada","327314");
INSERT INTO kelurahan VALUES("3273141006","Pasirlayung","327314");
INSERT INTO kelurahan VALUES("3273151001","Cijerah","327315");
INSERT INTO kelurahan VALUES("3273151002","Cibuntu","327315");
INSERT INTO kelurahan VALUES("3273151003","Warung Muncang","327315");
INSERT INTO kelurahan VALUES("3273151004","Caringin","327315");
INSERT INTO kelurahan VALUES("3273151005","Cigondewah Kaler","327315");
INSERT INTO kelurahan VALUES("3273151006","Gempolsari","327315");
INSERT INTO kelurahan VALUES("3273151007","Cigondewah Rahayu","327315");
INSERT INTO kelurahan VALUES("3273151008","Cigondewah Kidul","327315");
INSERT INTO kelurahan VALUES("3273161001","Sukapura","327316");
INSERT INTO kelurahan VALUES("3273161002","Kebun Jayanti","327316");
INSERT INTO kelurahan VALUES("3273161003","Babakan Surabaya","327316");
INSERT INTO kelurahan VALUES("3273161004","Cicaheum","327316");
INSERT INTO kelurahan VALUES("3273161005","Babakansari (Babakan Sari)","327316");
INSERT INTO kelurahan VALUES("3273161006","Kebon Kangkung","327316");
INSERT INTO kelurahan VALUES("3273171001","Situsaeur","327317");
INSERT INTO kelurahan VALUES("3273171002","Kebon Lega","327317");
INSERT INTO kelurahan VALUES("3273171003","Cibaduyut","327317");
INSERT INTO kelurahan VALUES("3273171004","Mekarwangi","327317");
INSERT INTO kelurahan VALUES("3273171005","Cibaduyut Kidul","327317");
INSERT INTO kelurahan VALUES("3273171006","Cibaduyut Wetan","327317");
INSERT INTO kelurahan VALUES("3273181001","Cihaur Geulis","327318");
INSERT INTO kelurahan VALUES("3273181002","Sukaluyu","327318");
INSERT INTO kelurahan VALUES("3273181003","Neglasari","327318");
INSERT INTO kelurahan VALUES("3273181004","Cigadung","327318");
INSERT INTO kelurahan VALUES("3273191001","Braga","327319");
INSERT INTO kelurahan VALUES("3273191002","Merdeka","327319");
INSERT INTO kelurahan VALUES("3273191003","Kebon Pisang","327319");
INSERT INTO kelurahan VALUES("3273191004","Babakan Ciamis","327319");
INSERT INTO kelurahan VALUES("3273201001","Antapani Kulon","327320");
INSERT INTO kelurahan VALUES("3273201004","Antapani Tengah","327320");
INSERT INTO kelurahan VALUES("3273201005","Antapani Kidul","327320");
INSERT INTO kelurahan VALUES("3273201006","Antapani Wetan","327320");
INSERT INTO kelurahan VALUES("3273211001","Batununggal","327321");
INSERT INTO kelurahan VALUES("3273211002","Wates","327321");
INSERT INTO kelurahan VALUES("3273211003","Mengger","327321");
INSERT INTO kelurahan VALUES("3273211004","Kujangsari","327321");
INSERT INTO kelurahan VALUES("3273221001","Sekejati","327322");
INSERT INTO kelurahan VALUES("3273221002","Margasari","327322");
INSERT INTO kelurahan VALUES("3273221003","Cijaura (Margasenang)","327322");
INSERT INTO kelurahan VALUES("3273221004","Jatisari","327322");
INSERT INTO kelurahan VALUES("3273231001","Cipamokolan","327323");
INSERT INTO kelurahan VALUES("3273231002","Derwati (Darwati)","327323");
INSERT INTO kelurahan VALUES("3273231003","Munjahlega (Manjahlega / Cisarantenkidul)","327323");
INSERT INTO kelurahan VALUES("3273231004","Mekarmulya (Mekar Mulya / Mekarjaya)","327323");
INSERT INTO kelurahan VALUES("3273241001","Sukamiskin","327324");
INSERT INTO kelurahan VALUES("3273241002","Cisaranten Bina Harapan (Cisarenten Bina Harapan)","327324");
INSERT INTO kelurahan VALUES("3273241003","Cisaranten Kulon","327324");
INSERT INTO kelurahan VALUES("3273241004","Sindanglaya / Cisantre n Endah (Sindang Jaya)","327324");
INSERT INTO kelurahan VALUES("3273251001","Palasari","327325");
INSERT INTO kelurahan VALUES("3273251002","Cipadung","327325");
INSERT INTO kelurahan VALUES("3273251003","Pasir Biru (Pasirbiru)","327325");
INSERT INTO kelurahan VALUES("3273251004","Cisurupan","327325");
INSERT INTO kelurahan VALUES("3273261003","Pasir Endah","327326");
INSERT INTO kelurahan VALUES("3273261004","Cigending","327326");
INSERT INTO kelurahan VALUES("3273261005","Pasirwangi","327326");
INSERT INTO kelurahan VALUES("3273261006","Pasirjati","327326");
INSERT INTO kelurahan VALUES("3273261007","Pasanggrahan","327326");
INSERT INTO kelurahan VALUES("3273271001","Cimenerang (Cimincrang)","327327");
INSERT INTO kelurahan VALUES("3273271002","Cisantren Kidul (Cisaranten Kidul)","327327");
INSERT INTO kelurahan VALUES("3273271003","Rancabolang (Rancabalong)","327327");
INSERT INTO kelurahan VALUES("3273271004","Rancanumpang","327327");
INSERT INTO kelurahan VALUES("3273281001","Cipadung Kulon","327328");
INSERT INTO kelurahan VALUES("3273281002","Cipadung Kidul","327328");
INSERT INTO kelurahan VALUES("3273281003","Cipadung Wetan","327328");
INSERT INTO kelurahan VALUES("3273281004","Mekar Mulya (Mekarmulya)","327328");
INSERT INTO kelurahan VALUES("3273291001","Cisaranten Wetan","327329");
INSERT INTO kelurahan VALUES("3273291002","Pakemitan","327329");
INSERT INTO kelurahan VALUES("3273291003","Sukamulya","327329");
INSERT INTO kelurahan VALUES("3273291004","Babakan Penghulu","327329");
INSERT INTO kelurahan VALUES("3273301001","Jatihandap","327330");
INSERT INTO kelurahan VALUES("3273301002","Karang Pamulang","327330");
INSERT INTO kelurahan VALUES("3273301003","Pasir Impun","327330");
INSERT INTO kelurahan VALUES("3273301004","Sindang Jaya","327330");
INSERT INTO kelurahan VALUES("3274011001","Kejaksan","327401");
INSERT INTO kelurahan VALUES("3274011002","Sukapura","327401");
INSERT INTO kelurahan VALUES("3274011003","Kesenden","327401");
INSERT INTO kelurahan VALUES("3274011004","Kebonbaru","327401");
INSERT INTO kelurahan VALUES("3274021001","Pegambiran","327402");
INSERT INTO kelurahan VALUES("3274021002","Lemahwungkuk","327402");
INSERT INTO kelurahan VALUES("3274021003","Kesepuhan","327402");
INSERT INTO kelurahan VALUES("3274021004","Panjunan","327402");
INSERT INTO kelurahan VALUES("3274031001","Kalijaga","327403");
INSERT INTO kelurahan VALUES("3274031002","Harjamukti","327403");
INSERT INTO kelurahan VALUES("3274031003","Kecapi","327403");
INSERT INTO kelurahan VALUES("3274031004","Larangan","327403");
INSERT INTO kelurahan VALUES("3274031005","Argasunya","327403");
INSERT INTO kelurahan VALUES("3274041001","Jagasatru","327404");
INSERT INTO kelurahan VALUES("3274041002","Pekalipan","327404");
INSERT INTO kelurahan VALUES("3274041003","Pulasaren","327404");
INSERT INTO kelurahan VALUES("3274041004","Pekalangan","327404");
INSERT INTO kelurahan VALUES("3274051001","Pekiringan","327405");
INSERT INTO kelurahan VALUES("3274051002","Sunyaragi","327405");
INSERT INTO kelurahan VALUES("3274051003","Kesambi","327405");
INSERT INTO kelurahan VALUES("3274051004","Drajat","327405");
INSERT INTO kelurahan VALUES("3274051005","Karyamulya","327405");
INSERT INTO kelurahan VALUES("3275011001","Bekasijaya (Bekasi Jaya)","327501");
INSERT INTO kelurahan VALUES("3275011002","Margahayu","327501");
INSERT INTO kelurahan VALUES("3275011003","Durenjaya (Duren Jaya)","327501");
INSERT INTO kelurahan VALUES("3275011004","Arenjaya (Aren Jaya)","327501");
INSERT INTO kelurahan VALUES("3275021001","Bintara","327502");
INSERT INTO kelurahan VALUES("3275021002","Kranji","327502");
INSERT INTO kelurahan VALUES("3275021003","Kotabaru (Kota Baru)","327502");
INSERT INTO kelurahan VALUES("3275021004","Bintarajaya (Bintara Jaya)","327502");
INSERT INTO kelurahan VALUES("3275021005","Jakasampurna (Jaka Sampurna)","327502");
INSERT INTO kelurahan VALUES("3275031001","Kaliabang Tengah (Kali Abang Tengah)","327503");
INSERT INTO kelurahan VALUES("3275031002","Perwira","327503");
INSERT INTO kelurahan VALUES("3275031003","Harapanbaru (Harapan Baru)","327503");
INSERT INTO kelurahan VALUES("3275031004","Teluk Pucung","327503");
INSERT INTO kelurahan VALUES("3275031005","Margamulya (Marga Mulya)","327503");
INSERT INTO kelurahan VALUES("3275031006","Harapanjaya (Harapan Jaya)","327503");
INSERT INTO kelurahan VALUES("3275041001","Pekayonjaya (Pekayon Jaya)","327504");
INSERT INTO kelurahan VALUES("3275041002","Margajaya","327504");
INSERT INTO kelurahan VALUES("3275041003","Jakamulya (Jaka Mulya)","327504");
INSERT INTO kelurahan VALUES("3275041004","Jakasetia (Jaka Setia)","327504");
INSERT INTO kelurahan VALUES("3275041005","Kayuringinjaya (Kayuringin Jaya)","327504");
INSERT INTO kelurahan VALUES("3275051001","Bojong Rawalumbu","327505");
INSERT INTO kelurahan VALUES("3275051002","Pengasinan","327505");
INSERT INTO kelurahan VALUES("3275051003","Sepanjangjaya (Sepanjang Jaya)","327505");
INSERT INTO kelurahan VALUES("3275051004","Bojongmenteng (Bojong Menteng)","327505");
INSERT INTO kelurahan VALUES("3275061001","Medansatria (Medan Satria)","327506");
INSERT INTO kelurahan VALUES("3275061002","Harapanmulya (Harapan Mulya)","327506");
INSERT INTO kelurahan VALUES("3275061003","Pejuang","327506");
INSERT INTO kelurahan VALUES("3275061004","Kalibaru (Kali Baru)","327506");
INSERT INTO kelurahan VALUES("3275071003","Bantargebang (Bantar Gebang)","327507");
INSERT INTO kelurahan VALUES("3275071004","Cikiwul","327507");
INSERT INTO kelurahan VALUES("3275071007","Ciketingudik (Ciketing Udik)","327507");
INSERT INTO kelurahan VALUES("3275071008","Sumurbatu (Sumur Batu)","327507");
INSERT INTO kelurahan VALUES("3275081001","Jatiwaringin","327508");
INSERT INTO kelurahan VALUES("3275081002","Jatibening","327508");
INSERT INTO kelurahan VALUES("3275081003","Jatimakmur","327508");
INSERT INTO kelurahan VALUES("3275081006","Jatibening Baru","327508");
INSERT INTO kelurahan VALUES("3275081007","Jaticempaka","327508");
INSERT INTO kelurahan VALUES("3275091001","Jatimekar (Jati Mekar)","327509");
INSERT INTO kelurahan VALUES("3275091002","Jatiasih","327509");
INSERT INTO kelurahan VALUES("3275091003","Jatikramat","327509");
INSERT INTO kelurahan VALUES("3275091004","Jatirasa","327509");
INSERT INTO kelurahan VALUES("3275091005","Jatiluhur","327509");
INSERT INTO kelurahan VALUES("3275091006","Jatisari","327509");
INSERT INTO kelurahan VALUES("3275101001","Jatisampurna","327510");
INSERT INTO kelurahan VALUES("3275101002","Jatikarya","327510");
INSERT INTO kelurahan VALUES("3275101003","Jatiranggon","327510");
INSERT INTO kelurahan VALUES("3275101004","Jatirangga","327510");
INSERT INTO kelurahan VALUES("3275101005","Jatiraden","327510");
INSERT INTO kelurahan VALUES("3275111001","Pedurenan (Padurenan)","327511");
INSERT INTO kelurahan VALUES("3275111002","Cimuning","327511");
INSERT INTO kelurahan VALUES("3275111003","Mustikajaya (Mustika Jaya)","327511");
INSERT INTO kelurahan VALUES("3275111004","Mustikasari (Mustika Sari)","327511");
INSERT INTO kelurahan VALUES("3275121001","Jatirahayu (Jati Rahayu)","327512");
INSERT INTO kelurahan VALUES("3275121002","Jatiwarna","327512");
INSERT INTO kelurahan VALUES("3275121003","Jatimelati","327512");
INSERT INTO kelurahan VALUES("3275121004","Jatimurni","327512");
INSERT INTO kelurahan VALUES("3276011006","Depok","327601");
INSERT INTO kelurahan VALUES("3276011007","Depok Jaya","327601");
INSERT INTO kelurahan VALUES("3276011008","Pancoran Mas","327601");
INSERT INTO kelurahan VALUES("3276011009","Mampang","327601");
INSERT INTO kelurahan VALUES("3276011010","Rangkapan Jaya Baru (Rangkapanjaya Baru)","327601");
INSERT INTO kelurahan VALUES("3276011011","Rangkapan Jaya (Rangkapanjaya)","327601");
INSERT INTO kelurahan VALUES("3276021007","Harjamukti","327602");
INSERT INTO kelurahan VALUES("3276021008","Curug","327602");
INSERT INTO kelurahan VALUES("3276021009","Tugu","327602");
INSERT INTO kelurahan VALUES("3276021010","Mekarsari","327602");
INSERT INTO kelurahan VALUES("3276021011","Pasir Gunung Selatan","327602");
INSERT INTO kelurahan VALUES("3276021012","Cisalak Pasar","327602");
INSERT INTO kelurahan VALUES("3276031001","Pasir Putih","327603");
INSERT INTO kelurahan VALUES("3276031002","Bedahan","327603");
INSERT INTO kelurahan VALUES("3276031003","Pengasinan (Pengasihan)","327603");
INSERT INTO kelurahan VALUES("3276031009","Cinangka","327603");
INSERT INTO kelurahan VALUES("3276031010","Sawangan (Lama)","327603");
INSERT INTO kelurahan VALUES("3276031011","Sawangan Baru","327603");
INSERT INTO kelurahan VALUES("3276031012","Kedaung","327603");
INSERT INTO kelurahan VALUES("3276041001","Maruyung (Meruyung)","327604");
INSERT INTO kelurahan VALUES("3276041002","Grogol","327604");
INSERT INTO kelurahan VALUES("3276041003","Krukut","327604");
INSERT INTO kelurahan VALUES("3276041004","Limo","327604");
INSERT INTO kelurahan VALUES("3276051001","Sukmajaya","327605");
INSERT INTO kelurahan VALUES("3276051003","Abadi Jaya (Abadijaya)","327605");
INSERT INTO kelurahan VALUES("3276051004","Mekar Jaya (Mekarjaya)","327605");
INSERT INTO kelurahan VALUES("3276051005","Baktijaya","327605");
INSERT INTO kelurahan VALUES("3276051008","Cisalak","327605");
INSERT INTO kelurahan VALUES("3276051010","Tirtajaya","327605");
INSERT INTO kelurahan VALUES("3276061001","Beji","327606");
INSERT INTO kelurahan VALUES("3276061002","Kukusan","327606");
INSERT INTO kelurahan VALUES("3276061003","Tanah Baru","327606");
INSERT INTO kelurahan VALUES("3276061004","Kemiri Muka","327606");
INSERT INTO kelurahan VALUES("3276061005","Pondok Cina","327606");
INSERT INTO kelurahan VALUES("3276061006","Beji Timur","327606");
INSERT INTO kelurahan VALUES("3276071001","Cipayung","327607");
INSERT INTO kelurahan VALUES("3276071002","Cipayung Jaya","327607");
INSERT INTO kelurahan VALUES("3276071003","Ratu Jaya","327607");
INSERT INTO kelurahan VALUES("3276071004","Bojong Pondok Terong","327607");
INSERT INTO kelurahan VALUES("3276071005","Pondok Jaya (Pondokjaya)","327607");
INSERT INTO kelurahan VALUES("3276081001","Sukamaju","327608");
INSERT INTO kelurahan VALUES("3276081002","Cilodong","327608");
INSERT INTO kelurahan VALUES("3276081003","Kalibaru","327608");
INSERT INTO kelurahan VALUES("3276081004","Kalimulya","327608");
INSERT INTO kelurahan VALUES("3276081005","Jatimulya","327608");
INSERT INTO kelurahan VALUES("3276091001","Cinere","327609");
INSERT INTO kelurahan VALUES("3276091002","Gandul","327609");
INSERT INTO kelurahan VALUES("3276091003","Pangkalan Jati","327609");
INSERT INTO kelurahan VALUES("3276091004","Pangkalan Jati Baru","327609");
INSERT INTO kelurahan VALUES("3276101001","Tapos","327610");
INSERT INTO kelurahan VALUES("3276101002","Leuwinanggung","327610");
INSERT INTO kelurahan VALUES("3276101003","Sukatani","327610");
INSERT INTO kelurahan VALUES("3276101004","Sukamaju Baru","327610");
INSERT INTO kelurahan VALUES("3276101005","Jatijajar","327610");
INSERT INTO kelurahan VALUES("3276101006","Cilangkap","327610");
INSERT INTO kelurahan VALUES("3276101007","Cimpaeun","327610");
INSERT INTO kelurahan VALUES("3276111001","Bojongsari (Bojong Sari / Lama)","327611");
INSERT INTO kelurahan VALUES("3276111002","Bojongsari Baru (Bojong Sari Baru)","327611");
INSERT INTO kelurahan VALUES("3276111003","Serua","327611");
INSERT INTO kelurahan VALUES("3276111004","Pondok Petir","327611");
INSERT INTO kelurahan VALUES("3276111005","Curug","327611");
INSERT INTO kelurahan VALUES("3276111006","Duren Mekar","327611");
INSERT INTO kelurahan VALUES("3276111007","Duren Seribu","327611");
INSERT INTO kelurahan VALUES("3277011001","Melong","327701");
INSERT INTO kelurahan VALUES("3277011002","Cibeureum","327701");
INSERT INTO kelurahan VALUES("3277011003","Utama","327701");
INSERT INTO kelurahan VALUES("3277011004","Leuwigajah","327701");
INSERT INTO kelurahan VALUES("3277011005","Cibeber","327701");
INSERT INTO kelurahan VALUES("3277021001","Baros","327702");
INSERT INTO kelurahan VALUES("3277021002","Cigugur Tengah","327702");
INSERT INTO kelurahan VALUES("3277021003","Karangmekar","327702");
INSERT INTO kelurahan VALUES("3277021004","Setiamanah","327702");
INSERT INTO kelurahan VALUES("3277021005","Padasuka","327702");
INSERT INTO kelurahan VALUES("3277021006","Cimahi","327702");
INSERT INTO kelurahan VALUES("3277031001","Pasirkaliki","327703");
INSERT INTO kelurahan VALUES("3277031002","Cibabat","327703");
INSERT INTO kelurahan VALUES("3277031003","Citeureup","327703");
INSERT INTO kelurahan VALUES("3277031004","Cipageran","327703");
INSERT INTO kelurahan VALUES("3278011001","Yudanagara","327801");
INSERT INTO kelurahan VALUES("3278011002","Nagarawangi","327801");
INSERT INTO kelurahan VALUES("3278011003","Cilembang","327801");
INSERT INTO kelurahan VALUES("3278011004","Argasari","327801");
INSERT INTO kelurahan VALUES("3278011005","Tugujaya","327801");
INSERT INTO kelurahan VALUES("3278011006","Tuguraja","327801");
INSERT INTO kelurahan VALUES("3278021001","Panglayungan","327802");
INSERT INTO kelurahan VALUES("3278021002","Cipedes","327802");
INSERT INTO kelurahan VALUES("3278021003","Nagarasari","327802");
INSERT INTO kelurahan VALUES("3278021004","Sukamanah","327802");
INSERT INTO kelurahan VALUES("3278031001","Tawangsari","327803");
INSERT INTO kelurahan VALUES("3278031002","Empangsari","327803");
INSERT INTO kelurahan VALUES("3278031003","Lengkongsari","327803");
INSERT INTO kelurahan VALUES("3278031004","Cikalang","327803");
INSERT INTO kelurahan VALUES("3278031005","Kahuripan","327803");
INSERT INTO kelurahan VALUES("3278041003","Indihiang","327804");
INSERT INTO kelurahan VALUES("3278041004","Sirnagalih","327804");
INSERT INTO kelurahan VALUES("3278041005","Parakannyasag","327804");
INSERT INTO kelurahan VALUES("3278041006","Panyingkiran","327804");
INSERT INTO kelurahan VALUES("3278041007","Sukamaju Kaler (Sukamajukaler)","327804");
INSERT INTO kelurahan VALUES("3278041008","Sukamaju Kidul (Sukamajukidul)","327804");
INSERT INTO kelurahan VALUES("3278051001","Kersamenak (Karsamenak)","327805");
INSERT INTO kelurahan VALUES("3278051002","Cilamajang","327805");
INSERT INTO kelurahan VALUES("3278051003","Gunung Tandala (Gunungtandala)","327805");
INSERT INTO kelurahan VALUES("3278051004","Urug","327805");
INSERT INTO kelurahan VALUES("3278051005","Tanjung","327805");
INSERT INTO kelurahan VALUES("3278051006","Cibeuti","327805");
INSERT INTO kelurahan VALUES("3278051007","Karanganyar","327805");
INSERT INTO kelurahan VALUES("3278051008","Talagasari","327805");
INSERT INTO kelurahan VALUES("3278051009","Leuwiliang","327805");
INSERT INTO kelurahan VALUES("3278051010","Gunung Gede (Gununggede)","327805");
INSERT INTO kelurahan VALUES("3278061005","Setiaratu","327806");
INSERT INTO kelurahan VALUES("3278061007","Kersanagara","327806");
INSERT INTO kelurahan VALUES("3278061008","Kota Baru (Kotabaru)","327806");
INSERT INTO kelurahan VALUES("3278061009","Awipari","327806");
INSERT INTO kelurahan VALUES("3278061010","Setianagara","327806");
INSERT INTO kelurahan VALUES("3278061011","Ciherang","327806");
INSERT INTO kelurahan VALUES("3278061012","Ciakar","327806");
INSERT INTO kelurahan VALUES("3278061013","Margabakti","327806");
INSERT INTO kelurahan VALUES("3278061014","Setiajaya","327806");
INSERT INTO kelurahan VALUES("3278071001","Tamansari","327807");
INSERT INTO kelurahan VALUES("3278071002","Mugarsari","327807");
INSERT INTO kelurahan VALUES("3278071003","Tamanjaya","327807");
INSERT INTO kelurahan VALUES("3278071004","Sumelap","327807");
INSERT INTO kelurahan VALUES("3278071005","Setiawargi","327807");
INSERT INTO kelurahan VALUES("3278071006","Mulyasari","327807");
INSERT INTO kelurahan VALUES("3278071007","Sukahurip","327807");
INSERT INTO kelurahan VALUES("3278071008","Setiamulya","327807");
INSERT INTO kelurahan VALUES("3278081001","Mangkubumi","327808");
INSERT INTO kelurahan VALUES("3278081002","Cigantang","327808");
INSERT INTO kelurahan VALUES("3278081003","Karikil","327808");
INSERT INTO kelurahan VALUES("3278081004","Linggajaya","327808");
INSERT INTO kelurahan VALUES("3278081005","Cipawitra","327808");
INSERT INTO kelurahan VALUES("3278081006","Sambongpari","327808");
INSERT INTO kelurahan VALUES("3278081007","Sambongjaya","327808");
INSERT INTO kelurahan VALUES("3278081008","Cipari","327808");
INSERT INTO kelurahan VALUES("3278091001","Sukamulya","327809");
INSERT INTO kelurahan VALUES("3278091002","Sukarindik","327809");
INSERT INTO kelurahan VALUES("3278091003","Bungursari","327809");
INSERT INTO kelurahan VALUES("3278091004","Sukajaya","327809");
INSERT INTO kelurahan VALUES("3278091005","Cibunigeulis","327809");
INSERT INTO kelurahan VALUES("3278091006","Bantarsari","327809");
INSERT INTO kelurahan VALUES("3278091007","Sukalaksana","327809");
INSERT INTO kelurahan VALUES("3278101001","Sukanagara","327810");
INSERT INTO kelurahan VALUES("3278101002","Sukamenak","327810");
INSERT INTO kelurahan VALUES("3278101003","Purbaratu","327810");
INSERT INTO kelurahan VALUES("3278101004","Sukaasih","327810");
INSERT INTO kelurahan VALUES("3278101005","Sukajaya","327810");
INSERT INTO kelurahan VALUES("3278101006","Singkup","327810");
INSERT INTO kelurahan VALUES("3279011001","Banjar","327901");
INSERT INTO kelurahan VALUES("3279011002","Mekarsari","327901");
INSERT INTO kelurahan VALUES("3279011006","Situbatu","327901");
INSERT INTO kelurahan VALUES("3279012003","Balokang","327901");
INSERT INTO kelurahan VALUES("3279012004","Cibeureum","327901");
INSERT INTO kelurahan VALUES("3279012005","Neglasari","327901");
INSERT INTO kelurahan VALUES("3279012007","Jajawar","327901");
INSERT INTO kelurahan VALUES("3279021001","Hegarsari","327902");
INSERT INTO kelurahan VALUES("3279021002","Pataruman","327902");
INSERT INTO kelurahan VALUES("3279022003","Mulyasari","327902");
INSERT INTO kelurahan VALUES("3279022004","Batulawang","327902");
INSERT INTO kelurahan VALUES("3279022005","Karyamukti","327902");
INSERT INTO kelurahan VALUES("3279022006","Binangun","327902");
INSERT INTO kelurahan VALUES("3279022007","Sukamukti","327902");
INSERT INTO kelurahan VALUES("3279022008","Sinartanjung","327902");
INSERT INTO kelurahan VALUES("3279031001","Purwaharja","327903");
INSERT INTO kelurahan VALUES("3279031004","Karangpanimbal","327903");
INSERT INTO kelurahan VALUES("3279032002","Raharja","327903");
INSERT INTO kelurahan VALUES("3279032003","Mekarharja","327903");
INSERT INTO kelurahan VALUES("3279041004","Muktisari","327904");
INSERT INTO kelurahan VALUES("3279041005","Bojongkantong","327904");
INSERT INTO kelurahan VALUES("3279042001","Langensari","327904");
INSERT INTO kelurahan VALUES("3279042002","Rejasari","327904");
INSERT INTO kelurahan VALUES("3279042003","Waringinsari","327904");
INSERT INTO kelurahan VALUES("3279042006","Kujangsari","327904");
INSERT INTO kelurahan VALUES("3601012001","Sumberjaya","360101");
INSERT INTO kelurahan VALUES("3601012002","Kertajaya","360101");
INSERT INTO kelurahan VALUES("3601012003","Kertamukti","360101");
INSERT INTO kelurahan VALUES("3601012004","Tunggaljaya","360101");
INSERT INTO kelurahan VALUES("3601012005","Cigorondong","360101");
INSERT INTO kelurahan VALUES("3601012006","Tamanjaya","360101");
INSERT INTO kelurahan VALUES("3601012007","Ujungjaya","360101");
INSERT INTO kelurahan VALUES("3601022001","Rancapinang","360102");
INSERT INTO kelurahan VALUES("3601022002","Cibadak","360102");
INSERT INTO kelurahan VALUES("3601022003","Tugu","360102");
INSERT INTO kelurahan VALUES("3601022004","Batuhideung","360102");
INSERT INTO kelurahan VALUES("3601022005","Padasuka","360102");
INSERT INTO kelurahan VALUES("3601022006","Ciburial","360102");
INSERT INTO kelurahan VALUES("3601022007","Cijaralang","360102");
INSERT INTO kelurahan VALUES("3601022008","Cimanggu","360102");
INSERT INTO kelurahan VALUES("3601022009","Mangkualam","360102");
INSERT INTO kelurahan VALUES("3601022010","Tangkil Sari (Tangkilsari)","360102");
INSERT INTO kelurahan VALUES("3601022011","Waringin Kurung (Waringinkurung)","360102");
INSERT INTO kelurahan VALUES("3601022012","Kramatjaya","360102");
INSERT INTO kelurahan VALUES("3601032001","Mendung","360103");
INSERT INTO kelurahan VALUES("3601032006","Sudimanik","360103");
INSERT INTO kelurahan VALUES("3601032007","Curug","360103");
INSERT INTO kelurahan VALUES("3601032008","Cibingbin","360103");
INSERT INTO kelurahan VALUES("3601032009","Sukajadi","360103");
INSERT INTO kelurahan VALUES("3601032011","Mahendra","360103");
INSERT INTO kelurahan VALUES("3601032012","Cibaliung","360103");
INSERT INTO kelurahan VALUES("3601032015","Cihanjuang","360103");
INSERT INTO kelurahan VALUES("3601032016","Sorongan","360103");
INSERT INTO kelurahan VALUES("3601042001","Tanjungan","360104");
INSERT INTO kelurahan VALUES("3601042002","Sumurbatu","360104");
INSERT INTO kelurahan VALUES("3601042003","Sukawaris","360104");
INSERT INTO kelurahan VALUES("3601042004","Rancaseneng","360104");
INSERT INTO kelurahan VALUES("3601042005","Parungkokosan","360104");
INSERT INTO kelurahan VALUES("3601042006","Nanggala","360104");
INSERT INTO kelurahan VALUES("3601042007","Cikeusik","360104");
INSERT INTO kelurahan VALUES("3601042008","Cikadongdong","360104");
INSERT INTO kelurahan VALUES("3601042009","Curugciung","360104");
INSERT INTO kelurahan VALUES("3601042010","Leuwibalang","360104");
INSERT INTO kelurahan VALUES("3601042011","Sukaseneng","360104");
INSERT INTO kelurahan VALUES("3601042012","Sukamulya","360104");
INSERT INTO kelurahan VALUES("3601042013","Umbulan","360104");
INSERT INTO kelurahan VALUES("3601042014","Cikiruhwetan","360104");
INSERT INTO kelurahan VALUES("3601052001","Karangbolong","360105");
INSERT INTO kelurahan VALUES("3601052002","Katumbiri","360105");
INSERT INTO kelurahan VALUES("3601052003","Waringinjaya","360105");
INSERT INTO kelurahan VALUES("3601052004","Karyabuana","360105");
INSERT INTO kelurahan VALUES("3601052005","Tarumanagara","360105");
INSERT INTO kelurahan VALUES("3601052006","Ciseureuheun","360105");
INSERT INTO kelurahan VALUES("3601052007","Banyuasih","360105");
INSERT INTO kelurahan VALUES("3601052009","Cigeulis","360105");
INSERT INTO kelurahan VALUES("3601052010","Sinarjaya","360105");
INSERT INTO kelurahan VALUES("3601062001","Panimbangjaya","360106");
INSERT INTO kelurahan VALUES("3601062002","Mekarjaya","360106");
INSERT INTO kelurahan VALUES("3601062004","Gombong","360106");
INSERT INTO kelurahan VALUES("3601062009","Mekar Jaya (Mekarsari)","360106");
INSERT INTO kelurahan VALUES("3601062011","Citeureup","360106");
INSERT INTO kelurahan VALUES("3601062012","Tanjungjaya","360106");
INSERT INTO kelurahan VALUES("3601072001","Angsana","360107");
INSERT INTO kelurahan VALUES("3601072002","Padaherang","360107");
INSERT INTO kelurahan VALUES("3601072003","Padamulya","360107");
INSERT INTO kelurahan VALUES("3601072004","Karangsari","360107");
INSERT INTO kelurahan VALUES("3601072005","Cikayas","360107");
INSERT INTO kelurahan VALUES("3601072006","Sumurlaban","360107");
INSERT INTO kelurahan VALUES("3601072007","Kadubadak","360107");
INSERT INTO kelurahan VALUES("3601072009","Cipinang","360107");
INSERT INTO kelurahan VALUES("3601072010","Kramatmanik","360107");
INSERT INTO kelurahan VALUES("3601082001","Pasanggrahan","360108");
INSERT INTO kelurahan VALUES("3601082002","Sukasaba","360108");
INSERT INTO kelurahan VALUES("3601082005","Gunungbatu","360108");
INSERT INTO kelurahan VALUES("3601082006","Panacaran","360108");
INSERT INTO kelurahan VALUES("3601082007","Curuglanglang","360108");
INSERT INTO kelurahan VALUES("3601082008","Munjul","360108");
INSERT INTO kelurahan VALUES("3601082009","Cibitung","360108");
INSERT INTO kelurahan VALUES("3601082011","Kotadukuh","360108");
INSERT INTO kelurahan VALUES("3601082018","Lebak","360108");
INSERT INTO kelurahan VALUES("3601092001","Sukadame","360109");
INSERT INTO kelurahan VALUES("3601092002","Pagelaran","360109");
INSERT INTO kelurahan VALUES("3601092003","Surakarta","360109");
INSERT INTO kelurahan VALUES("3601092004","Montor","360109");
INSERT INTO kelurahan VALUES("3601092005","Kertasana (Kartasana)","360109");
INSERT INTO kelurahan VALUES("3601092006","Bama","360109");
INSERT INTO kelurahan VALUES("3601092007","Margasana","360109");
INSERT INTO kelurahan VALUES("3601092008","Sindanglaya","360109");
INSERT INTO kelurahan VALUES("3601092009","Tegalpapak","360109");
INSERT INTO kelurahan VALUES("3601092010","Bulagor","360109");
INSERT INTO kelurahan VALUES("3601092011","Harapankarya","360109");
INSERT INTO kelurahan VALUES("3601092012","Senangsari","360109");
INSERT INTO kelurahan VALUES("3601092013","Margagiri","360109");
INSERT INTO kelurahan VALUES("3601102001","Mekarsari","360110");
INSERT INTO kelurahan VALUES("3601102002","Cijakan","360110");
INSERT INTO kelurahan VALUES("3601102003","Geredug","360110");
INSERT INTO kelurahan VALUES("3601102004","Bojong","360110");
INSERT INTO kelurahan VALUES("3601102005","Banyumas","360110");
INSERT INTO kelurahan VALUES("3601102006","Citumenggung","360110");
INSERT INTO kelurahan VALUES("3601102007","Manggungjaya","360110");
INSERT INTO kelurahan VALUES("3601102008","Cahayamekar","360110");
INSERT INTO kelurahan VALUES("3601112001","Pasirsedang","360111");
INSERT INTO kelurahan VALUES("3601112002","Cililitan","360111");
INSERT INTO kelurahan VALUES("3601112003","Kadupandak","360111");
INSERT INTO kelurahan VALUES("3601112004","Kolelet","360111");
INSERT INTO kelurahan VALUES("3601112005","Ciherang","360111");
INSERT INTO kelurahan VALUES("3601112006","Bungurcopong","360111");
INSERT INTO kelurahan VALUES("3601112007","Pasirpanjang","360111");
INSERT INTO kelurahan VALUES("3601112008","Kadubera","360111");
INSERT INTO kelurahan VALUES("3601112009","Ganggaeng","360111");
INSERT INTO kelurahan VALUES("3601122001","Rancateureup","360112");
INSERT INTO kelurahan VALUES("3601122002","Labuan","360112");
INSERT INTO kelurahan VALUES("3601122003","Banyubiru","360112");
INSERT INTO kelurahan VALUES("3601122004","Caringin","360112");
INSERT INTO kelurahan VALUES("3601122010","Teluk","360112");
INSERT INTO kelurahan VALUES("3601122012","Cigondang","360112");
INSERT INTO kelurahan VALUES("3601122013","Kalanganyar","360112");
INSERT INTO kelurahan VALUES("3601122014","Sukamaju","360112");
INSERT INTO kelurahan VALUES("3601122015","Banyumekar","360112");
INSERT INTO kelurahan VALUES("3601132001","Alaswangi","360113");
INSERT INTO kelurahan VALUES("3601132002","Tegalwangi","360113");
INSERT INTO kelurahan VALUES("3601132003","Kananga","360113");
INSERT INTO kelurahan VALUES("3601132004","Cigandeng","360113");
INSERT INTO kelurahan VALUES("3601132005","Menes","360113");
INSERT INTO kelurahan VALUES("3601132006","Muruy","360113");
INSERT INTO kelurahan VALUES("3601132010","Sukamanah","360113");
INSERT INTO kelurahan VALUES("3601132011","Purwaraja","360113");
INSERT INTO kelurahan VALUES("3601132012","Sindangkarya","360113");
INSERT INTO kelurahan VALUES("3601132013","Cilabanbulan","360113");
INSERT INTO kelurahan VALUES("3601132015","Kadupayung","360113");
INSERT INTO kelurahan VALUES("3601132016","Ramaya","360113");
INSERT INTO kelurahan VALUES("3601142001","Langensari","360114");
INSERT INTO kelurahan VALUES("3601142002","Medalsari","360114");
INSERT INTO kelurahan VALUES("3601142003","Majau","360114");
INSERT INTO kelurahan VALUES("3601142004","Sodong","360114");
INSERT INTO kelurahan VALUES("3601142005","Talagasari","360114");
INSERT INTO kelurahan VALUES("3601142006","Ciandur","360114");
INSERT INTO kelurahan VALUES("3601142007","Kadudampit","360114");
INSERT INTO kelurahan VALUES("3601142008","Wanagiri","360114");
INSERT INTO kelurahan VALUES("3601142009","Parigi","360114");
INSERT INTO kelurahan VALUES("3601142010","Mekarwangi","360114");
INSERT INTO kelurahan VALUES("3601142011","Saketi","360114");
INSERT INTO kelurahan VALUES("3601142012","Girijaya","360114");
INSERT INTO kelurahan VALUES("3601142013","Sindanghayu","360114");
INSERT INTO kelurahan VALUES("3601142014","Sukalangu","360114");
INSERT INTO kelurahan VALUES("3601152001","Palanyar","360115");
INSERT INTO kelurahan VALUES("3601152002","Baturanjang","360115");
INSERT INTO kelurahan VALUES("3601152003","Cikadueun","360115");
INSERT INTO kelurahan VALUES("3601152004","Koncang","360115");
INSERT INTO kelurahan VALUES("3601152005","Kadugadung","360115");
INSERT INTO kelurahan VALUES("3601152006","Parumasan","360115");
INSERT INTO kelurahan VALUES("3601152007","Curugbarang","360115");
INSERT INTO kelurahan VALUES("3601152008","Kalanggunung","360115");
INSERT INTO kelurahan VALUES("3601152009","Pasireurih","360115");
INSERT INTO kelurahan VALUES("3601152010","Pasirmae","360115");
INSERT INTO kelurahan VALUES("3601162001","Pamarayan","360116");
INSERT INTO kelurahan VALUES("3601162002","Jiput","360116");
INSERT INTO kelurahan VALUES("3601162003","Sukacai","360116");
INSERT INTO kelurahan VALUES("3601162004","Tenjolahang","360116");
INSERT INTO kelurahan VALUES("3601162005","Janaka","360116");
INSERT INTO kelurahan VALUES("3601162006","Sikulan","360116");
INSERT INTO kelurahan VALUES("3601162007","Citaman","360116");
INSERT INTO kelurahan VALUES("3601162008","Jayamekar","360116");
INSERT INTO kelurahan VALUES("3601162011","Sukamanah","360116");
INSERT INTO kelurahan VALUES("3601162012","Salapraya","360116");
INSERT INTO kelurahan VALUES("3601162013","Banyuresmi","360116");
INSERT INTO kelurahan VALUES("3601162014","Sampang Bitung (Sampangbitung)","360116");
INSERT INTO kelurahan VALUES("3601162015","Babadsari","360116");
INSERT INTO kelurahan VALUES("3601172001","Pandat","360117");
INSERT INTO kelurahan VALUES("3601172002","Cikoneng","360117");
INSERT INTO kelurahan VALUES("3601172003","Nembol","360117");
INSERT INTO kelurahan VALUES("3601172004","Kurungkambing","360117");
INSERT INTO kelurahan VALUES("3601172005","Mandalawangi","360117");
INSERT INTO kelurahan VALUES("3601172006","Sinarjaya","360117");
INSERT INTO kelurahan VALUES("3601172007","Sirnagalih","360117");
INSERT INTO kelurahan VALUES("3601172008","Cikumbuen (Cikumbueun)","360117");
INSERT INTO kelurahan VALUES("3601172009","Ramea","360117");
INSERT INTO kelurahan VALUES("3601172010","Gunungsari","360117");
INSERT INTO kelurahan VALUES("3601172011","Panjangjaya","360117");
INSERT INTO kelurahan VALUES("3601172012","Giripawana","360117");
INSERT INTO kelurahan VALUES("3601172013","Mandalasari","360117");
INSERT INTO kelurahan VALUES("3601172014","Curuglemo","360117");
INSERT INTO kelurahan VALUES("3601172015","Pari","360117");
INSERT INTO kelurahan VALUES("3601182001","Cimanuk","360118");
INSERT INTO kelurahan VALUES("3601182002","Batubantar","360118");
INSERT INTO kelurahan VALUES("3601182003","Kadubungbang","360118");
INSERT INTO kelurahan VALUES("3601182004","Kupahandap","360118");
INSERT INTO kelurahan VALUES("3601182005","Dalembalar","360118");
INSERT INTO kelurahan VALUES("3601182006","Kadumadang","360118");
INSERT INTO kelurahan VALUES("3601182007","Rocek","360118");
INSERT INTO kelurahan VALUES("3601182008","Kadudodol","360118");
INSERT INTO kelurahan VALUES("3601182010","Gunungdatar","360118");
INSERT INTO kelurahan VALUES("3601182013","Sekong","360118");
INSERT INTO kelurahan VALUES("3601182015","Gunungcupu","360118");
INSERT INTO kelurahan VALUES("3601192001","Campaka","360119");
INSERT INTO kelurahan VALUES("3601192002","Banyumundu (Bayumundu)","360119");
INSERT INTO kelurahan VALUES("3601192003","Mandalasari","360119");
INSERT INTO kelurahan VALUES("3601192004","Sukasari","360119");
INSERT INTO kelurahan VALUES("3601192005","Saninten","360119");
INSERT INTO kelurahan VALUES("3601192006","Palurahan","360119");
INSERT INTO kelurahan VALUES("3601192007","Sukamanah","360119");
INSERT INTO kelurahan VALUES("3601192008","Kadugemblo","360119");
INSERT INTO kelurahan VALUES("3601192009","Banjarsari","360119");
INSERT INTO kelurahan VALUES("3601192010","Ciputri","360119");
INSERT INTO kelurahan VALUES("3601202002","Citalahab","360120");
INSERT INTO kelurahan VALUES("3601202004","Kadulimus","360120");
INSERT INTO kelurahan VALUES("3601202005","Bandung","360120");
INSERT INTO kelurahan VALUES("3601202006","Mogana","360120");
INSERT INTO kelurahan VALUES("3601202007","Banjar","360120");
INSERT INTO kelurahan VALUES("3601202008","Gunungputri","360120");
INSERT INTO kelurahan VALUES("3601202010","Cibodas","360120");
INSERT INTO kelurahan VALUES("3601202011","Kadubale","360120");
INSERT INTO kelurahan VALUES("3601202012","Cibeureum","360120");
INSERT INTO kelurahan VALUES("3601202013","Kadumaneuh","360120");
INSERT INTO kelurahan VALUES("3601202014","Pasirawi","360120");
INSERT INTO kelurahan VALUES("3601211002","Kadomas","360121");
INSERT INTO kelurahan VALUES("3601211003","Babakan Kalanganyar (Babakan Kalang Anyar)","360121");
INSERT INTO kelurahan VALUES("3601211004","Kabayan","360121");
INSERT INTO kelurahan VALUES("3601211009","Pandeglang","360121");
INSERT INTO kelurahan VALUES("3601222001","Kaduengang","360122");
INSERT INTO kelurahan VALUES("3601222002","Pasirpeuteuy","360122");
INSERT INTO kelurahan VALUES("3601222003","Kurungdahu","360122");
INSERT INTO kelurahan VALUES("3601222004","Kaduela","360122");
INSERT INTO kelurahan VALUES("3601222005","Koranji","360122");
INSERT INTO kelurahan VALUES("3601222006","Tapos","360122");
INSERT INTO kelurahan VALUES("3601222007","Cadasari","360122");
INSERT INTO kelurahan VALUES("3601222008","Ciinjuk","360122");
INSERT INTO kelurahan VALUES("3601222009","Kaungcaang","360122");
INSERT INTO kelurahan VALUES("3601222010","Cikentrung","360122");
INSERT INTO kelurahan VALUES("3601222013","Tanagara","360122");
INSERT INTO kelurahan VALUES("3601232001","Rawasari","360123");
INSERT INTO kelurahan VALUES("3601232002","Pasireurih","360123");
INSERT INTO kelurahan VALUES("3601232003","Kaduronyok","360123");
INSERT INTO kelurahan VALUES("3601232004","Cibarani","360123");
INSERT INTO kelurahan VALUES("3601232005","Cisereh","360123");
INSERT INTO kelurahan VALUES("3601232006","Kubangkondang","360123");
INSERT INTO kelurahan VALUES("3601232007","Kondangjaya","360123");
INSERT INTO kelurahan VALUES("3601232008","Ciherangjaya","360123");
INSERT INTO kelurahan VALUES("3601232009","Palembang","360123");
INSERT INTO kelurahan VALUES("3601242006","Turus","360124");
INSERT INTO kelurahan VALUES("3601242008","Patia","360124");
INSERT INTO kelurahan VALUES("3601242009","Pasirgadung","360124");
INSERT INTO kelurahan VALUES("3601242010","Cimoyan","360124");
INSERT INTO kelurahan VALUES("3601242011","Idaman","360124");
INSERT INTO kelurahan VALUES("3601242014","Babakankeusik","360124");
INSERT INTO kelurahan VALUES("3601242015","Surianeun","360124");
INSERT INTO kelurahan VALUES("3601242017","Rahayu","360124");
INSERT INTO kelurahan VALUES("3601242018","Ciawi","360124");
INSERT INTO kelurahan VALUES("3601242020","Simpangtiga","360124");
INSERT INTO kelurahan VALUES("3601251001","Kadumerak","360125");
INSERT INTO kelurahan VALUES("3601251002","Cigadung","360125");
INSERT INTO kelurahan VALUES("3601251003","Pagadungan","360125");
INSERT INTO kelurahan VALUES("3601251014","Juhut","360125");
INSERT INTO kelurahan VALUES("3601262001","Karyasari","360126");
INSERT INTO kelurahan VALUES("3601262002","Tegal","360126");
INSERT INTO kelurahan VALUES("3601262003","Cipicung","360126");
INSERT INTO kelurahan VALUES("3601262004","Dahu","360126");
INSERT INTO kelurahan VALUES("3601262005","Babakanlor","360126");
INSERT INTO kelurahan VALUES("3601262006","Karyautama","360126");
INSERT INTO kelurahan VALUES("3601262007","Mekarjaya","360126");
INSERT INTO kelurahan VALUES("3601262008","Padahayu","360126");
INSERT INTO kelurahan VALUES("3601262009","Cening","360126");
INSERT INTO kelurahan VALUES("3601262010","Bangkuyung","360126");
INSERT INTO kelurahan VALUES("3601272001","Sindangkerta","360127");
INSERT INTO kelurahan VALUES("3601272002","Manglid","360127");
INSERT INTO kelurahan VALUES("3601272003","Cikiruh","360127");
INSERT INTO kelurahan VALUES("3601272004","Cikadu","360127");
INSERT INTO kelurahan VALUES("3601272005","Kiarapayung","360127");
INSERT INTO kelurahan VALUES("3601272006","Kutakarang","360127");
INSERT INTO kelurahan VALUES("3601272007","Citeluk","360127");
INSERT INTO kelurahan VALUES("3601272008","Kiarajangkung","360127");
INSERT INTO kelurahan VALUES("3601272009","Cikalong","360127");
INSERT INTO kelurahan VALUES("3601272010","Malangnengah","360127");
INSERT INTO kelurahan VALUES("3601282001","Banjarmasin","360128");
INSERT INTO kelurahan VALUES("3601282002","Carita","360128");
INSERT INTO kelurahan VALUES("3601282003","Sukarame","360128");
INSERT INTO kelurahan VALUES("3601282004","Sukanegara (Sukanagara)","360128");
INSERT INTO kelurahan VALUES("3601282005","Cinoyong","360128");
INSERT INTO kelurahan VALUES("3601282006","Pejamben","360128");
INSERT INTO kelurahan VALUES("3601282007","Sukajadi","360128");
INSERT INTO kelurahan VALUES("3601282008","Kawoyang","360128");
INSERT INTO kelurahan VALUES("3601282009","Tembong","360128");
INSERT INTO kelurahan VALUES("3601282010","Sindanglaut","360128");
INSERT INTO kelurahan VALUES("3601292001","Seuseupan","360129");
INSERT INTO kelurahan VALUES("3601292002","Karyasari","360129");
INSERT INTO kelurahan VALUES("3601292003","Perdana","360129");
INSERT INTO kelurahan VALUES("3601292004","Sukaresmi","360129");
INSERT INTO kelurahan VALUES("3601292005","Pasirkadu","360129");
INSERT INTO kelurahan VALUES("3601292006","Kubangkampil","360129");
INSERT INTO kelurahan VALUES("3601292007","Sidamukti","360129");
INSERT INTO kelurahan VALUES("3601292008","Cibungur","360129");
INSERT INTO kelurahan VALUES("3601292009","Weru","360129");
INSERT INTO kelurahan VALUES("3601292010","Cikuya","360129");
INSERT INTO kelurahan VALUES("3601302001","Kadubelang","360130");
INSERT INTO kelurahan VALUES("3601302002","Pareang","360130");
INSERT INTO kelurahan VALUES("3601302003","Warasinga (Wirasinga)","360130");
INSERT INTO kelurahan VALUES("3601302004","Rancabugel","360130");
INSERT INTO kelurahan VALUES("3601302005","Kadujangkung","360130");
INSERT INTO kelurahan VALUES("3601302006","Medong","360130");
INSERT INTO kelurahan VALUES("3601302007","Sukamulya","360130");
INSERT INTO kelurahan VALUES("3601302008","Mekarjaya","360130");
INSERT INTO kelurahan VALUES("3601312001","Ciodeng","360131");
INSERT INTO kelurahan VALUES("3601312002","Pasirtenjo","360131");
INSERT INTO kelurahan VALUES("3601312003","Bojongmanik","360131");
INSERT INTO kelurahan VALUES("3601312004","Cempakawarna (Campakawarna)","360131");
INSERT INTO kelurahan VALUES("3601312005","Pasirloa","360131");
INSERT INTO kelurahan VALUES("3601312006","Pasirlancar","360131");
INSERT INTO kelurahan VALUES("3601312007","Sidangresmi (Sindangresmi)","360131");
INSERT INTO kelurahan VALUES("3601312008","Pasirdurung","360131");
INSERT INTO kelurahan VALUES("3601312009","Kadumalati","360131");
INSERT INTO kelurahan VALUES("3601322001","Koranji","360132");
INSERT INTO kelurahan VALUES("3601322002","Banjarwangi","360132");
INSERT INTO kelurahan VALUES("3601322003","Sukasari","360132");
INSERT INTO kelurahan VALUES("3601322004","Karyawangi","360132");
INSERT INTO kelurahan VALUES("3601322005","Sukaraja","360132");
INSERT INTO kelurahan VALUES("3601322006","Kaduhejo","360132");
INSERT INTO kelurahan VALUES("3601322007","Banjarnegara","360132");
INSERT INTO kelurahan VALUES("3601322008","Sanghiangdengdek","360132");
INSERT INTO kelurahan VALUES("3601322009","Cilentung","360132");
INSERT INTO kelurahan VALUES("3601332001","Sukajaya","360133");
INSERT INTO kelurahan VALUES("3601332002","Awilega","360133");
INSERT INTO kelurahan VALUES("3601332003","Gerendong","360133");
INSERT INTO kelurahan VALUES("3601332004","Koroncong","360133");
INSERT INTO kelurahan VALUES("3601332005","Pakuluran","360133");
INSERT INTO kelurahan VALUES("3601332006","Setrajaya","360133");
INSERT INTO kelurahan VALUES("3601332007","Karangsetra","360133");
INSERT INTO kelurahan VALUES("3601332008","Paniis","360133");
INSERT INTO kelurahan VALUES("3601332009","Bangkonol","360133");
INSERT INTO kelurahan VALUES("3601332010","Pasirjaksa","360133");
INSERT INTO kelurahan VALUES("3601332011","Pasirkarag (Pasirkarang)","360133");
INSERT INTO kelurahan VALUES("3601332012","Tegalongok","360133");
INSERT INTO kelurahan VALUES("3601341001","Sukaratu","360134");
INSERT INTO kelurahan VALUES("3601341002","Karaton","360134");
INSERT INTO kelurahan VALUES("3601341003","Saruni","360134");
INSERT INTO kelurahan VALUES("3601341004","Pagerbatu","360134");
INSERT INTO kelurahan VALUES("3601341005","Cilaja","360134");
INSERT INTO kelurahan VALUES("3601352001","Cimanis","360135");
INSERT INTO kelurahan VALUES("3601352002","Teluklada","360135");
INSERT INTO kelurahan VALUES("3601352003","Kertaraharja","360135");
INSERT INTO kelurahan VALUES("3601352004","Bojen","360135");
INSERT INTO kelurahan VALUES("3601352005","Kutamekar","360135");
INSERT INTO kelurahan VALUES("3601352006","Sobang","360135");
INSERT INTO kelurahan VALUES("3601352007","Pangkalan","360135");
INSERT INTO kelurahan VALUES("3601352008","Bojenwetan","360135");
INSERT INTO kelurahan VALUES("3602012002","Cilangkahan","360201");
INSERT INTO kelurahan VALUES("3602012003","Pagelaran","360201");
INSERT INTO kelurahan VALUES("3602012004","Sukaraja","360201");
INSERT INTO kelurahan VALUES("3602012005","Malingping Utara","360201");
INSERT INTO kelurahan VALUES("3602012006","Bolang","360201");
INSERT INTO kelurahan VALUES("3602012009","Cipeundeuy","360201");
INSERT INTO kelurahan VALUES("3602012013","Rahong","360201");
INSERT INTO kelurahan VALUES("3602012014","Kadujajar","360201");
INSERT INTO kelurahan VALUES("3602012016","Kersaratu","360201");
INSERT INTO kelurahan VALUES("3602012018","Malingping Selatan","360201");
INSERT INTO kelurahan VALUES("3602012019","Sumberwaras (Sumber Waras)","360201");
INSERT INTO kelurahan VALUES("3602012023","Sukamanah","360201");
INSERT INTO kelurahan VALUES("3602012024","Senanghati","360201");
INSERT INTO kelurahan VALUES("3602012026","Sangiang (Sanghiang)","360201");
INSERT INTO kelurahan VALUES("3602022002","Panggarangan","360202");
INSERT INTO kelurahan VALUES("3602022003","Jatake","360202");
INSERT INTO kelurahan VALUES("3602022004","Sogong","360202");
INSERT INTO kelurahan VALUES("3602022005","Cimandiri","360202");
INSERT INTO kelurahan VALUES("3602022009","Gununggede (Gunung Gede)","360202");
INSERT INTO kelurahan VALUES("3602022010","Situregen (Situragen)","360202");
INSERT INTO kelurahan VALUES("3602022011","Mekarjaya","360202");
INSERT INTO kelurahan VALUES("3602022014","Sindangratu","360202");
INSERT INTO kelurahan VALUES("3602022017","Hegarmanah","360202");
INSERT INTO kelurahan VALUES("3602022018","Sukajadi","360202");
INSERT INTO kelurahan VALUES("3602022019","Cibarengkok","360202");
INSERT INTO kelurahan VALUES("3602032001","Bayah Barat","360203");
INSERT INTO kelurahan VALUES("3602032002","Sawarna","360203");
INSERT INTO kelurahan VALUES("3602032006","Cidikit","360203");
INSERT INTO kelurahan VALUES("3602032007","Suwakan","360203");
INSERT INTO kelurahan VALUES("3602032008","Cimancak","360203");
INSERT INTO kelurahan VALUES("3602032011","Darmasari","360203");
INSERT INTO kelurahan VALUES("3602032013","Bayah Timur","360203");
INSERT INTO kelurahan VALUES("3602032014","Cisuren","360203");
INSERT INTO kelurahan VALUES("3602032016","Pasirgombong","360203");
INSERT INTO kelurahan VALUES("3602032017","Sawarna Timur","360203");
INSERT INTO kelurahan VALUES("3602032018","Pamubulan","360203");
INSERT INTO kelurahan VALUES("3602042002","Cipanas","360204");
INSERT INTO kelurahan VALUES("3602042003","Girilaya","360204");
INSERT INTO kelurahan VALUES("3602042004","Malangsari","360204");
INSERT INTO kelurahan VALUES("3602042005","Bintangresmi","360204");
INSERT INTO kelurahan VALUES("3602042006","Talagahiang/Talagahiyang","360204");
INSERT INTO kelurahan VALUES("3602042007","Luhurjaya","360204");
INSERT INTO kelurahan VALUES("3602042008","Haurgajrug","360204");
INSERT INTO kelurahan VALUES("3602042009","Giriharja","360204");
INSERT INTO kelurahan VALUES("3602042010","Sukasari","360204");
INSERT INTO kelurahan VALUES("3602042013","Jayapura","360204");
INSERT INTO kelurahan VALUES("3602042014","Sipayung","360204");
INSERT INTO kelurahan VALUES("3602042015","Bintangsari","360204");
INSERT INTO kelurahan VALUES("3602042016","Pasirhaur","360204");
INSERT INTO kelurahan VALUES("3602042020","Harumsari","360204");
INSERT INTO kelurahan VALUES("3602052003","Pasireurih","360205");
INSERT INTO kelurahan VALUES("3602052004","Ciminyak","360205");
INSERT INTO kelurahan VALUES("3602052005","Muncang","360205");
INSERT INTO kelurahan VALUES("3602052006","Leuwicoo","360205");
INSERT INTO kelurahan VALUES("3602052007","Sindangwangi","360205");
INSERT INTO kelurahan VALUES("3602052008","Cikarang","360205");
INSERT INTO kelurahan VALUES("3602052012","Sukanagara","360205");
INSERT INTO kelurahan VALUES("3602052013","Pasirnangka","360205");
INSERT INTO kelurahan VALUES("3602052018","Jagaraksa","360205");
INSERT INTO kelurahan VALUES("3602052019","Tanjungwangi","360205");
INSERT INTO kelurahan VALUES("3602052020","Mekarwangi","360205");
INSERT INTO kelurahan VALUES("3602052021","Girijagabaya","360205");
INSERT INTO kelurahan VALUES("3602062001","Kanekes","360206");
INSERT INTO kelurahan VALUES("3602062002","Cisimeut","360206");
INSERT INTO kelurahan VALUES("3602062003","Cibungur","360206");
INSERT INTO kelurahan VALUES("3602062004","Leuwidamar","360206");
INSERT INTO kelurahan VALUES("3602062005","Lebakparahiang (Lebak Parahiang)","360206");
INSERT INTO kelurahan VALUES("3602062006","Sangkanwangi","360206");
INSERT INTO kelurahan VALUES("3602062007","Nayagati","360206");
INSERT INTO kelurahan VALUES("3602062008","Bojongmenteng (Bojong Menteng)","360206");
INSERT INTO kelurahan VALUES("3602062009","Margawangi","360206");
INSERT INTO kelurahan VALUES("3602062010","Wantisari","360206");
INSERT INTO kelurahan VALUES("3602062011","Jalupangmulya (Jalupang Mulya)","360206");
INSERT INTO kelurahan VALUES("3602062012","Cisimeut Raya","360206");
INSERT INTO kelurahan VALUES("3602072004","Bojongmanik","360207");
INSERT INTO kelurahan VALUES("3602072007","Harjawana","360207");
INSERT INTO kelurahan VALUES("3602072008","Kadurahayu","360207");
INSERT INTO kelurahan VALUES("3602072009","Cimayang","360207");
INSERT INTO kelurahan VALUES("3602072010","Parakanbeusi","360207");
INSERT INTO kelurahan VALUES("3602072012","Keboncau","360207");
INSERT INTO kelurahan VALUES("3602072014","Mekarmanik","360207");
INSERT INTO kelurahan VALUES("3602072016","Mekar Rahayu","360207");
INSERT INTO kelurahan VALUES("3602072017","Pasirbitung","360207");
INSERT INTO kelurahan VALUES("3602082001","Gunungkencana (Gunung Kencana)","360208");
INSERT INTO kelurahan VALUES("3602082002","Cimanyangray","360208");
INSERT INTO kelurahan VALUES("3602082003","Gunungkendeng","360208");
INSERT INTO kelurahan VALUES("3602082004","Cisampang","360208");
INSERT INTO kelurahan VALUES("3602082005","Ciginggang","360208");
INSERT INTO kelurahan VALUES("3602082006","Ciakar","360208");
INSERT INTO kelurahan VALUES("3602082007","Cicaringin","360208");
INSERT INTO kelurahan VALUES("3602082008","Bulakan","360208");
INSERT INTO kelurahan VALUES("3602082009","Sukanegara","360208");
INSERT INTO kelurahan VALUES("3602082010","Bojongkoneng","360208");
INSERT INTO kelurahan VALUES("3602082011","Keramatjaya/Kramatjaya","360208");
INSERT INTO kelurahan VALUES("3602082012","Tanjungsari Indah","360208");
INSERT INTO kelurahan VALUES("3602092001","Kerta","360209");
INSERT INTO kelurahan VALUES("3602092002","Bojongjuruh","360209");
INSERT INTO kelurahan VALUES("3602092003","Leuwiipuh","360209");
INSERT INTO kelurahan VALUES("3602092004","Lebakkeusik","360209");
INSERT INTO kelurahan VALUES("3602092005","Cilegongilir (Cilegong Ilir)","360209");
INSERT INTO kelurahan VALUES("3602092006","Keusik","360209");
INSERT INTO kelurahan VALUES("3602092007","Cibaturkeusik","360209");
INSERT INTO kelurahan VALUES("3602092009","Kumpay","360209");
INSERT INTO kelurahan VALUES("3602092010","Jalupanggirang (Jalupang Girang)","360209");
INSERT INTO kelurahan VALUES("3602092011","Bendungan","360209");
INSERT INTO kelurahan VALUES("3602092012","Kertaraharja","360209");
INSERT INTO kelurahan VALUES("3602092013","Cisampih","360209");
INSERT INTO kelurahan VALUES("3602092014","Gunungsari","360209");
INSERT INTO kelurahan VALUES("3602092015","Tamansari","360209");
INSERT INTO kelurahan VALUES("3602092016","Cidahu","360209");
INSERT INTO kelurahan VALUES("3602092017","Ciruji","360209");
INSERT INTO kelurahan VALUES("3602092018","Kaduhauk","360209");
INSERT INTO kelurahan VALUES("3602092019","Labanjaya","360209");
INSERT INTO kelurahan VALUES("3602092020","Umbuljaya","360209");
INSERT INTO kelurahan VALUES("3602092021","Kertarahayu","360209");
INSERT INTO kelurahan VALUES("3602102001","Pasindangan","360210");
INSERT INTO kelurahan VALUES("3602102002","Parungkujang","360210");
INSERT INTO kelurahan VALUES("3602102003","Cileles","360210");
INSERT INTO kelurahan VALUES("3602102004","Cikareo","360210");
INSERT INTO kelurahan VALUES("3602102005","Cipadang","360210");
INSERT INTO kelurahan VALUES("3602102006","Gumuruh","360210");
INSERT INTO kelurahan VALUES("3602102007","Prabugantungan","360210");
INSERT INTO kelurahan VALUES("3602102008","Daroyon","360210");
INSERT INTO kelurahan VALUES("3602102009","Margamulya","360210");
INSERT INTO kelurahan VALUES("3602102010","Mekarjaya","360210");
INSERT INTO kelurahan VALUES("3602102011","Kujangsari","360210");
INSERT INTO kelurahan VALUES("3602102012","Banjarsari","360210");
INSERT INTO kelurahan VALUES("3602112001","Sarageni","360211");
INSERT INTO kelurahan VALUES("3602112002","Gununganten (Gunung Anten)","360211");
INSERT INTO kelurahan VALUES("3602112003","Sudamanik","360211");
INSERT INTO kelurahan VALUES("3602112004","Tambak","360211");
INSERT INTO kelurahan VALUES("3602112005","Cimarga","360211");
INSERT INTO kelurahan VALUES("3602112006","Karyajaya (Karya Jaya)","360211");
INSERT INTO kelurahan VALUES("3602112007","Margajaya (Marga Jaya)","360211");
INSERT INTO kelurahan VALUES("3602112008","Jayamanik","360211");
INSERT INTO kelurahan VALUES("3602112009","Margaluyu","360211");
INSERT INTO kelurahan VALUES("3602112010","Margatirta","360211");
INSERT INTO kelurahan VALUES("3602112011","Intenjaya (Inten Jaya)","360211");
INSERT INTO kelurahan VALUES("3602112012","Mekarjaya (Mekar Jaya)","360211");
INSERT INTO kelurahan VALUES("3602112013","Jayasari","360211");
INSERT INTO kelurahan VALUES("3602112014","Girimukti","360211");
INSERT INTO kelurahan VALUES("3602112015","Sangkanmanik (Sangkan Manik)","360211");
INSERT INTO kelurahan VALUES("3602112016","Sangiangjaya (Sangiang Jaya)","360211");
INSERT INTO kelurahan VALUES("3602112017","Mekarmulya","360211");
INSERT INTO kelurahan VALUES("3602122001","Maraya","360212");
INSERT INTO kelurahan VALUES("3602122002","Sajira","360212");
INSERT INTO kelurahan VALUES("3602122003","Sukarame","360212");
INSERT INTO kelurahan VALUES("3602122004","Calungbungur","360212");
INSERT INTO kelurahan VALUES("3602122005","Parungsari","360212");
INSERT INTO kelurahan VALUES("3602122006","Sindangsari","360212");
INSERT INTO kelurahan VALUES("3602122007","Mekarsari","360212");
INSERT INTO kelurahan VALUES("3602122008","Sukamarga","360212");
INSERT INTO kelurahan VALUES("3602122009","Pajagan","360212");
INSERT INTO kelurahan VALUES("3602122010","Sukajaya","360212");
INSERT INTO kelurahan VALUES("3602122011","Sajira Mekar (Sajiramekar)","360212");
INSERT INTO kelurahan VALUES("3602122012","Paja","360212");
INSERT INTO kelurahan VALUES("3602122013","Margaluyu","360212");
INSERT INTO kelurahan VALUES("3602122014","Bungurmekar (Bangunmekar)","360212");
INSERT INTO kelurahan VALUES("3602122015","Ciuyah","360212");
INSERT INTO kelurahan VALUES("3602132005","Tanjungsari (Tanjung Sari)","360213");
INSERT INTO kelurahan VALUES("3602132006","Maja","360213");
INSERT INTO kelurahan VALUES("3602132007","Sangiang","360213");
INSERT INTO kelurahan VALUES("3602132008","Binong","360213");
INSERT INTO kelurahan VALUES("3602132009","Gubugan Cibeureum (Gubugcibeureum)","360213");
INSERT INTO kelurahan VALUES("3602132011","Mekarsari","360213");
INSERT INTO kelurahan VALUES("3602132012","Padasuka","360213");
INSERT INTO kelurahan VALUES("3602132015","Curugbadak (Curug Badak)","360213");
INSERT INTO kelurahan VALUES("3602132016","Sindangmulya","360213");
INSERT INTO kelurahan VALUES("3602132018","Cilangkap","360213");
INSERT INTO kelurahan VALUES("3602132020","Pasirkembang (Pasir Kembang)","360213");
INSERT INTO kelurahan VALUES("3602132021","Pasirkecapi (Pasir Kecapi)","360213");
INSERT INTO kelurahan VALUES("3602132022","Buyut Mekar (Buyut)","360213");
INSERT INTO kelurahan VALUES("3602132023","Maja Baru","360213");
INSERT INTO kelurahan VALUES("3602141002","Rangkasbitung Barat","360214");
INSERT INTO kelurahan VALUES("3602141006","Cijoro Lebak","360214");
INSERT INTO kelurahan VALUES("3602141007","Muara Ciujung Barat","360214");
INSERT INTO kelurahan VALUES("3602141008","Cijoro Pasir","360214");
INSERT INTO kelurahan VALUES("3602141012","Muara Ciujung Timur","360214");
INSERT INTO kelurahan VALUES("3602142001","Pasirtanjung","360214");
INSERT INTO kelurahan VALUES("3602142009","Citeras","360214");
INSERT INTO kelurahan VALUES("3602142010","Nameng","360214");
INSERT INTO kelurahan VALUES("3602142011","Kolelet Wetan","360214");
INSERT INTO kelurahan VALUES("3602142013","Jatimulya","360214");
INSERT INTO kelurahan VALUES("3602142014","Mekarsari","360214");
INSERT INTO kelurahan VALUES("3602142016","Pabuaran","360214");
INSERT INTO kelurahan VALUES("3602142017","Rangkasbitung Timur","360214");
INSERT INTO kelurahan VALUES("3602142019","Sukamanah","360214");
INSERT INTO kelurahan VALUES("3602142021","Cimangeunteung (Cimangeungteung)","360214");
INSERT INTO kelurahan VALUES("3602142023","Narimbang Mulia","360214");
INSERT INTO kelurahan VALUES("3602152001","Sukarendah","360215");
INSERT INTO kelurahan VALUES("3602152002","Warunggunung","360215");
INSERT INTO kelurahan VALUES("3602152003","Cibuah","360215");
INSERT INTO kelurahan VALUES("3602152004","Pasir Tangkil (Pasirtangkil)","360215");
INSERT INTO kelurahan VALUES("3602152005","Baros","360215");
INSERT INTO kelurahan VALUES("3602152006","Banjarsari","360215");
INSERT INTO kelurahan VALUES("3602152007","Padasuka","360215");
INSERT INTO kelurahan VALUES("3602152008","Sukaraja","360215");
INSERT INTO kelurahan VALUES("3602152009","Jagabaya","360215");
INSERT INTO kelurahan VALUES("3602152010","Selaraja","360215");
INSERT INTO kelurahan VALUES("3602152011","Cempaka","360215");
INSERT INTO kelurahan VALUES("3602152012","Sindangsari","360215");
INSERT INTO kelurahan VALUES("3602162004","Mekarjaya","360216");
INSERT INTO kelurahan VALUES("3602162006","Cipalabuh","360216");
INSERT INTO kelurahan VALUES("3602162007","Cijaku","360216");
INSERT INTO kelurahan VALUES("3602162008","Cibeureum","360216");
INSERT INTO kelurahan VALUES("3602162012","Ciapus","360216");
INSERT INTO kelurahan VALUES("3602162013","Kandangsapi","360216");
INSERT INTO kelurahan VALUES("3602162014","Cihujan","360216");
INSERT INTO kelurahan VALUES("3602162015","Cimenga (Cimega)","360216");
INSERT INTO kelurahan VALUES("3602162016","Kapunduhan","360216");
INSERT INTO kelurahan VALUES("3602162017","Sukasenang","360216");
INSERT INTO kelurahan VALUES("3602162018","Cikaratuan","360216");
INSERT INTO kelurahan VALUES("3602172001","Anggalan","360217");
INSERT INTO kelurahan VALUES("3602172002","Muncangkopong","360217");
INSERT INTO kelurahan VALUES("3602172003","Sukaharja","360217");
INSERT INTO kelurahan VALUES("3602172004","Tamanjaya (Taman Jaya)","360217");
INSERT INTO kelurahan VALUES("3602172005","Cigoong Utara","360217");
INSERT INTO kelurahan VALUES("3602172006","Muaradua","360217");
INSERT INTO kelurahan VALUES("3602172007","Cikulur","360217");
INSERT INTO kelurahan VALUES("3602172008","Curugpanjang","360217");
INSERT INTO kelurahan VALUES("3602172009","Cigoong Selatan","360217");
INSERT INTO kelurahan VALUES("3602172010","Sumurbandung","360217");
INSERT INTO kelurahan VALUES("3602172011","Parage","360217");
INSERT INTO kelurahan VALUES("3602172012","Sukadaya","360217");
INSERT INTO kelurahan VALUES("3602172013","Pasirgintung","360217");
INSERT INTO kelurahan VALUES("3602182001","Tambakbaya","360218");
INSERT INTO kelurahan VALUES("3602182002","Kaduagung Timur","360218");
INSERT INTO kelurahan VALUES("3602182003","Panancangan","360218");
INSERT INTO kelurahan VALUES("3602182004","Cibadak","360218");
INSERT INTO kelurahan VALUES("3602182005","Asem","360218");
INSERT INTO kelurahan VALUES("3602182006","Cisangu","360218");
INSERT INTO kelurahan VALUES("3602182007","Kaduagung Barat","360218");
INSERT INTO kelurahan VALUES("3602182008","Bojongcae","360218");
INSERT INTO kelurahan VALUES("3602182009","Malabar","360218");
INSERT INTO kelurahan VALUES("3602182010","Pasar Keong","360218");
INSERT INTO kelurahan VALUES("3602182011","Bojong Leles (Bojongleles)","360218");
INSERT INTO kelurahan VALUES("3602182012","Cimenteng Jaya","360218");
INSERT INTO kelurahan VALUES("3602182013","Mekar Agung","360218");
INSERT INTO kelurahan VALUES("3602182014","Asem Margaluyu","360218");
INSERT INTO kelurahan VALUES("3602182015","Kaduagung Tengah","360218");
INSERT INTO kelurahan VALUES("3602192001","Cibeber","360219");
INSERT INTO kelurahan VALUES("3602192002","Citorek Tengah","360219");
INSERT INTO kelurahan VALUES("3602192003","Cisungsang","360219");
INSERT INTO kelurahan VALUES("3602192004","Kujangjaya","360219");
INSERT INTO kelurahan VALUES("3602192005","Kujangsari","360219");
INSERT INTO kelurahan VALUES("3602192006","Neglasari","360219");
INSERT INTO kelurahan VALUES("3602192007","Mekarsari","360219");
INSERT INTO kelurahan VALUES("3602192008","Cikotok","360219");
INSERT INTO kelurahan VALUES("3602192009","Sukamulya","360219");
INSERT INTO kelurahan VALUES("3602192010","Citorek Timur (Ciparay)","360219");
INSERT INTO kelurahan VALUES("3602192011","Warungbanten","360219");
INSERT INTO kelurahan VALUES("3602192013","Hegarmanah","360219");
INSERT INTO kelurahan VALUES("3602192014","Situmulya","360219");
INSERT INTO kelurahan VALUES("3602192015","Citorek Kidul (Ciusul)","360219");
INSERT INTO kelurahan VALUES("3602192016","Cikadu","360219");
INSERT INTO kelurahan VALUES("3602192017","Sirnagalih (Sinargalih)","360219");
INSERT INTO kelurahan VALUES("3602192018","Cihambali","360219");
INSERT INTO kelurahan VALUES("3602192019","Citorek Barat","360219");
INSERT INTO kelurahan VALUES("3602192020","Gunungwangun","360219");
INSERT INTO kelurahan VALUES("3602192021","Wanasari (Warnasari)","360219");
INSERT INTO kelurahan VALUES("3602192022","Citorek Sabrang (Girimukti)","360219");
INSERT INTO kelurahan VALUES("3602192023","Ciherang","360219");
INSERT INTO kelurahan VALUES("3602202001","Cilograng","360220");
INSERT INTO kelurahan VALUES("3602202002","Cibareno","360220");
INSERT INTO kelurahan VALUES("3602202003","Cikamunding","360220");
INSERT INTO kelurahan VALUES("3602202004","Cijengkol","360220");
INSERT INTO kelurahan VALUES("3602202005","Pasirbungur","360220");
INSERT INTO kelurahan VALUES("3602202006","Lebaktipar","360220");
INSERT INTO kelurahan VALUES("3602202007","Cikatomas","360220");
INSERT INTO kelurahan VALUES("3602202008","Girimukti","360220");
INSERT INTO kelurahan VALUES("3602202009","Cireundeu","360220");
INSERT INTO kelurahan VALUES("3602202010","Gunungbatu","360220");
INSERT INTO kelurahan VALUES("3602212001","Wanasalam","360221");
INSERT INTO kelurahan VALUES("3602212002","Bejod","360221");
INSERT INTO kelurahan VALUES("3602212003","Cilangkap","360221");
INSERT INTO kelurahan VALUES("3602212004","Cipeucang","360221");
INSERT INTO kelurahan VALUES("3602212005","Muara","360221");
INSERT INTO kelurahan VALUES("3602212006","Parungpanjang","360221");
INSERT INTO kelurahan VALUES("3602212007","Cikeusik","360221");
INSERT INTO kelurahan VALUES("3602212008","Katapang (Ketapang)","360221");
INSERT INTO kelurahan VALUES("3602212009","Cisarap","360221");
INSERT INTO kelurahan VALUES("3602212010","Sukatani","360221");
INSERT INTO kelurahan VALUES("3602212011","Cipedang","360221");
INSERT INTO kelurahan VALUES("3602212012","Parungsari","360221");
INSERT INTO kelurahan VALUES("3602212013","Karangpamindangan","360221");
INSERT INTO kelurahan VALUES("3602222001","Ciparasi","360222");
INSERT INTO kelurahan VALUES("3602222002","Sobang","360222");
INSERT INTO kelurahan VALUES("3602222003","Sukajaya","360222");
INSERT INTO kelurahan VALUES("3602222004","Sindanglaya","360222");
INSERT INTO kelurahan VALUES("3602222005","Sukamaju","360222");
INSERT INTO kelurahan VALUES("3602222006","Hariang","360222");
INSERT INTO kelurahan VALUES("3602222007","Majasari","360222");
INSERT INTO kelurahan VALUES("3602222008","Sinar Jaya","360222");
INSERT INTO kelurahan VALUES("3602222009","Cirompang","360222");
INSERT INTO kelurahan VALUES("3602222010","Sukaresmi","360222");
INSERT INTO kelurahan VALUES("3602232001","Guradog","360223");
INSERT INTO kelurahan VALUES("3602232002","Curugbitung","360223");
INSERT INTO kelurahan VALUES("3602232003","Candi","360223");
INSERT INTO kelurahan VALUES("3602232004","Mayak","360223");
INSERT INTO kelurahan VALUES("3602232005","Cipining","360223");
INSERT INTO kelurahan VALUES("3602232006","Cilayang","360223");
INSERT INTO kelurahan VALUES("3602232007","Ciburuy","360223");
INSERT INTO kelurahan VALUES("3602232008","Sekarwangi","360223");
INSERT INTO kelurahan VALUES("3602232009","Cidadap","360223");
INSERT INTO kelurahan VALUES("3602232010","Lebakasih (Lebakkasih)","360223");
INSERT INTO kelurahan VALUES("3602242001","Kalanganyar","360224");
INSERT INTO kelurahan VALUES("3602242002","Pasirkupa","360224");
INSERT INTO kelurahan VALUES("3602242003","Cilangkap","360224");
INSERT INTO kelurahan VALUES("3602242004","Aweh","360224");
INSERT INTO kelurahan VALUES("3602242005","Sangiangtanjung (Sangiang Tanjung)","360224");
INSERT INTO kelurahan VALUES("3602242006","Sukamekarsari","360224");
INSERT INTO kelurahan VALUES("3602242007","Cikatapis","360224");
INSERT INTO kelurahan VALUES("3602252001","Banjaririgasi (Banjar Irigasi)","360225");
INSERT INTO kelurahan VALUES("3602252002","Ciladaeun","360225");
INSERT INTO kelurahan VALUES("3602252003","Lebakgedong","360225");
INSERT INTO kelurahan VALUES("3602252004","Banjarsari","360225");
INSERT INTO kelurahan VALUES("3602252005","Lebaksitu","360225");
INSERT INTO kelurahan VALUES("3602252006","Lebaksangka","360225");
INSERT INTO kelurahan VALUES("3602262001","Panyaungan","360226");
INSERT INTO kelurahan VALUES("3602262002","Cihara","360226");
INSERT INTO kelurahan VALUES("3602262003","Ciparahu","360226");
INSERT INTO kelurahan VALUES("3602262004","Pondokpanjang","360226");
INSERT INTO kelurahan VALUES("3602262005","Citeupuseun (Citepuseun)","360226");
INSERT INTO kelurahan VALUES("3602262006","Lebakpeundeuy (Lebak Peundeuy)","360226");
INSERT INTO kelurahan VALUES("3602262007","Mekarsari","360226");
INSERT INTO kelurahan VALUES("3602262008","Karangkamulyan","360226");
INSERT INTO kelurahan VALUES("3602262009","Barunai","360226");
INSERT INTO kelurahan VALUES("3602272001","Datarcae","360227");
INSERT INTO kelurahan VALUES("3602272002","Cirinten","360227");
INSERT INTO kelurahan VALUES("3602272003","Karangnunggal","360227");
INSERT INTO kelurahan VALUES("3602272004","Kadudamas","360227");
INSERT INTO kelurahan VALUES("3602272005","Badur","360227");
INSERT INTO kelurahan VALUES("3602272006","Parakanlima","360227");
INSERT INTO kelurahan VALUES("3602272007","Nanggerang (Nangerang)","360227");
INSERT INTO kelurahan VALUES("3602272008","Cempaka","360227");
INSERT INTO kelurahan VALUES("3602272009","Karoya","360227");
INSERT INTO kelurahan VALUES("3602272010","Cibarani","360227");
INSERT INTO kelurahan VALUES("3602282001","Peucangpari","360228");
INSERT INTO kelurahan VALUES("3602282002","Cibungur","360228");
INSERT INTO kelurahan VALUES("3602282003","Mugijaya","360228");
INSERT INTO kelurahan VALUES("3602282004","Cikate","360228");
INSERT INTO kelurahan VALUES("3602282005","Cigemblong","360228");
INSERT INTO kelurahan VALUES("3602282006","Cikadongdong","360228");
INSERT INTO kelurahan VALUES("3602282007","Cikaret","360228");
INSERT INTO kelurahan VALUES("3602282008","Wangunjaya","360228");
INSERT INTO kelurahan VALUES("3603011001","Balaraja","360301");
INSERT INTO kelurahan VALUES("3603012003","Cangkudu","360301");
INSERT INTO kelurahan VALUES("3603012005","Talagasari","360301");
INSERT INTO kelurahan VALUES("3603012009","Tobat","360301");
INSERT INTO kelurahan VALUES("3603012010","Sentul","360301");
INSERT INTO kelurahan VALUES("3603012011","Gembong","360301");
INSERT INTO kelurahan VALUES("3603012013","Sukamurni (Suka Murni)","360301");
INSERT INTO kelurahan VALUES("3603012014","Saga","360301");
INSERT INTO kelurahan VALUES("3603012016","Sentul Jaya","360301");
INSERT INTO kelurahan VALUES("3603022001","Pangkat","360302");
INSERT INTO kelurahan VALUES("3603022002","Pabuaran","360302");
INSERT INTO kelurahan VALUES("3603022004","Pasir Muncang","360302");
INSERT INTO kelurahan VALUES("3603022005","Sumur Bandung","360302");
INSERT INTO kelurahan VALUES("3603022006","Jayanti","360302");
INSERT INTO kelurahan VALUES("3603022007","Dangdeur (Dang Deur)","360302");
INSERT INTO kelurahan VALUES("3603022008","Cikande","360302");
INSERT INTO kelurahan VALUES("3603022009","Pasir Gintung","360302");
INSERT INTO kelurahan VALUES("3603031001","Tigaraksa","360303");
INSERT INTO kelurahan VALUES("3603031007","Kadu Agung","360303");
INSERT INTO kelurahan VALUES("3603032002","Pasir Bolang","360303");
INSERT INTO kelurahan VALUES("3603032003","Matagara (Mata Gara)","360303");
INSERT INTO kelurahan VALUES("3603032004","Pasir Nangka","360303");
INSERT INTO kelurahan VALUES("3603032005","Pete","360303");
INSERT INTO kelurahan VALUES("3603032006","Tegalsari","360303");
INSERT INTO kelurahan VALUES("3603032008","Pematang","360303");
INSERT INTO kelurahan VALUES("3603032009","Cisereh","360303");
INSERT INTO kelurahan VALUES("3603032010","Margasari (Marga Sari)","360303");
INSERT INTO kelurahan VALUES("3603032011","Cileles","360303");
INSERT INTO kelurahan VALUES("3603032012","Sodong","360303");
INSERT INTO kelurahan VALUES("3603032013","Tapos","360303");
INSERT INTO kelurahan VALUES("3603032014","Bantar Panjang","360303");
INSERT INTO kelurahan VALUES("3603042001","Sukamanah (Suka Manah)","360304");
INSERT INTO kelurahan VALUES("3603042002","Jambe","360304");
INSERT INTO kelurahan VALUES("3603042003","Tipar Raya (Tipar Jaya / Tiparraya)","360304");
INSERT INTO kelurahan VALUES("3603042004","Taban","360304");
INSERT INTO kelurahan VALUES("3603042005","Daru","360304");
INSERT INTO kelurahan VALUES("3603042006","Kutruk","360304");
INSERT INTO kelurahan VALUES("3603042007","Ranca Buaya (Rancabuaya)","360304");
INSERT INTO kelurahan VALUES("3603042008","Mekarsari","360304");
INSERT INTO kelurahan VALUES("3603042009","Ancol Pasir","360304");
INSERT INTO kelurahan VALUES("3603042010","Pasir Barat","360304");
INSERT INTO kelurahan VALUES("3603052001","Cisoka","360305");
INSERT INTO kelurahan VALUES("3603052002","Caringin","360305");
INSERT INTO kelurahan VALUES("3603052003","Selapajang","360305");
INSERT INTO kelurahan VALUES("3603052004","Sukatani","360305");
INSERT INTO kelurahan VALUES("3603052006","Bojong Loa (Bojongloa)","360305");
INSERT INTO kelurahan VALUES("3603052007","Cibugel","360305");
INSERT INTO kelurahan VALUES("3603052008","Cempaka","360305");
INSERT INTO kelurahan VALUES("3603052009","Carenang","360305");
INSERT INTO kelurahan VALUES("3603052014","Karang Harja (Karangharja)","360305");
INSERT INTO kelurahan VALUES("3603052017","Jeungjing (Jeung Jing)","360305");
INSERT INTO kelurahan VALUES("3603062001","Pasir Ampo","360306");
INSERT INTO kelurahan VALUES("3603062003","Rancailat (Ranca Ilat)","360306");
INSERT INTO kelurahan VALUES("3603062007","Kemuning","360306");
INSERT INTO kelurahan VALUES("3603062009","Renged","360306");
INSERT INTO kelurahan VALUES("3603062011","Talok","360306");
INSERT INTO kelurahan VALUES("3603062013","Koper","360306");
INSERT INTO kelurahan VALUES("3603062014","Jengkol","360306");
INSERT INTO kelurahan VALUES("3603062015","Patrasana (Patra Sana)","360306");
INSERT INTO kelurahan VALUES("3603062018","Kresek","360306");
INSERT INTO kelurahan VALUES("3603072001","Kronjo","360307");
INSERT INTO kelurahan VALUES("3603072002","Pagenjahan","360307");
INSERT INTO kelurahan VALUES("3603072006","Pasir","360307");
INSERT INTO kelurahan VALUES("3603072007","Muncung","360307");
INSERT INTO kelurahan VALUES("3603072008","Pagedangan Ilir","360307");
INSERT INTO kelurahan VALUES("3603072009","Pagedangan Udik","360307");
INSERT INTO kelurahan VALUES("3603072010","Pasilian","360307");
INSERT INTO kelurahan VALUES("3603072013","Bakung","360307");
INSERT INTO kelurahan VALUES("3603072015","Blukbuk","360307");
INSERT INTO kelurahan VALUES("3603072017","Cirumpak","360307");
INSERT INTO kelurahan VALUES("3603081002","Mauk Timur","360308");
INSERT INTO kelurahan VALUES("3603082001","Mauk Barat","360308");
INSERT INTO kelurahan VALUES("3603082003","Tegal Kunir Kidul","360308");
INSERT INTO kelurahan VALUES("3603082004","Tegal Kunir Lor","360308");
INSERT INTO kelurahan VALUES("3603082005","Sasak","360308");
INSERT INTO kelurahan VALUES("3603082006","Gunung Sari","360308");
INSERT INTO kelurahan VALUES("3603082007","Kedung Dalem","360308");
INSERT INTO kelurahan VALUES("3603082008","Marga Mulya","360308");
INSERT INTO kelurahan VALUES("3603082009","Tanjung Anom","360308");
INSERT INTO kelurahan VALUES("3603082010","Jatiwaringin (Jati Waringin)","360308");
INSERT INTO kelurahan VALUES("3603082011","Banyu Asih","360308");
INSERT INTO kelurahan VALUES("3603082012","Ketapang","360308");
INSERT INTO kelurahan VALUES("3603092001","Patramanggala (Patra Manggala)","360309");
INSERT INTO kelurahan VALUES("3603092002","Karang Anyar","360309");
INSERT INTO kelurahan VALUES("3603092003","Lontar","360309");
INSERT INTO kelurahan VALUES("3603092004","Kemiri","360309");
INSERT INTO kelurahan VALUES("3603092005","Ranca Labuh","360309");
INSERT INTO kelurahan VALUES("3603092006","Klebet (Kjlebet / Kelebet)","360309");
INSERT INTO kelurahan VALUES("3603092007","Legok Suka Maju (Legok Sula Maju)","360309");
INSERT INTO kelurahan VALUES("3603102001","Sukadiri","360310");
INSERT INTO kelurahan VALUES("3603102002","Buaran Jati","360310");
INSERT INTO kelurahan VALUES("3603102003","Rawa Kidang","360310");
INSERT INTO kelurahan VALUES("3603102004","Pekayon","360310");
INSERT INTO kelurahan VALUES("3603102005","Karang Serang","360310");
INSERT INTO kelurahan VALUES("3603102006","Kosambi","360310");
INSERT INTO kelurahan VALUES("3603102007","Mekar Kondang","360310");
INSERT INTO kelurahan VALUES("3603102008","Gintung","360310");
INSERT INTO kelurahan VALUES("3603111010","Sukatani (Suka Tani)","360311");
INSERT INTO kelurahan VALUES("3603112001","Rajeg","360311");
INSERT INTO kelurahan VALUES("3603112002","Rajeg Mulya (Rajegmulya)","360311");
INSERT INTO kelurahan VALUES("3603112003","Pangarengan","360311");
INSERT INTO kelurahan VALUES("3603112005","Jambu Karya","360311");
INSERT INTO kelurahan VALUES("3603112006","Lembangsari (Lembang Sari)","360311");
INSERT INTO kelurahan VALUES("3603112007","Sukamanah (Suka Manah)","360311");
INSERT INTO kelurahan VALUES("3603112008","Tanjakan","360311");
INSERT INTO kelurahan VALUES("3603112009","Tanjakan Mekar","360311");
INSERT INTO kelurahan VALUES("3603112011","Sukasari (Suka Sari)","360311");
INSERT INTO kelurahan VALUES("3603112012","Ranca Bango","360311");
INSERT INTO kelurahan VALUES("3603112013","Daon","360311");
INSERT INTO kelurahan VALUES("3603112014","Mekarsari","360311");
INSERT INTO kelurahan VALUES("3603121005","Sindangsari (Sindang Sari)","360312");
INSERT INTO kelurahan VALUES("3603121010","Kutabumi (Kuta Bumi)","360312");
INSERT INTO kelurahan VALUES("3603121012","Kuta Jaya","360312");
INSERT INTO kelurahan VALUES("3603121014","Kuta Baru","360312");
INSERT INTO kelurahan VALUES("3603122001","Pasar Kemis","360312");
INSERT INTO kelurahan VALUES("3603122008","Sukamantri","360312");
INSERT INTO kelurahan VALUES("3603122011","Pangadegan","360312");
INSERT INTO kelurahan VALUES("3603122013","Gelam Jaya","360312");
INSERT INTO kelurahan VALUES("3603122015","Suka Asih (Sukaasih)","360312");
INSERT INTO kelurahan VALUES("3603132001","Teluknaga (Teluk Naga)","360313");
INSERT INTO kelurahan VALUES("3603132002","Bojong Renged","360313");
INSERT INTO kelurahan VALUES("3603132003","Babakan Asem","360313");
INSERT INTO kelurahan VALUES("3603132004","Keboncau (Kebon Cau)","360313");
INSERT INTO kelurahan VALUES("3603132005","Pangkalan","360313");
INSERT INTO kelurahan VALUES("3603132006","Kampung Melayu Timur","360313");
INSERT INTO kelurahan VALUES("3603132007","Kampung Melayu Barat","360313");
INSERT INTO kelurahan VALUES("3603132008","Muara","360313");
INSERT INTO kelurahan VALUES("3603132009","Lemo","360313");
INSERT INTO kelurahan VALUES("3603132010","Tanjung Pasir","360313");
INSERT INTO kelurahan VALUES("3603132011","Tegal Angus","360313");
INSERT INTO kelurahan VALUES("3603132012","Tanjung Burung","360313");
INSERT INTO kelurahan VALUES("3603132013","Kampung Besar","360313");
INSERT INTO kelurahan VALUES("3603141001","Kosambi Barat","360314");
INSERT INTO kelurahan VALUES("3603141003","Salembaran Jaya (Salembaran Raya)","360314");
INSERT INTO kelurahan VALUES("3603141010","Dadap","360314");
INSERT INTO kelurahan VALUES("3603142002","Kosambi Timur","360314");
INSERT INTO kelurahan VALUES("3603142004","Salembaran Jati","360314");
INSERT INTO kelurahan VALUES("3603142005","Ranga Rengas (Rawa Rengas)","360314");
INSERT INTO kelurahan VALUES("3603142006","Rawa Burung","360314");
INSERT INTO kelurahan VALUES("3603142007","Cengklong","360314");
INSERT INTO kelurahan VALUES("3603142008","Belimbing","360314");
INSERT INTO kelurahan VALUES("3603142009","Jati Mulya (Jatimulya)","360314");
INSERT INTO kelurahan VALUES("3603151001","Pakuhaji","360315");
INSERT INTO kelurahan VALUES("3603152002","Paku Alam","360315");
INSERT INTO kelurahan VALUES("3603152003","Bunisari (Bonasari)","360315");
INSERT INTO kelurahan VALUES("3603152004","Rawa Boni","360315");
INSERT INTO kelurahan VALUES("3603152005","Buaran Mangga","360315");
INSERT INTO kelurahan VALUES("3603152006","Buaran Bambu","360315");
INSERT INTO kelurahan VALUES("3603152007","Kalibaru","360315");
INSERT INTO kelurahan VALUES("3603152008","Kohod","360315");
INSERT INTO kelurahan VALUES("3603152009","Kramat","360315");
INSERT INTO kelurahan VALUES("3603152010","Sukawali","360315");
INSERT INTO kelurahan VALUES("3603152011","Surya Bahari","360315");
INSERT INTO kelurahan VALUES("3603152012","Kiara Payung","360315");
INSERT INTO kelurahan VALUES("3603152013","Laksana","360315");
INSERT INTO kelurahan VALUES("3603152014","Gaga","360315");
INSERT INTO kelurahan VALUES("3603161001","Sepatan","360316");
INSERT INTO kelurahan VALUES("3603162002","Karet","360316");
INSERT INTO kelurahan VALUES("3603162003","Kayu Agung","360316");
INSERT INTO kelurahan VALUES("3603162004","Kayu Bongkok","360316");
INSERT INTO kelurahan VALUES("3603162008","Pondok Jaya","360316");
INSERT INTO kelurahan VALUES("3603162011","Pisangan Jaya","360316");
INSERT INTO kelurahan VALUES("3603162012","Mekar Jaya","360316");
INSERT INTO kelurahan VALUES("3603162015","Sarakan","360316");
INSERT INTO kelurahan VALUES("3603171001","Curug Kulon","360317");
INSERT INTO kelurahan VALUES("3603171005","Sukabakti (Suka Bakti)","360317");
INSERT INTO kelurahan VALUES("3603171006","Binong","360317");
INSERT INTO kelurahan VALUES("3603172002","Curug Wetan","360317");
INSERT INTO kelurahan VALUES("3603172003","Kadu","360317");
INSERT INTO kelurahan VALUES("3603172004","Kadu Jaya","360317");
INSERT INTO kelurahan VALUES("3603172010","Cukanggalih (Cukang Galih)","360317");
INSERT INTO kelurahan VALUES("3603181001","Sukamulya (Suka Mulya)","360318");
INSERT INTO kelurahan VALUES("3603181003","Bunder","360318");
INSERT INTO kelurahan VALUES("3603182002","Cibadak","360318");
INSERT INTO kelurahan VALUES("3603182004","Talaga","360318");
INSERT INTO kelurahan VALUES("3603182005","Talagasari (Talaga Sari)","360318");
INSERT INTO kelurahan VALUES("3603182006","Dukuh","360318");
INSERT INTO kelurahan VALUES("3603182007","Cikupa","360318");
INSERT INTO kelurahan VALUES("3603182008","Sukanagara (Suka Nagara)","360318");
INSERT INTO kelurahan VALUES("3603182009","Bitung Jaya","360318");
INSERT INTO kelurahan VALUES("3603182010","Pasir Gadung","360318");
INSERT INTO kelurahan VALUES("3603182011","Sukadamai (Suka Damai)","360318");
INSERT INTO kelurahan VALUES("3603182012","Pasir Jaya","360318");
INSERT INTO kelurahan VALUES("3603182013","Budi Mulya","360318");
INSERT INTO kelurahan VALUES("3603182014","Bojong","360318");
INSERT INTO kelurahan VALUES("3603191002","Mekar Bakti","360319");
INSERT INTO kelurahan VALUES("3603192001","Ranca Iyuh","360319");
INSERT INTO kelurahan VALUES("3603192003","Peusar","360319");
INSERT INTO kelurahan VALUES("3603192004","Ranca Kalapa","360319");
INSERT INTO kelurahan VALUES("3603192005","Serdang Kulon","360319");
INSERT INTO kelurahan VALUES("3603192006","Mekar Jaya","360319");
INSERT INTO kelurahan VALUES("3603192007","Ciakar","360319");
INSERT INTO kelurahan VALUES("3603192008","Panongan","360319");
INSERT INTO kelurahan VALUES("3603201011","Babakan","360320");
INSERT INTO kelurahan VALUES("3603202002","Caringin","360320");
INSERT INTO kelurahan VALUES("3603202003","Serdang Wetan","360320");
INSERT INTO kelurahan VALUES("3603202004","Babat","360320");
INSERT INTO kelurahan VALUES("3603202005","Ciangir","360320");
INSERT INTO kelurahan VALUES("3603202006","Legok","360320");
INSERT INTO kelurahan VALUES("3603202007","Palasari (Pala Sari)","360320");
INSERT INTO kelurahan VALUES("3603202008","Bojongkamal (Bojong Kamal)","360320");
INSERT INTO kelurahan VALUES("3603202009","Rancagong","360320");
INSERT INTO kelurahan VALUES("3603202010","Kamuning (Kemuning)","360320");
INSERT INTO kelurahan VALUES("3603202012","Cirarab","360320");
INSERT INTO kelurahan VALUES("3603221004","Medang","360322");
INSERT INTO kelurahan VALUES("3603222002","Cicalengka","360322");
INSERT INTO kelurahan VALUES("3603222003","Pagedangan","360322");
INSERT INTO kelurahan VALUES("3603222005","Cijantra","360322");
INSERT INTO kelurahan VALUES("3603222006","Lengkong Kulon","360322");
INSERT INTO kelurahan VALUES("3603222007","Situ Gadung","360322");
INSERT INTO kelurahan VALUES("3603222008","Jatake","360322");
INSERT INTO kelurahan VALUES("3603222009","Cihuni","360322");
INSERT INTO kelurahan VALUES("3603222010","Kadu Sirung","360322");
INSERT INTO kelurahan VALUES("3603222011","Malang Nengah","360322");
INSERT INTO kelurahan VALUES("3603222012","Karang Tengah","360322");
INSERT INTO kelurahan VALUES("3603231001","Cisauk","360323");
INSERT INTO kelurahan VALUES("3603232003","Mekar Wangi (Mekarwangi)","360323");
INSERT INTO kelurahan VALUES("3603232005","Suradita","360323");
INSERT INTO kelurahan VALUES("3603232006","Sampora","360323");
INSERT INTO kelurahan VALUES("3603232009","Dangdang","360323");
INSERT INTO kelurahan VALUES("3603232011","Cibogo","360323");
INSERT INTO kelurahan VALUES("3603272001","Benda","360327");
INSERT INTO kelurahan VALUES("3603272002","Sukamulya (Suka Mulya)","360327");
INSERT INTO kelurahan VALUES("3603272003","Kaliasin (Kali Asin)","360327");
INSERT INTO kelurahan VALUES("3603272004","Buniayu (Buni Ayu)","360327");
INSERT INTO kelurahan VALUES("3603272005","Parahu","360327");
INSERT INTO kelurahan VALUES("3603272006","Merak","360327");
INSERT INTO kelurahan VALUES("3603272007","Bunar","360327");
INSERT INTO kelurahan VALUES("3603272008","Kubang","360327");
INSERT INTO kelurahan VALUES("3603281001","Kelapa Dua","360328");
INSERT INTO kelurahan VALUES("3603281002","Bencongan","360328");
INSERT INTO kelurahan VALUES("3603281003","Bencongan Indah","360328");
INSERT INTO kelurahan VALUES("3603281004","Pakulonan Barat","360328");
INSERT INTO kelurahan VALUES("3603281005","Bojong Nangka","360328");
INSERT INTO kelurahan VALUES("3603282006","Curug Sangerang (Curug Sangereng)","360328");
INSERT INTO kelurahan VALUES("3603292001","Sindang Jaya","360329");
INSERT INTO kelurahan VALUES("3603292002","Wanakerta (Wana Kerta)","360329");
INSERT INTO kelurahan VALUES("3603292003","Sukaharja (Suka Harja)","360329");
INSERT INTO kelurahan VALUES("3603292004","Sindangasih (Sindang Asih)","360329");
INSERT INTO kelurahan VALUES("3603292005","Sindangpanon (Sindang Panon)","360329");
INSERT INTO kelurahan VALUES("3603292006","Sindangsono (Sindang Sono)","360329");
INSERT INTO kelurahan VALUES("3603292007","Badak Anom","360329");
INSERT INTO kelurahan VALUES("3603302001","Kedaung Barat","360330");
INSERT INTO kelurahan VALUES("3603302002","Lebak Wangi","360330");
INSERT INTO kelurahan VALUES("3603302003","Jati Mulya","360330");
INSERT INTO kelurahan VALUES("3603302004","Sangiang","360330");
INSERT INTO kelurahan VALUES("3603302005","Gempol Sari","360330");
INSERT INTO kelurahan VALUES("3603302006","Kampung Kelor","360330");
INSERT INTO kelurahan VALUES("3603302007","Pondok Kelor","360330");
INSERT INTO kelurahan VALUES("3603302008","Tanah Merah","360330");
INSERT INTO kelurahan VALUES("3603312001","Solear","360331");
INSERT INTO kelurahan VALUES("3603312002","Cikuya","360331");
INSERT INTO kelurahan VALUES("3603312003","Cikasungka","360331");
INSERT INTO kelurahan VALUES("3603312004","Cireundeu","360331");
INSERT INTO kelurahan VALUES("3603312005","Cikareo","360331");
INSERT INTO kelurahan VALUES("3603312006","Pasanggrahan","360331");
INSERT INTO kelurahan VALUES("3603312007","Munjul","360331");
INSERT INTO kelurahan VALUES("3603322001","Gunung Kaler","360332");
INSERT INTO kelurahan VALUES("3603322002","Sidoko","360332");
INSERT INTO kelurahan VALUES("3603322003","Rancagede (Ranca Gede)","360332");
INSERT INTO kelurahan VALUES("3603322004","Kedung","360332");
INSERT INTO kelurahan VALUES("3603322005","Cipaeh","360332");
INSERT INTO kelurahan VALUES("3603322006","Onyam","360332");
INSERT INTO kelurahan VALUES("3603322007","Tamiang","360332");
INSERT INTO kelurahan VALUES("3603322008","Kandawati (Kanda Wati)","360332");
INSERT INTO kelurahan VALUES("3603322009","Cibetok","360332");
INSERT INTO kelurahan VALUES("3603332001","Mekar Baru","360333");
INSERT INTO kelurahan VALUES("3603332002","Kedaung","360333");
INSERT INTO kelurahan VALUES("3603332003","Cijeruk","360333");
INSERT INTO kelurahan VALUES("3603332004","Waliwis","360333");
INSERT INTO kelurahan VALUES("3603332005","Klutuk","360333");
INSERT INTO kelurahan VALUES("3603332006","Jenggot","360333");
INSERT INTO kelurahan VALUES("3603332007","Kosambi Dalam","360333");
INSERT INTO kelurahan VALUES("3603332008","Gandaria (Ganda Ria)","360333");
INSERT INTO kelurahan VALUES("3604052001","Kramatwatu","360405");
INSERT INTO kelurahan VALUES("3604052002","Margasana","360405");
INSERT INTO kelurahan VALUES("3604052003","Pejaten","360405");
INSERT INTO kelurahan VALUES("3604052004","Toyomerto","360405");
INSERT INTO kelurahan VALUES("3604052005","Harjatani","360405");
INSERT INTO kelurahan VALUES("3604052006","Serdang","360405");
INSERT INTO kelurahan VALUES("3604052007","Terate","360405");
INSERT INTO kelurahan VALUES("3604052008","Tonjong","360405");
INSERT INTO kelurahan VALUES("3604052009","Pamengkang","360405");
INSERT INTO kelurahan VALUES("3604052010","Pegadingan","360405");
INSERT INTO kelurahan VALUES("3604052011","Lebakwana","360405");
INSERT INTO kelurahan VALUES("3604052012","Wanayasa","360405");
INSERT INTO kelurahan VALUES("3604052013","Pelamunan","360405");
INSERT INTO kelurahan VALUES("3604052014","Teluk Terate","360405");
INSERT INTO kelurahan VALUES("3604052015","Margatani","360405");
INSERT INTO kelurahan VALUES("3604062001","Waringinkurung","360406");
INSERT INTO kelurahan VALUES("3604062002","Talaga Luhur (Telaga Luhur)","360406");
INSERT INTO kelurahan VALUES("3604062003","Binangun","360406");
INSERT INTO kelurahan VALUES("3604062004","Melati","360406");
INSERT INTO kelurahan VALUES("3604062005","Sasahan","360406");
INSERT INTO kelurahan VALUES("3604062006","Suka Dalem (Sukadalem)","360406");
INSERT INTO kelurahan VALUES("3604062007","Sukabares","360406");
INSERT INTO kelurahan VALUES("3604062008","Sambilawang","360406");
INSERT INTO kelurahan VALUES("3604062009","Sampir","360406");
INSERT INTO kelurahan VALUES("3604062010","Cokopsulanjana","360406");
INSERT INTO kelurahan VALUES("3604062011","Kemuning","360406");
INSERT INTO kelurahan VALUES("3604072001","Bojonegara","360407");
INSERT INTO kelurahan VALUES("3604072002","Mangkunegara","360407");
INSERT INTO kelurahan VALUES("3604072003","Wanakarta","360407");
INSERT INTO kelurahan VALUES("3604072004","Karang Kepuh (Karangkepuh)","360407");
INSERT INTO kelurahan VALUES("3604072005","Lambangsari","360407");
INSERT INTO kelurahan VALUES("3604072006","Kertasana","360407");
INSERT INTO kelurahan VALUES("3604072007","Margagiri","360407");
INSERT INTO kelurahan VALUES("3604072008","Ukirsari","360407");
INSERT INTO kelurahan VALUES("3604072009","Pakuncen","360407");
INSERT INTO kelurahan VALUES("3604072010","Pangarengan (Pengarengan)","360407");
INSERT INTO kelurahan VALUES("3604072011","Mekar Jaya","360407");
INSERT INTO kelurahan VALUES("3604082001","Pulo Ampel","360408");
INSERT INTO kelurahan VALUES("3604082002","Sumuranja","360408");
INSERT INTO kelurahan VALUES("3604082003","Mangunreja","360408");
INSERT INTO kelurahan VALUES("3604082004","Gedung Soka (Kedung Soka)","360408");
INSERT INTO kelurahan VALUES("3604082005","Salira","360408");
INSERT INTO kelurahan VALUES("3604082006","Argawana","360408");
INSERT INTO kelurahan VALUES("3604082007","Banyuwangi","360408");
INSERT INTO kelurahan VALUES("3604082008","Margasari","360408");
INSERT INTO kelurahan VALUES("3604082009","Pulo Panjang","360408");
INSERT INTO kelurahan VALUES("3604092001","Ciruas","360409");
INSERT INTO kelurahan VALUES("3604092002","Citerep","360409");
INSERT INTO kelurahan VALUES("3604092003","Pulo","360409");
INSERT INTO kelurahan VALUES("3604092004","Kadikaran","360409");
INSERT INTO kelurahan VALUES("3604092005","Kepandean","360409");
INSERT INTO kelurahan VALUES("3604092006","Gosara","360409");
INSERT INTO kelurahan VALUES("3604092009","Bumijaya","360409");
INSERT INTO kelurahan VALUES("3604092010","Penggalang","360409");
INSERT INTO kelurahan VALUES("3604092011","Pamong","360409");
INSERT INTO kelurahan VALUES("3604092012","Cigelam","360409");
INSERT INTO kelurahan VALUES("3604092013","Singamerta","360409");
INSERT INTO kelurahan VALUES("3604092014","Ranjeng","360409");
INSERT INTO kelurahan VALUES("3604092015","Beberan","360409");
INSERT INTO kelurahan VALUES("3604092016","Kaserangan","360409");
INSERT INTO kelurahan VALUES("3604092017","Pelawad","360409");
INSERT INTO kelurahan VALUES("3604112001","Kragilan","360411");
INSERT INTO kelurahan VALUES("3604112002","Silebu","360411");
INSERT INTO kelurahan VALUES("3604112003","Pematang","360411");
INSERT INTO kelurahan VALUES("3604112004","Dukuh","360411");
INSERT INTO kelurahan VALUES("3604112005","Undar Andir","360411");
INSERT INTO kelurahan VALUES("3604112006","Sukajadi","360411");
INSERT INTO kelurahan VALUES("3604112007","Sentul","360411");
INSERT INTO kelurahan VALUES("3604112008","Jeruk Tipis (Jeruktipis)","360411");
INSERT INTO kelurahan VALUES("3604112011","Kendayakan","360411");
INSERT INTO kelurahan VALUES("3604112012","Tegalmaja","360411");
INSERT INTO kelurahan VALUES("3604112013","Cisait","360411");
INSERT INTO kelurahan VALUES("3604112014","Kramatjati","360411");
INSERT INTO kelurahan VALUES("3604122001","Pontang","360412");
INSERT INTO kelurahan VALUES("3604122002","Sukanegara","360412");
INSERT INTO kelurahan VALUES("3604122003","Linduk","360412");
INSERT INTO kelurahan VALUES("3604122004","Pulokencana (Pulo Kencana)","360412");
INSERT INTO kelurahan VALUES("3604122006","Kelapian (Kalapian)","360412");
INSERT INTO kelurahan VALUES("3604122008","Kubang Puji","360412");
INSERT INTO kelurahan VALUES("3604122009","Domas","360412");
INSERT INTO kelurahan VALUES("3604122010","Singarajan","360412");
INSERT INTO kelurahan VALUES("3604122011","Kaserangan (Keserangan)","360412");
INSERT INTO kelurahan VALUES("3604122012","Wanayasa","360412");
INSERT INTO kelurahan VALUES("3604122013","Suka Jaya (Sukajaya)","360412");
INSERT INTO kelurahan VALUES("3604132001","Tirtayasa","360413");
INSERT INTO kelurahan VALUES("3604132002","Samparwadi","360413");
INSERT INTO kelurahan VALUES("3604132003","Kamanisan (Kemanisan)","360413");
INSERT INTO kelurahan VALUES("3604132004","Pontang Legon","360413");
INSERT INTO kelurahan VALUES("3604132005","Kebon","360413");
INSERT INTO kelurahan VALUES("3604132006","Sujung","360413");
INSERT INTO kelurahan VALUES("3604132007","Lontar","360413");
INSERT INTO kelurahan VALUES("3604132008","Susukan","360413");
INSERT INTO kelurahan VALUES("3604132009","Wargasara","360413");
INSERT INTO kelurahan VALUES("3604132010","Laban","360413");
INSERT INTO kelurahan VALUES("3604132011","Tengkurak","360413");
INSERT INTO kelurahan VALUES("3604132012","Alang Alang","360413");
INSERT INTO kelurahan VALUES("3604132013","Kebuyutan","360413");
INSERT INTO kelurahan VALUES("3604132014","Puser","360413");
INSERT INTO kelurahan VALUES("3604142001","Tanara","360414");
INSERT INTO kelurahan VALUES("3604142002","Cerukcuk","360414");
INSERT INTO kelurahan VALUES("3604142003","Tenjoayu (Tenjo Ayu)","360414");
INSERT INTO kelurahan VALUES("3604142004","Sukamanah","360414");
INSERT INTO kelurahan VALUES("3604142005","Lempuyang","360414");
INSERT INTO kelurahan VALUES("3604142006","Siremen","360414");
INSERT INTO kelurahan VALUES("3604142007","Bendung","360414");
INSERT INTO kelurahan VALUES("3604142008","Pedaleman","360414");
INSERT INTO kelurahan VALUES("3604142009","Cibodas","360414");
INSERT INTO kelurahan VALUES("3604152001","Cikande","360415");
INSERT INTO kelurahan VALUES("3604152002","Leuwi Limus (Leuwilimus)","360415");
INSERT INTO kelurahan VALUES("3604152003","Nambo Udik","360415");
INSERT INTO kelurahan VALUES("3604152004","Parigi","360415");
INSERT INTO kelurahan VALUES("3604152005","Koper","360415");
INSERT INTO kelurahan VALUES("3604152006","Bakung","360415");
INSERT INTO kelurahan VALUES("3604152007","Julang","360415");
INSERT INTO kelurahan VALUES("3604152008","Sukatani","360415");
INSERT INTO kelurahan VALUES("3604152009","Situterate","360415");
INSERT INTO kelurahan VALUES("3604152010","Kamurang","360415");
INSERT INTO kelurahan VALUES("3604152011","Gembor Udik","360415");
INSERT INTO kelurahan VALUES("3604152012","Songgomjaya (Songgom Jaya)","360415");
INSERT INTO kelurahan VALUES("3604152013","Cikande Permai","360415");
INSERT INTO kelurahan VALUES("3604162001","Kibin","360416");
INSERT INTO kelurahan VALUES("3604162002","Ketos","360416");
INSERT INTO kelurahan VALUES("3604162003","Cijeruk","360416");
INSERT INTO kelurahan VALUES("3604162004","Nagara","360416");
INSERT INTO kelurahan VALUES("3604162005","Nambo Ilir","360416");
INSERT INTO kelurahan VALUES("3604162006","Barengkok","360416");
INSERT INTO kelurahan VALUES("3604162007","Sukamaju","360416");
INSERT INTO kelurahan VALUES("3604162008","Tambak","360416");
INSERT INTO kelurahan VALUES("3604162009","Ciagel","360416");
INSERT INTO kelurahan VALUES("3604172001","Carenang","360417");
INSERT INTO kelurahan VALUES("3604172002","Pamanuk","360417");
INSERT INTO kelurahan VALUES("3604172003","Mandaya","360417");
INSERT INTO kelurahan VALUES("3604172004","Teras","360417");
INSERT INTO kelurahan VALUES("3604172006","Ragasmasigit (Ragasmesigit)","360417");
INSERT INTO kelurahan VALUES("3604172007","Walikukun","360417");
INSERT INTO kelurahan VALUES("3604172009","Panenjoan","360417");
INSERT INTO kelurahan VALUES("3604172010","Mekarsari","360417");
INSERT INTO kelurahan VALUES("3604182001","Binuang","360418");
INSERT INTO kelurahan VALUES("3604182002","Cakung","360418");
INSERT INTO kelurahan VALUES("3604182003","Renged","360418");
INSERT INTO kelurahan VALUES("3604182004","Gembor","360418");
INSERT INTO kelurahan VALUES("3604182005","Warakas","360418");
INSERT INTO kelurahan VALUES("3604182006","Sukamampir","360418");
INSERT INTO kelurahan VALUES("3604182007","Lamaran","360418");
INSERT INTO kelurahan VALUES("3604192001","Petir","360419");
INSERT INTO kelurahan VALUES("3604192002","Cirangkong","360419");
INSERT INTO kelurahan VALUES("3604192003","Tambiluk","360419");
INSERT INTO kelurahan VALUES("3604192004","Sindangsari","360419");
INSERT INTO kelurahan VALUES("3604192005","Padasuka","360419");
INSERT INTO kelurahan VALUES("3604192006","Seuat","360419");
INSERT INTO kelurahan VALUES("3604192007","Nagarapadang (Nagara Padang)","360419");
INSERT INTO kelurahan VALUES("3604192008","Kadugenep","360419");
INSERT INTO kelurahan VALUES("3604192009","Cirendeu (Cireundeu)","360419");
INSERT INTO kelurahan VALUES("3604192010","Sanding","360419");
INSERT INTO kelurahan VALUES("3604192011","Kampung Baru","360419");
INSERT INTO kelurahan VALUES("3604192012","Mekar Baru (Mekarbaru)","360419");
INSERT INTO kelurahan VALUES("3604192013","Seuat Jaya","360419");
INSERT INTO kelurahan VALUES("3604192014","Kubang Jaya","360419");
INSERT INTO kelurahan VALUES("3604192015","Bojong Nangka","360419");
INSERT INTO kelurahan VALUES("3604202001","Tanjung Teja (Tunjung Teja)","360420");
INSERT INTO kelurahan VALUES("3604202002","Sukasari","360420");
INSERT INTO kelurahan VALUES("3604202003","Panunggulan","360420");
INSERT INTO kelurahan VALUES("3604202004","Malanggah","360420");
INSERT INTO kelurahan VALUES("3604202005","Kemuning (Kamuning)","360420");
INSERT INTO kelurahan VALUES("3604202006","Bojong Menteng","360420");
INSERT INTO kelurahan VALUES("3604202007","Bojong Catang","360420");
INSERT INTO kelurahan VALUES("3604202008","Bojong Pandan","360420");
INSERT INTO kelurahan VALUES("3604202009","Pancaregang (Pancarecang)","360420");
INSERT INTO kelurahan VALUES("3604222001","Baros","360422");
INSERT INTO kelurahan VALUES("3604222002","Tejamari","360422");
INSERT INTO kelurahan VALUES("3604222003","Panyirapan","360422");
INSERT INTO kelurahan VALUES("3604222004","Sidamukti","360422");
INSERT INTO kelurahan VALUES("3604222005","Sukacai","360422");
INSERT INTO kelurahan VALUES("3604222006","Tamansari","360422");
INSERT INTO kelurahan VALUES("3604222007","Sindangmandi","360422");
INSERT INTO kelurahan VALUES("3604222008","Cisalam","360422");
INSERT INTO kelurahan VALUES("3604222009","Sukamanah","360422");
INSERT INTO kelurahan VALUES("3604222010","Sukamenak","360422");
INSERT INTO kelurahan VALUES("3604222011","Curugagung (Curug Agung)","360422");
INSERT INTO kelurahan VALUES("3604222012","Padasuka","360422");
INSERT INTO kelurahan VALUES("3604222013","Sinarmukti","360422");
INSERT INTO kelurahan VALUES("3604222014","Suka Indah","360422");
INSERT INTO kelurahan VALUES("3604232001","Cikeusal","360423");
INSERT INTO kelurahan VALUES("3604232002","Dahu","360423");
INSERT INTO kelurahan VALUES("3604232003","Katulisan","360423");
INSERT INTO kelurahan VALUES("3604232004","Sukamaju","360423");
INSERT INTO kelurahan VALUES("3604232005","Cilayang","360423");
INSERT INTO kelurahan VALUES("3604232006","Sukamenak","360423");
INSERT INTO kelurahan VALUES("3604232007","Cimaung","360423");
INSERT INTO kelurahan VALUES("3604232008","Panyabrangan","360423");
INSERT INTO kelurahan VALUES("3604232009","Gandayasa","360423");
INSERT INTO kelurahan VALUES("3604232010","Bantar Panjang","360423");
INSERT INTO kelurahan VALUES("3604232011","Sukaratu","360423");
INSERT INTO kelurahan VALUES("3604232012","Harundang","360423");
INSERT INTO kelurahan VALUES("3604232013","Sukarame","360423");
INSERT INTO kelurahan VALUES("3604232014","Panosogan","360423");
INSERT INTO kelurahan VALUES("3604232015","Mongpok","360423");
INSERT INTO kelurahan VALUES("3604232016","Sukaraja","360423");
INSERT INTO kelurahan VALUES("3604232017","Cilayang Guha","360423");
INSERT INTO kelurahan VALUES("3604242001","Pamarayan","360424");
INSERT INTO kelurahan VALUES("3604242002","Damping","360424");
INSERT INTO kelurahan VALUES("3604242003","Wirana","360424");
INSERT INTO kelurahan VALUES("3604242004","Keboncau (Kebon Cau)","360424");
INSERT INTO kelurahan VALUES("3604242005","Pudar","360424");
INSERT INTO kelurahan VALUES("3604242006","Binong","360424");
INSERT INTO kelurahan VALUES("3604242007","Sangiang","360424");
INSERT INTO kelurahan VALUES("3604242008","Kampung Baru","360424");
INSERT INTO kelurahan VALUES("3604242010","Pasirlimus","360424");
INSERT INTO kelurahan VALUES("3604242018","Pasir Kembang","360424");
INSERT INTO kelurahan VALUES("3604252001","Kopo","360425");
INSERT INTO kelurahan VALUES("3604252002","Garut","360425");
INSERT INTO kelurahan VALUES("3604252003","Nanggung","360425");
INSERT INTO kelurahan VALUES("3604252004","Cidahu","360425");
INSERT INTO kelurahan VALUES("3604252005","Nyompok","360425");
INSERT INTO kelurahan VALUES("3604252006","Gabus","360425");
INSERT INTO kelurahan VALUES("3604252007","Carenang Udik","360425");
INSERT INTO kelurahan VALUES("3604252008","Rancasumur","360425");
INSERT INTO kelurahan VALUES("3604252009","Babakanjaya (Babakan Jaya)","360425");
INSERT INTO kelurahan VALUES("3604252010","Mekarbaru","360425");
INSERT INTO kelurahan VALUES("3604262001","Jawilan","360426");
INSERT INTO kelurahan VALUES("3604262002","Bojot","360426");
INSERT INTO kelurahan VALUES("3604262003","Cemplang","360426");
INSERT INTO kelurahan VALUES("3604262004","Pagintungan","360426");
INSERT INTO kelurahan VALUES("3604262005","Pasirbuyut","360426");
INSERT INTO kelurahan VALUES("3604262006","Majasari","360426");
INSERT INTO kelurahan VALUES("3604262007","Parakan","360426");
INSERT INTO kelurahan VALUES("3604262008","Kareo","360426");
INSERT INTO kelurahan VALUES("3604262009","Junti","360426");
INSERT INTO kelurahan VALUES("3604272001","Ujungtebu","360427");
INSERT INTO kelurahan VALUES("3604272002","Siketug","360427");
INSERT INTO kelurahan VALUES("3604272003","Lebak","360427");
INSERT INTO kelurahan VALUES("3604272004","Pondok Kaharu (Pondok Kahuru)","360427");
INSERT INTO kelurahan VALUES("3604272005","Sukabares","360427");
INSERT INTO kelurahan VALUES("3604272006","Sukarena","360427");
INSERT INTO kelurahan VALUES("3604272007","Sukadana","360427");
INSERT INTO kelurahan VALUES("3604272008","Cemplang","360427");
INSERT INTO kelurahan VALUES("3604272009","Cisitu","360427");
INSERT INTO kelurahan VALUES("3604272010","Citaman","360427");
INSERT INTO kelurahan VALUES("3604272011","Panyaungan Jaya","360427");
INSERT INTO kelurahan VALUES("3604282001","Pabuaran","360428");
INSERT INTO kelurahan VALUES("3604282006","Kadubeureum","360428");
INSERT INTO kelurahan VALUES("3604282007","Tanjungsari","360428");
INSERT INTO kelurahan VALUES("3604282009","Pancanegara","360428");
INSERT INTO kelurahan VALUES("3604282010","Sindangsari","360428");
INSERT INTO kelurahan VALUES("3604282012","Sindangheula","360428");
INSERT INTO kelurahan VALUES("3604282013","Pasanggrahan","360428");
INSERT INTO kelurahan VALUES("3604282015","Talaga Warna","360428");
INSERT INTO kelurahan VALUES("3604292001","Padarincang","360429");
INSERT INTO kelurahan VALUES("3604292002","Bugel","360429");
INSERT INTO kelurahan VALUES("3604292003","Cibojong","360429");
INSERT INTO kelurahan VALUES("3604292004","Citasuk","360429");
INSERT INTO kelurahan VALUES("3604292005","Cisaat","360429");
INSERT INTO kelurahan VALUES("3604292006","Ciomas","360429");
INSERT INTO kelurahan VALUES("3604292007","Barugbug","360429");
INSERT INTO kelurahan VALUES("3604292008","Batu Kuwung (Batukuwung)","360429");
INSERT INTO kelurahan VALUES("3604292009","Kramatlaban","360429");
INSERT INTO kelurahan VALUES("3604292010","Kelumpang (Kalumpang)","360429");
INSERT INTO kelurahan VALUES("3604292011","Kadubeureum","360429");
INSERT INTO kelurahan VALUES("3604292012","Cipayung","360429");
INSERT INTO kelurahan VALUES("3604292013","Curug Goong","360429");
INSERT INTO kelurahan VALUES("3604292014","Kadu Kempong","360429");
INSERT INTO kelurahan VALUES("3604302001","Anyar","360430");
INSERT INTO kelurahan VALUES("3604302002","Sindang Mandi (Sindangmandi)","360430");
INSERT INTO kelurahan VALUES("3604302003","Cikoneng","360430");
INSERT INTO kelurahan VALUES("3604302004","Tanjung Manis (Tanjungmanis)","360430");
INSERT INTO kelurahan VALUES("3604302005","Bandulu","360430");
INSERT INTO kelurahan VALUES("3604302006","Bunihara","360430");
INSERT INTO kelurahan VALUES("3604302007","Kosambironyok (Kosambi Ronyok)","360430");
INSERT INTO kelurahan VALUES("3604302008","Banjarsari","360430");
INSERT INTO kelurahan VALUES("3604302009","Mekarsari","360430");
INSERT INTO kelurahan VALUES("3604302010","Sindangkarya","360430");
INSERT INTO kelurahan VALUES("3604302011","Tambang Ayam","360430");
INSERT INTO kelurahan VALUES("3604302012","Grogol Indah","360430");
INSERT INTO kelurahan VALUES("3604312001","Cinangka","360431");
INSERT INTO kelurahan VALUES("3604312002","Bantar Waru (Bantarwaru)","360431");
INSERT INTO kelurahan VALUES("3604312003","Pasauran","360431");
INSERT INTO kelurahan VALUES("3604312004","Bulakan","360431");
INSERT INTO kelurahan VALUES("3604312005","Karang Suraga","360431");
INSERT INTO kelurahan VALUES("3604312006","Umbul Tanjung","360431");
INSERT INTO kelurahan VALUES("3604312007","Kubang Baros","360431");
INSERT INTO kelurahan VALUES("3604312008","Ranca Sanggal (Rancasanggal)","360431");
INSERT INTO kelurahan VALUES("3604312009","Cikolelet","360431");
INSERT INTO kelurahan VALUES("3604312010","Sindang Laya (Sindanglaya)","360431");
INSERT INTO kelurahan VALUES("3604312011","Kamasan","360431");
INSERT INTO kelurahan VALUES("3604312012","Bantar Wangi (Bantarwangi)","360431");
INSERT INTO kelurahan VALUES("3604312013","Mekarsari","360431");
INSERT INTO kelurahan VALUES("3604312014","Baros Jaya","360431");
INSERT INTO kelurahan VALUES("3604322001","Mancak","360432");
INSERT INTO kelurahan VALUES("3604322002","Ciwarna","360432");
INSERT INTO kelurahan VALUES("3604322003","Angsana","360432");
INSERT INTO kelurahan VALUES("3604322004","Talaga","360432");
INSERT INTO kelurahan VALUES("3604322005","Cikedung","360432");
INSERT INTO kelurahan VALUES("3604322006","Sigedong","360432");
INSERT INTO kelurahan VALUES("3604322007","Sangiang","360432");
INSERT INTO kelurahan VALUES("3604322008","Pasirwaru","360432");
INSERT INTO kelurahan VALUES("3604322009","Waringin","360432");
INSERT INTO kelurahan VALUES("3604322010","Winong","360432");
INSERT INTO kelurahan VALUES("3604322011","Batukuda","360432");
INSERT INTO kelurahan VALUES("3604322012","Labuan (Labuhan)","360432");
INSERT INTO kelurahan VALUES("3604322013","Bale Kambang (Balekambang)","360432");
INSERT INTO kelurahan VALUES("3604322014","Bale Kencana","360432");
INSERT INTO kelurahan VALUES("3604332001","Gunungsari","360433");
INSERT INTO kelurahan VALUES("3604332002","Ciherang","360433");
INSERT INTO kelurahan VALUES("3604332003","Tamiang","360433");
INSERT INTO kelurahan VALUES("3604332004","Sukalaba","360433");
INSERT INTO kelurahan VALUES("3604332005","Kadu Agung","360433");
INSERT INTO kelurahan VALUES("3604332006","Luwuk","360433");
INSERT INTO kelurahan VALUES("3604332007","Curug Sulanjana","360433");
INSERT INTO kelurahan VALUES("3604342001","Bandung","360434");
INSERT INTO kelurahan VALUES("3604342002","Mander","360434");
INSERT INTO kelurahan VALUES("3604342003","Penamping (Panamping)","360434");
INSERT INTO kelurahan VALUES("3604342004","Pangawinan","360434");
INSERT INTO kelurahan VALUES("3604342005","Malabar","360434");
INSERT INTO kelurahan VALUES("3604342006","Blokang","360434");
INSERT INTO kelurahan VALUES("3604342007","Babakan","360434");
INSERT INTO kelurahan VALUES("3604342008","Pringwulung","360434");
INSERT INTO kelurahan VALUES("3604352001","Kamaruton","360435");
INSERT INTO kelurahan VALUES("3604352002","Teras Bendung (Terasbendung)","360435");
INSERT INTO kelurahan VALUES("3604352003","Lebak Wangi (Lebakwangi)","360435");
INSERT INTO kelurahan VALUES("3604352004","Lebak Kepuh","360435");
INSERT INTO kelurahan VALUES("3604352005","Kencana Harapan","360435");
INSERT INTO kelurahan VALUES("3604352006","Pegandikan (Pegantikan)","360435");
INSERT INTO kelurahan VALUES("3604352007","Purwadadi","360435");
INSERT INTO kelurahan VALUES("3604352008","Bolang","360435");
INSERT INTO kelurahan VALUES("3604352009","Tirem","360435");
INSERT INTO kelurahan VALUES("3604352010","Kebonratu","360435");
INSERT INTO kelurahan VALUES("3671011001","Sukarasa","367101");
INSERT INTO kelurahan VALUES("3671011002","Sukaasih (Suka Asih)","367101");
INSERT INTO kelurahan VALUES("3671011003","Tanah Tinggi","367101");
INSERT INTO kelurahan VALUES("3671011004","Buaran Indah","367101");
INSERT INTO kelurahan VALUES("3671011005","Cikokol","367101");
INSERT INTO kelurahan VALUES("3671011006","Kelapa Indah","367101");
INSERT INTO kelurahan VALUES("3671011007","Sukasari","367101");
INSERT INTO kelurahan VALUES("3671011008","Babakan","367101");
INSERT INTO kelurahan VALUES("3671021001","Keroncong","367102");
INSERT INTO kelurahan VALUES("3671021002","Jatake","367102");
INSERT INTO kelurahan VALUES("3671021003","Pasir Jaya","367102");
INSERT INTO kelurahan VALUES("3671021004","Gandasari","367102");
INSERT INTO kelurahan VALUES("3671021005","Manis Jaya","367102");
INSERT INTO kelurahan VALUES("3671021006","Alam Jaya","367102");
INSERT INTO kelurahan VALUES("3671031001","Batuceper (Batu Ceper)","367103");
INSERT INTO kelurahan VALUES("3671031002","Batujaya (Batu Jaya)","367103");
INSERT INTO kelurahan VALUES("3671031003","Poris Gaga","367103");
INSERT INTO kelurahan VALUES("3671031004","Poris Gaga Baru","367103");
INSERT INTO kelurahan VALUES("3671031005","Kebon Besar","367103");
INSERT INTO kelurahan VALUES("3671031006","Batusari (Batu Sari)","367103");
INSERT INTO kelurahan VALUES("3671031007","Poris Jaya","367103");
INSERT INTO kelurahan VALUES("3671041001","Belendung","367104");
INSERT INTO kelurahan VALUES("3671041002","Jurumudi","367104");
INSERT INTO kelurahan VALUES("3671041003","Benda","367104");
INSERT INTO kelurahan VALUES("3671041004","Pajang","367104");
INSERT INTO kelurahan VALUES("3671041005","Jurumudi Baru","367104");
INSERT INTO kelurahan VALUES("3671051001","Cipondoh","367105");
INSERT INTO kelurahan VALUES("3671051002","Cipondoh Makmur","367105");
INSERT INTO kelurahan VALUES("3671051003","Cipondoh Indah","367105");
INSERT INTO kelurahan VALUES("3671051004","Gondrong","367105");
INSERT INTO kelurahan VALUES("3671051005","Kenanga","367105");
INSERT INTO kelurahan VALUES("3671051006","Petir","367105");
INSERT INTO kelurahan VALUES("3671051007","Ketapang","367105");
INSERT INTO kelurahan VALUES("3671051008","Poris Plawad","367105");
INSERT INTO kelurahan VALUES("3671051009","Poris Plawad Utara","367105");
INSERT INTO kelurahan VALUES("3671051010","Poris Plawad Indah","367105");
INSERT INTO kelurahan VALUES("3671061001","Paninggilan","367106");
INSERT INTO kelurahan VALUES("3671061002","Sudimara Barat","367106");
INSERT INTO kelurahan VALUES("3671061003","Sudimara Timur","367106");
INSERT INTO kelurahan VALUES("3671061004","Tajur","367106");
INSERT INTO kelurahan VALUES("3671061005","Parung Serab","367106");
INSERT INTO kelurahan VALUES("3671061006","Sudimara Jaya","367106");
INSERT INTO kelurahan VALUES("3671061007","Sudimara Selatan","367106");
INSERT INTO kelurahan VALUES("3671061008","Paninggilan Utara","367106");
INSERT INTO kelurahan VALUES("3671071001","Karawaci","367107");
INSERT INTO kelurahan VALUES("3671071002","Bojong Jaya","367107");
INSERT INTO kelurahan VALUES("3671071003","Karawaci Baru","367107");
INSERT INTO kelurahan VALUES("3671071004","Nusa Jaya","367107");
INSERT INTO kelurahan VALUES("3671071005","Cimone","367107");
INSERT INTO kelurahan VALUES("3671071006","Cimone Jaya","367107");
INSERT INTO kelurahan VALUES("3671071007","Pabuaran","367107");
INSERT INTO kelurahan VALUES("3671071008","Sumur Pancing (Pacing)","367107");
INSERT INTO kelurahan VALUES("3671071009","Bugel","367107");
INSERT INTO kelurahan VALUES("3671071010","Margasari (Marga Sari)","367107");
INSERT INTO kelurahan VALUES("3671071011","Pabuaran Tumpeng","367107");
INSERT INTO kelurahan VALUES("3671071012","Nambo Jaya","367107");
INSERT INTO kelurahan VALUES("3671071013","Gerendeng","367107");
INSERT INTO kelurahan VALUES("3671071014","Sukajadi (Suka Jadi)","367107");
INSERT INTO kelurahan VALUES("3671071015","Pasar Baru","367107");
INSERT INTO kelurahan VALUES("3671071016","Koang Jaya","367107");
INSERT INTO kelurahan VALUES("3671081001","Periuk","367108");
INSERT INTO kelurahan VALUES("3671081002","Gembor","367108");
INSERT INTO kelurahan VALUES("3671081003","Gebang Raya","367108");
INSERT INTO kelurahan VALUES("3671081004","Sangiang Jaya","367108");
INSERT INTO kelurahan VALUES("3671081005","Periuk Jaya","367108");
INSERT INTO kelurahan VALUES("3671091001","Cibodas","367109");
INSERT INTO kelurahan VALUES("3671091002","Cibodasari (Cibodas Sari)","367109");
INSERT INTO kelurahan VALUES("3671091003","Cibodas Baru","367109");
INSERT INTO kelurahan VALUES("3671091004","Panunggangan Barat","367109");
INSERT INTO kelurahan VALUES("3671091005","Uwung Jaya","367109");
INSERT INTO kelurahan VALUES("3671091006","Jatiuwung","367109");
INSERT INTO kelurahan VALUES("3671101001","Neglasari","367110");
INSERT INTO kelurahan VALUES("3671101002","Karang Sari","367110");
INSERT INTO kelurahan VALUES("3671101003","Selapajang Jaya","367110");
INSERT INTO kelurahan VALUES("3671101004","Kedaung Wetan","367110");
INSERT INTO kelurahan VALUES("3671101005","Mekarsari (Mekar Sari)","367110");
INSERT INTO kelurahan VALUES("3671101006","Karang Anyar","367110");
INSERT INTO kelurahan VALUES("3671101007","Kedaung Baru","367110");
INSERT INTO kelurahan VALUES("3671111001","Pinang","367111");
INSERT INTO kelurahan VALUES("3671111002","Sudimara Pinang","367111");
INSERT INTO kelurahan VALUES("3671111003","Nerogtog","367111");
INSERT INTO kelurahan VALUES("3671111004","Kunciran","367111");
INSERT INTO kelurahan VALUES("3671111005","Kunciran Indah","367111");
INSERT INTO kelurahan VALUES("3671111006","Kunciran Jaya","367111");
INSERT INTO kelurahan VALUES("3671111007","Cipete","367111");
INSERT INTO kelurahan VALUES("3671111008","Pakojan","367111");
INSERT INTO kelurahan VALUES("3671111009","Panunggangan","367111");
INSERT INTO kelurahan VALUES("3671111010","Panunggangan Utara","367111");
INSERT INTO kelurahan VALUES("3671111011","Panunggangan Timur","367111");
INSERT INTO kelurahan VALUES("3671121001","Karang Tengah","367112");
INSERT INTO kelurahan VALUES("3671121002","Karang Mulya","367112");
INSERT INTO kelurahan VALUES("3671121003","Pondok Bahar","367112");
INSERT INTO kelurahan VALUES("3671121004","Pondok Pucung","367112");
INSERT INTO kelurahan VALUES("3671121005","Karang Timur","367112");
INSERT INTO kelurahan VALUES("3671121006","Padurenan (Pedurenan)","367112");
INSERT INTO kelurahan VALUES("3671121007","Parung Jaya","367112");
INSERT INTO kelurahan VALUES("3671131001","Larangan Utara","367113");
INSERT INTO kelurahan VALUES("3671131002","Larangan Selatan","367113");
INSERT INTO kelurahan VALUES("3671131003","Cipadu","367113");
INSERT INTO kelurahan VALUES("3671131004","Kreo","367113");
INSERT INTO kelurahan VALUES("3671131005","Larangan Indah","367113");
INSERT INTO kelurahan VALUES("3671131006","Gaga","367113");
INSERT INTO kelurahan VALUES("3671131007","Cipadu Jaya","367113");
INSERT INTO kelurahan VALUES("3671131008","Kreo Selatan","367113");
INSERT INTO kelurahan VALUES("3672011001","Cibeber","367201");
INSERT INTO kelurahan VALUES("3672011002","Kedaleman","367201");
INSERT INTO kelurahan VALUES("3672011003","Bulakan","367201");
INSERT INTO kelurahan VALUES("3672011004","Cikerai","367201");
INSERT INTO kelurahan VALUES("3672011005","Karang Asem (Karangasem)","367201");
INSERT INTO kelurahan VALUES("3672011006","Kalitimbang","367201");
INSERT INTO kelurahan VALUES("3672021001","Bagendung","367202");
INSERT INTO kelurahan VALUES("3672021002","Ciwedus","367202");
INSERT INTO kelurahan VALUES("3672021003","Bendungan","367202");
INSERT INTO kelurahan VALUES("3672021004","Ketileng","367202");
INSERT INTO kelurahan VALUES("3672021005","Ciwaduk","367202");
INSERT INTO kelurahan VALUES("3672031001","Tamansari","367203");
INSERT INTO kelurahan VALUES("3672031002","Lebakgede (Lebak Gede)","367203");
INSERT INTO kelurahan VALUES("3672031003","Mekarsari","367203");
INSERT INTO kelurahan VALUES("3672031004","Suralaya","367203");
INSERT INTO kelurahan VALUES("3672041001","Banjar Negara","367204");
INSERT INTO kelurahan VALUES("3672041002","Tegal Ratu (Tegalratu)","367204");
INSERT INTO kelurahan VALUES("3672041003","Kubangsari","367204");
INSERT INTO kelurahan VALUES("3672041004","Gunung Sugih (Gunungsugih)","367204");
INSERT INTO kelurahan VALUES("3672041005","Kepuh","367204");
INSERT INTO kelurahan VALUES("3672041006","Randakari","367204");
INSERT INTO kelurahan VALUES("3672051001","Sukmajaya","367205");
INSERT INTO kelurahan VALUES("3672051002","Jombang Wetan","367205");
INSERT INTO kelurahan VALUES("3672051003","Masigit","367205");
INSERT INTO kelurahan VALUES("3672051004","Panggung Rawi","367205");
INSERT INTO kelurahan VALUES("3672051005","Gedong Dalem","367205");
INSERT INTO kelurahan VALUES("3672061001","Kotasari","367206");
INSERT INTO kelurahan VALUES("3672061002","Grogol (Gerogol)","367206");
INSERT INTO kelurahan VALUES("3672061003","Rawa Arum","367206");
INSERT INTO kelurahan VALUES("3672061004","Gerem","367206");
INSERT INTO kelurahan VALUES("3672071001","Ramanuju","367207");
INSERT INTO kelurahan VALUES("3672071002","Kotabumi","367207");
INSERT INTO kelurahan VALUES("3672071003","Kebon Dalem (Kebondalem)","367207");
INSERT INTO kelurahan VALUES("3672071004","Purwakarta","367207");
INSERT INTO kelurahan VALUES("3672071005","Tegal Bunder","367207");
INSERT INTO kelurahan VALUES("3672071006","Pabean","367207");
INSERT INTO kelurahan VALUES("3672081001","Warnasari","367208");
INSERT INTO kelurahan VALUES("3672081002","Dringo (Deringo)","367208");
INSERT INTO kelurahan VALUES("3672081003","Lebak Denok (Lebakdenok)","367208");
INSERT INTO kelurahan VALUES("3672081004","Taman Baru (Tamanbaru)","367208");
INSERT INTO kelurahan VALUES("3672081005","Kebonsari","367208");
INSERT INTO kelurahan VALUES("3672081006","Samangraya","367208");
INSERT INTO kelurahan VALUES("3672081007","Citangkil","367208");
INSERT INTO kelurahan VALUES("3673011001","Serang","367301");
INSERT INTO kelurahan VALUES("3673011002","Cipare","367301");
INSERT INTO kelurahan VALUES("3673011003","Sumur Pecung (Sumurpecung)","367301");
INSERT INTO kelurahan VALUES("3673011004","Kota Baru (Kotabaru)","367301");
INSERT INTO kelurahan VALUES("3673011005","Lopang","367301");
INSERT INTO kelurahan VALUES("3673011006","Cimuncang","367301");
INSERT INTO kelurahan VALUES("3673011007","Unyur","367301");
INSERT INTO kelurahan VALUES("3673011008","Sukawana","367301");
INSERT INTO kelurahan VALUES("3673011009","Lontarbaru","367301");
INSERT INTO kelurahan VALUES("3673011010","Kaligandu","367301");
INSERT INTO kelurahan VALUES("3673011011","Terondol","367301");
INSERT INTO kelurahan VALUES("3673011012","Kagungan","367301");
INSERT INTO kelurahan VALUES("3673021001","Kasemen","367302");
INSERT INTO kelurahan VALUES("3673021002","Mesjid Priyayi","367302");
INSERT INTO kelurahan VALUES("3673021003","Terumbu","367302");
INSERT INTO kelurahan VALUES("3673021004","Warung Jaud","367302");
INSERT INTO kelurahan VALUES("3673021006","Bendung","367302");
INSERT INTO kelurahan VALUES("3673021007","Banten","367302");
INSERT INTO kelurahan VALUES("3673021008","Sawah Luhur","367302");
INSERT INTO kelurahan VALUES("3673021009","Kilasah","367302");
INSERT INTO kelurahan VALUES("3673021010","Kasunyatan","367302");
INSERT INTO kelurahan VALUES("3673021011","Margaluyu","367302");
INSERT INTO kelurahan VALUES("3673031001","Walantaka","367303");
INSERT INTO kelurahan VALUES("3673031002","Cigoong","367303");
INSERT INTO kelurahan VALUES("3673031003","Nyapah","367303");
INSERT INTO kelurahan VALUES("3673031004","Pangampelan (Pengampelan)","367303");
INSERT INTO kelurahan VALUES("3673031006","Kiara","367303");
INSERT INTO kelurahan VALUES("3673031007","Pager Agung (Pageragung)","367303");
INSERT INTO kelurahan VALUES("3673031008","Kalodoran / Kalodran","367303");
INSERT INTO kelurahan VALUES("3673031009","Kapuren (Kepuren)","367303");
INSERT INTO kelurahan VALUES("3673031010","Teritih","367303");
INSERT INTO kelurahan VALUES("3673031011","Pabuaran","367303");
INSERT INTO kelurahan VALUES("3673031012","Pasuluhan","367303");
INSERT INTO kelurahan VALUES("3673031013","Tegalsari","367303");
INSERT INTO kelurahan VALUES("3673031014","Pipitan","367303");
INSERT INTO kelurahan VALUES("3673031016","Lebakwangi","367303");
INSERT INTO kelurahan VALUES("3673041001","Curug","367304");
INSERT INTO kelurahan VALUES("3673041002","Tinggar","367304");
INSERT INTO kelurahan VALUES("3673041003","Kemanisan (Kamanisan)","367304");
INSERT INTO kelurahan VALUES("3673041004","Cipete","367304");
INSERT INTO kelurahan VALUES("3673041005","Cilaku","367304");
INSERT INTO kelurahan VALUES("3673041006","Pancalaksana","367304");
INSERT INTO kelurahan VALUES("3673041007","Sukawana","367304");
INSERT INTO kelurahan VALUES("3673041008","Sukalaksana","367304");
INSERT INTO kelurahan VALUES("3673041009","Curug Manis (Curugmanis)","367304");
INSERT INTO kelurahan VALUES("3673041010","Sukajaya","367304");
INSERT INTO kelurahan VALUES("3673051001","Cipocok Jaya","367305");
INSERT INTO kelurahan VALUES("3673051002","Karundang","367305");
INSERT INTO kelurahan VALUES("3673051003","Panancangan","367305");
INSERT INTO kelurahan VALUES("3673051004","Banjar Agung (Banjaragung)","367305");
INSERT INTO kelurahan VALUES("3673051005","Banjarsari","367305");
INSERT INTO kelurahan VALUES("3673051006","Tembong","367305");
INSERT INTO kelurahan VALUES("3673051007","Dalung","367305");
INSERT INTO kelurahan VALUES("3673051008","Gelam","367305");
INSERT INTO kelurahan VALUES("3673061001","Taktakan","367306");
INSERT INTO kelurahan VALUES("3673061002","Sayar","367306");
INSERT INTO kelurahan VALUES("3673061003","Pancur","367306");
INSERT INTO kelurahan VALUES("3673061004","Kuranji","367306");
INSERT INTO kelurahan VALUES("3673061005","Kalanganyar (Kalang Anyar)","367306");
INSERT INTO kelurahan VALUES("3673061006","Cilowong","367306");
INSERT INTO kelurahan VALUES("3673061007","Panggungjati","367306");
INSERT INTO kelurahan VALUES("3673061008","Drangong","367306");
INSERT INTO kelurahan VALUES("3673061009","Umbul Tengah","367306");
INSERT INTO kelurahan VALUES("3673061010","Sepang","367306");
INSERT INTO kelurahan VALUES("3673061011","Lialang","367306");
INSERT INTO kelurahan VALUES("3673061012","Taman Baru (Tamanbaru)","367306");
INSERT INTO kelurahan VALUES("3674011001","Ciater","367401");
INSERT INTO kelurahan VALUES("3674011002","Rawabuntu (Rawa Buntu)","367401");
INSERT INTO kelurahan VALUES("3674011003","Rawa Mekarjaya (Rawa Mekar Jaya)","367401");
INSERT INTO kelurahan VALUES("3674011004","Lengkong Gudang","367401");
INSERT INTO kelurahan VALUES("3674011005","Lengkong Wetan","367401");
INSERT INTO kelurahan VALUES("3674011006","Buaran","367401");
INSERT INTO kelurahan VALUES("3674011007","Lengkong Gudang Timur","367401");
INSERT INTO kelurahan VALUES("3674011008","Cilenggang","367401");
INSERT INTO kelurahan VALUES("3674011009","Serpong","367401");
INSERT INTO kelurahan VALUES("3674021001","Pakulonan","367402");
INSERT INTO kelurahan VALUES("3674021002","Pakualam","367402");
INSERT INTO kelurahan VALUES("3674021003","Pakujaya (Paku Jaya)","367402");
INSERT INTO kelurahan VALUES("3674021004","Pondok Jagung","367402");
INSERT INTO kelurahan VALUES("3674021005","Pondok Jagung Timur","367402");
INSERT INTO kelurahan VALUES("3674021006","Jelupang","367402");
INSERT INTO kelurahan VALUES("3674021007","Lengkong Karya","367402");
INSERT INTO kelurahan VALUES("3674031001","Pondok Betung","367403");
INSERT INTO kelurahan VALUES("3674031002","Pondok Pucung","367403");
INSERT INTO kelurahan VALUES("3674031003","Pondok Karya","367403");
INSERT INTO kelurahan VALUES("3674031004","Pondok Jaya","367403");
INSERT INTO kelurahan VALUES("3674031005","Pondok Aren","367403");
INSERT INTO kelurahan VALUES("3674031006","Pondok Kacang Barat","367403");
INSERT INTO kelurahan VALUES("3674031007","Pondok Kacang Timur","367403");
INSERT INTO kelurahan VALUES("3674031008","Parigi (Perigi Lama)","367403");
INSERT INTO kelurahan VALUES("3674031009","Parigi Baru (Perigi Baru)","367403");
INSERT INTO kelurahan VALUES("3674031010","Jurangmangu Barat (Jurang Mangu Barat)","367403");
INSERT INTO kelurahan VALUES("3674031011","Jurangmangu Timur (Jurang Mangu Timur)","367403");
INSERT INTO kelurahan VALUES("3674041001","Sawah Baru","367404");
INSERT INTO kelurahan VALUES("3674041002","Sarua (Serua)","367404");
INSERT INTO kelurahan VALUES("3674041003","Ciputat","367404");
INSERT INTO kelurahan VALUES("3674041004","Sawah Lama","367404");
INSERT INTO kelurahan VALUES("3674041005","Serua Indah (Sarua Indah)","367404");
INSERT INTO kelurahan VALUES("3674041006","Jombang","367404");
INSERT INTO kelurahan VALUES("3674041007","Cipayung","367404");
INSERT INTO kelurahan VALUES("3674051001","Cempaka Putih","367405");
INSERT INTO kelurahan VALUES("3674051002","Pondok Ranji","367405");
INSERT INTO kelurahan VALUES("3674051003","Pisangan","367405");
INSERT INTO kelurahan VALUES("3674051004","Cireundeu","367405");
INSERT INTO kelurahan VALUES("3674051005","Rempoa","367405");
INSERT INTO kelurahan VALUES("3674051006","Rengas","367405");
INSERT INTO kelurahan VALUES("3674061001","Pamulang Barat","367406");
INSERT INTO kelurahan VALUES("3674061002","Benda Baru","367406");
INSERT INTO kelurahan VALUES("3674061003","Pondok Benda","367406");
INSERT INTO kelurahan VALUES("3674061004","Pondok Cabe Udik","367406");
INSERT INTO kelurahan VALUES("3674061005","Pondok Cabe Ilir","367406");
INSERT INTO kelurahan VALUES("3674061006","Kedaung","367406");
INSERT INTO kelurahan VALUES("3674061007","Bambuapus (Bambu Apus)","367406");
INSERT INTO kelurahan VALUES("3674061008","Pamulang Timur","367406");
INSERT INTO kelurahan VALUES("3674071001","Muncul","367407");
INSERT INTO kelurahan VALUES("3674071002","Setu","367407");
INSERT INTO kelurahan VALUES("3674071003","Keranggan (Kranggan)","367407");
INSERT INTO kelurahan VALUES("3674071004","Kademangan","367407");
INSERT INTO kelurahan VALUES("3674071005","Babakan","367407");
INSERT INTO kelurahan VALUES("3674071006","Bakti Jaya","367407");



CREATE TABLE `kesehatan_keluarga` (
  `id_kesehatan_keluarga` int(11) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `data_kesehatan_keluarga` text,
  PRIMARY KEY (`id_kesehatan_keluarga`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO kesehatan_keluarga VALUES("1","1","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Hubungan Keluarga (Ayah/Ibu/Kakek/Nenek/Lain-lain)</center></th>
		                  <th style="background-color: #bac7a7"><center>Penyakit Khusus/Psikologis (Tunanetra/Tunagrahita/Autis/Lain-lain)</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
                    <td>-</td>  
                    <td>-</td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
	                </tbody>
              </table>     
                        ");
INSERT INTO kesehatan_keluarga VALUES("2","2","            
            <table border="1" width="100%" style="text-align: center;">
	                <thead>
		                <tr>
		                  <th style="background-color: #bac7a7"><center>Hubungan Keluarga (Ayah/Ibu/Kakek/Nenek/Lain-lain)</center></th>
		                  <th style="background-color: #bac7a7"><center>Penyakit Khusus/Psikologis (Tunanetra/Tunagrahita/Autis/Lain-lain)</center></th>
		                </tr>
	                </thead>
	                <tbody>
		               <tr>
                    <td>-</td>  
                    <td>-</td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
                   <tr>
                    <td></td>  
                    <td></td>
                   </tr>
	                </tbody>
              </table>     
                        ");



CREATE TABLE `komplikasi` (
  `id_komplikasi` int(3) NOT NULL AUTO_INCREMENT,
  `komplikasi` varchar(25) NOT NULL,
  PRIMARY KEY (`id_komplikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO komplikasi VALUES("1","Pendarahan");
INSERT INTO komplikasi VALUES("2","Kejang");
INSERT INTO komplikasi VALUES("3","Tekanan darah tinggi");
INSERT INTO komplikasi VALUES("4","Tidak Ada");



CREATE TABLE `konbayi` (
  `id_konbayi` int(3) NOT NULL AUTO_INCREMENT,
  `konbayi` varchar(20) NOT NULL,
  PRIMARY KEY (`id_konbayi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO konbayi VALUES("1","Menangis");
INSERT INTO konbayi VALUES("2","Lambat menangis");
INSERT INTO konbayi VALUES("3","Tidak menangis");



CREATE TABLE `kurikulum` (
  `id_kurikulum` int(5) NOT NULL AUTO_INCREMENT,
  `kompetensi_inti` varchar(30) NOT NULL,
  `kompetensi_dasar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_kurikulum`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO kurikulum VALUES("3","KI. 1 Religius","KI. 1.2 Melaksanakan ajaran agama");
INSERT INTO kurikulum VALUES("4","KI. 1 Religius","KI. 1.3 Nilai-nilai agama");
INSERT INTO kurikulum VALUES("5","KI. 2 Sosial","KI. 2.1 Berperilaku baik (diri sendiri)");
INSERT INTO kurikulum VALUES("6","KI. 2 Sosial","KI. 2.2 Memiliki kemampuan menyesuaikan diri terhadap lingkungan");
INSERT INTO kurikulum VALUES("7","KI. 2 Sosial","KI. 2.3 Dapat berinteraksi sosial");
INSERT INTO kurikulum VALUES("8","KI. 3 Kognitif","KI. 3.1 Mengenal diri, keluarga, teman, dan lingkungan");
INSERT INTO kurikulum VALUES("9","KI. 3 Kognitif","KI. 3.2 Pre Akademik");
INSERT INTO kurikulum VALUES("10","KI. 3 Kognitif","KI. 3.3 Akademik");
INSERT INTO kurikulum VALUES("11","KI. 3 Kognitif","KI. 3.4 Kemampuan masuk sekolah");
INSERT INTO kurikulum VALUES("12","KI. 4 Keterampilan","KI. 4.1 Memiliki keterampilan bina diri");
INSERT INTO kurikulum VALUES("13","KI. 4 Keterampilan","KI.4.2  Menyajikan berbagai karya dalam bentuk gambar, bercerita, bernyanyi, gerak tubuh dan lain-lain dengan menggunakan berbagai media.");
INSERT INTO kurikulum VALUES("14","KP. 5 Fisik","KP. 5.1 Motorik halus");
INSERT INTO kurikulum VALUES("15","KP. 5 Fisik","KP. 5.2 Motorik kasar");
INSERT INTO kurikulum VALUES("16","KP. 5 Fisik","KP. 5.3 Oral");
INSERT INTO kurikulum VALUES("19","KI. 1 Religius","KI. 1.1 Mengenal Allah SWT melalui ciptaan-Nya");



CREATE TABLE `laporan_kegiatan` (
  `id_laporan_kegiatan` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(20) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `kategori` enum('Jumat','Agenda','','') NOT NULL,
  PRIMARY KEY (`id_laporan_kegiatan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO laporan_kegiatan VALUES("1","01.2021.2","2020-02-12","Berenang","Berenang di Tazora","Agenda");



CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `uri` varchar(200) DEFAULT NULL,
  `id_menu_induk` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO menu VALUES("1","Data Master","#","0","1","Y");
INSERT INTO menu VALUES("2","Pendaftaran","#","0","2","Y");
INSERT INTO menu VALUES("3","Manajemen User","#","0","3","Y");
INSERT INTO menu VALUES("4","Provinsi ","/master/provinsi ","1","4","Y");
INSERT INTO menu VALUES("5","Kabupaten/Kota","/master/kabkot","1","5","Y");
INSERT INTO menu VALUES("6","Kecamatan","/master/kecamatan","1","6","Y");
INSERT INTO menu VALUES("7","Kelurahan","/master/kelurahan","1","7","Y");
INSERT INTO menu VALUES("8","Agama","/master/agama","1","8","Y");
INSERT INTO menu VALUES("9","Pendidikan","/master/pendidikan","1","9","Y");
INSERT INTO menu VALUES("10","Golongan Darah","/master/goldarah","1","10","Y");
INSERT INTO menu VALUES("11","Pekerjaan ","/master/pekerjaan","1","11","Y");
INSERT INTO menu VALUES("12","Hubungan","/master/hubungan","1","12","Y");
INSERT INTO menu VALUES("13","Biodata","/master/biodata","1","13","Y");
INSERT INTO menu VALUES("14","KB","/master/kb","1","14","Y");
INSERT INTO menu VALUES("15","Kebiasaan Orang Tua","/master/kebortu","1","15","Y");
INSERT INTO menu VALUES("16","Kelainan","/master/kelainan","1","16","Y");
INSERT INTO menu VALUES("17","Komplikasi","/master/komplikasi","1","17","Y");
INSERT INTO menu VALUES("18","Asupan","/master/asupan","1","18","Y");
INSERT INTO menu VALUES("19","Kondisi Bayi","/master/konbayi","1","19","Y");
INSERT INTO menu VALUES("20","Pemeriksa","/master/pemeriksa","1","20","Y");
INSERT INTO menu VALUES("21","Penolong ","/master/penolong","1","21","Y");
INSERT INTO menu VALUES("22","Penyakit","/master/penyakit","1","22","Y");
INSERT INTO menu VALUES("23","Persalinan","/master/persalinan","1","23","Y");
INSERT INTO menu VALUES("24","Terapi","/master/terapi","1","24","Y");
INSERT INTO menu VALUES("25","Formulir Pendaftaran Anak","/pendaftaran/pendaftaran","2","25","Y");
INSERT INTO menu VALUES("26","Manajemen Menu","/back_office/manajemen_menu","3","26","Y");
INSERT INTO menu VALUES("27","Pengguna Grup","/back_office/pengguna_grup","3","27","Y");
INSERT INTO menu VALUES("28","Pengguna","/back_office/pengguna","3","28","Y");
INSERT INTO menu VALUES("29","Backup Database","/back_office/backup_database","3","29","Y");
INSERT INTO menu VALUES("30","Formulir Biodata","/master/biodata","1","30","Y");
INSERT INTO menu VALUES("31","imunisasi","/master/imunisasi","1","31","Y");
INSERT INTO menu VALUES("34","Susun PPI Siswa","/kepsek/observasi_kepsek","32","34","Y");
INSERT INTO menu VALUES("32","Siswa","#","0","32","Y");
INSERT INTO menu VALUES("33","Pilih Tenaga Ahli Siswa","/kepsek/pilih_tenaga_ahli","32","33","Y");
INSERT INTO menu VALUES("35","Pilih Kelas Siswa","/kepsek/penerimaan_siswa","32","35","Y");
INSERT INTO menu VALUES("36","Data Siswa","/kepsek/data_siswa","32","36","Y");
INSERT INTO menu VALUES("38","Biodata","/master/biodata","2","38","Y");
INSERT INTO menu VALUES("39","Formulir Pendaftaran Anak","/pendaftaran/pendaftaran","2","39","Y");
INSERT INTO menu VALUES("40","Observasi","#","0","40","Y");
INSERT INTO menu VALUES("41","Observasi","/tenaga_ahli/observasi_tenaga_ahli/observasi","40","41","Y");
INSERT INTO menu VALUES("42","Histori Observasi","/tenaga_ahli/observasi_tenaga_ahli/histori","40","42","Y");
INSERT INTO menu VALUES("43","Pendaftar baru","/back_office/pengguna/pendaftar_baru","3","43","Y");



CREATE TABLE `menu_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `id_pengguna_grup` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

INSERT INTO menu_akses VALUES("1","1","11");
INSERT INTO menu_akses VALUES("2","2","11");
INSERT INTO menu_akses VALUES("3","3","11");
INSERT INTO menu_akses VALUES("4","4","11");
INSERT INTO menu_akses VALUES("5","5","11");
INSERT INTO menu_akses VALUES("6","6","11");
INSERT INTO menu_akses VALUES("7","7","11");
INSERT INTO menu_akses VALUES("8","8","11");
INSERT INTO menu_akses VALUES("9","9","11");
INSERT INTO menu_akses VALUES("10","10","11");
INSERT INTO menu_akses VALUES("11","11","11");
INSERT INTO menu_akses VALUES("12","12","11");
INSERT INTO menu_akses VALUES("14","14","11");
INSERT INTO menu_akses VALUES("15","15","11");
INSERT INTO menu_akses VALUES("16","16","11");
INSERT INTO menu_akses VALUES("17","17","11");
INSERT INTO menu_akses VALUES("18","18","11");
INSERT INTO menu_akses VALUES("19","19","11");
INSERT INTO menu_akses VALUES("20","20","11");
INSERT INTO menu_akses VALUES("21","21","11");
INSERT INTO menu_akses VALUES("22","22","11");
INSERT INTO menu_akses VALUES("23","23","11");
INSERT INTO menu_akses VALUES("24","24","11");
INSERT INTO menu_akses VALUES("26","26","11");
INSERT INTO menu_akses VALUES("27","27","11");
INSERT INTO menu_akses VALUES("28","28","11");
INSERT INTO menu_akses VALUES("29","1","22");
INSERT INTO menu_akses VALUES("31","4","22");
INSERT INTO menu_akses VALUES("32","5","22");
INSERT INTO menu_akses VALUES("33","6","22");
INSERT INTO menu_akses VALUES("34","7","22");
INSERT INTO menu_akses VALUES("35","8","22");
INSERT INTO menu_akses VALUES("36","9","22");
INSERT INTO menu_akses VALUES("37","10","22");
INSERT INTO menu_akses VALUES("38","11","22");
INSERT INTO menu_akses VALUES("39","12","22");
INSERT INTO menu_akses VALUES("40","13","22");
INSERT INTO menu_akses VALUES("41","14","22");
INSERT INTO menu_akses VALUES("42","15","22");
INSERT INTO menu_akses VALUES("43","16","22");
INSERT INTO menu_akses VALUES("44","17","22");
INSERT INTO menu_akses VALUES("45","18","22");
INSERT INTO menu_akses VALUES("46","19","22");
INSERT INTO menu_akses VALUES("47","20","22");
INSERT INTO menu_akses VALUES("48","21","22");
INSERT INTO menu_akses VALUES("49","22","22");
INSERT INTO menu_akses VALUES("50","23","22");
INSERT INTO menu_akses VALUES("51","24","22");
INSERT INTO menu_akses VALUES("142","29","11");
INSERT INTO menu_akses VALUES("143","2","66");
INSERT INTO menu_akses VALUES("145","30","66");
INSERT INTO menu_akses VALUES("146","31","11");
INSERT INTO menu_akses VALUES("147","32","11");
INSERT INTO menu_akses VALUES("148","33","11");
INSERT INTO menu_akses VALUES("149","34","11");
INSERT INTO menu_akses VALUES("150","35","11");
INSERT INTO menu_akses VALUES("151","36","11");
INSERT INTO menu_akses VALUES("154","38","66");
INSERT INTO menu_akses VALUES("155","39","66");
INSERT INTO menu_akses VALUES("156","13","11");
INSERT INTO menu_akses VALUES("157","25","11");
INSERT INTO menu_akses VALUES("158","40","55");
INSERT INTO menu_akses VALUES("159","41","55");
INSERT INTO menu_akses VALUES("160","42","55");
INSERT INTO menu_akses VALUES("161","43","11");



CREATE TABLE `observasi_kepsek` (
  `id_observasi_kepsek` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(20) NOT NULL,
  `kurikulum_id` int(5) NOT NULL,
  `kemampuan_saat_observasi` text NOT NULL,
  `program` text NOT NULL,
  `tujuan` text NOT NULL,
  `ket` enum('Materi baru','Masih berlanjut','Selesai') NOT NULL,
  `kkm` varchar(3) NOT NULL,
  PRIMARY KEY (`id_observasi_kepsek`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO observasi_kepsek VALUES("1","01.2021.2","19","Baik","Menyebutkan beberapa ciptaan Allah SWT","Wawasan lebih luas","Masih berlanjut","A");



CREATE TABLE `observasi_tenaga_ahli` (
  `id_observasi_tenaga_ahli` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `sdm_id` int(11) NOT NULL,
  `usia_anak` char(3) NOT NULL,
  `tgl_observasi` date DEFAULT NULL,
  `tgl_laporan_observasi` date DEFAULT NULL,
  `judul_laporan_observasi` varchar(50) DEFAULT NULL,
  `data_observasi_tenaga_ahli` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_observasi_tenaga_ahli`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `sdm_id` (`sdm_id`),
  CONSTRAINT `observasi_tenaga_ahli_ibfk_1` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`id_pendaftaran`),
  CONSTRAINT `observasi_tenaga_ahli_ibfk_2` FOREIGN KEY (`sdm_id`) REFERENCES `sdm` (`id_sdm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO observasi_tenaga_ahli VALUES("1","1","1","10","2020-02-12","2020-03-01","Laporan Fisiotrapis","2020-03-01_1_observasi_tenaga-ahli.pdf");



CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(3) NOT NULL AUTO_INCREMENT,
  `pekerjaan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

INSERT INTO pekerjaan VALUES("1","Belum/tidak bekerja");
INSERT INTO pekerjaan VALUES("2","Mengurus rumah tangga");
INSERT INTO pekerjaan VALUES("3","Pelajar/mahasiswa");
INSERT INTO pekerjaan VALUES("4","Pensiunan");
INSERT INTO pekerjaan VALUES("5","Pegawai negeri sipil");
INSERT INTO pekerjaan VALUES("6","Tentara nasional indonesia");
INSERT INTO pekerjaan VALUES("7","Kepolisian ri");
INSERT INTO pekerjaan VALUES("8","Perdagangan");
INSERT INTO pekerjaan VALUES("9","Petani/pekebun");
INSERT INTO pekerjaan VALUES("10","Peternak");
INSERT INTO pekerjaan VALUES("11","Nelayan/perikanan");
INSERT INTO pekerjaan VALUES("12","Industri");
INSERT INTO pekerjaan VALUES("13","Konstruksi");
INSERT INTO pekerjaan VALUES("14","Transportasi");
INSERT INTO pekerjaan VALUES("15","Karyawan swasta");
INSERT INTO pekerjaan VALUES("16","Karyawan bumn");
INSERT INTO pekerjaan VALUES("17","Karyawan bumd");
INSERT INTO pekerjaan VALUES("18","Karyawan honorer");
INSERT INTO pekerjaan VALUES("19","Buruh harian lepas");
INSERT INTO pekerjaan VALUES("20","Buruh tani/perkebunan");
INSERT INTO pekerjaan VALUES("21","Buruh nelayan/perikanan");
INSERT INTO pekerjaan VALUES("22","Buruh peternakan");
INSERT INTO pekerjaan VALUES("23","Pembantu rumah tangga");
INSERT INTO pekerjaan VALUES("24","Tukang cukur");
INSERT INTO pekerjaan VALUES("25","Tukang listrik");
INSERT INTO pekerjaan VALUES("26","Tukang batu");
INSERT INTO pekerjaan VALUES("27","Tukang kayu");
INSERT INTO pekerjaan VALUES("28","Tukang sol sepatu");
INSERT INTO pekerjaan VALUES("29","Tukang las/pandai besi");
INSERT INTO pekerjaan VALUES("30","Tukang jahit");
INSERT INTO pekerjaan VALUES("31","Tukang gigi");
INSERT INTO pekerjaan VALUES("32","Penata rias");
INSERT INTO pekerjaan VALUES("33","Penata busana");
INSERT INTO pekerjaan VALUES("34","Penata rambut");
INSERT INTO pekerjaan VALUES("35","Mekanik");
INSERT INTO pekerjaan VALUES("36","Seniman");
INSERT INTO pekerjaan VALUES("37","Tabib");
INSERT INTO pekerjaan VALUES("38","Paraji");
INSERT INTO pekerjaan VALUES("39","Perancang busana");
INSERT INTO pekerjaan VALUES("40","Penterjemah");
INSERT INTO pekerjaan VALUES("41","Imam mesjid");
INSERT INTO pekerjaan VALUES("42","Pendeta");
INSERT INTO pekerjaan VALUES("43","Pastor");
INSERT INTO pekerjaan VALUES("44","Wartawan");
INSERT INTO pekerjaan VALUES("45","Ustadz/mubaligh");
INSERT INTO pekerjaan VALUES("46","Juru masak");
INSERT INTO pekerjaan VALUES("47","Promotor acara");
INSERT INTO pekerjaan VALUES("48","Anggota dpr-ri");
INSERT INTO pekerjaan VALUES("49","Anggota dpd");
INSERT INTO pekerjaan VALUES("50","Anggota bpk");
INSERT INTO pekerjaan VALUES("51","Presiden");
INSERT INTO pekerjaan VALUES("52","Wakil presiden");
INSERT INTO pekerjaan VALUES("53","Anggota mahkamah konstitusi");
INSERT INTO pekerjaan VALUES("54","Anggota kabinet/kementerian");
INSERT INTO pekerjaan VALUES("55","Duta besar");
INSERT INTO pekerjaan VALUES("56","Gubernur");
INSERT INTO pekerjaan VALUES("57","Wakil gubernur");
INSERT INTO pekerjaan VALUES("58","Bupati");
INSERT INTO pekerjaan VALUES("59","Wakil bupati");
INSERT INTO pekerjaan VALUES("60","Walikota");
INSERT INTO pekerjaan VALUES("61","Wakil walikota");
INSERT INTO pekerjaan VALUES("62","Anggota dprd provinsi");
INSERT INTO pekerjaan VALUES("63","Anggota dprd kabupaten/kota");
INSERT INTO pekerjaan VALUES("64","Dosen");
INSERT INTO pekerjaan VALUES("65","Guru");
INSERT INTO pekerjaan VALUES("66","Pilot");
INSERT INTO pekerjaan VALUES("67","Pengacara");
INSERT INTO pekerjaan VALUES("68","Notaris");
INSERT INTO pekerjaan VALUES("69","Arsitek");
INSERT INTO pekerjaan VALUES("70","Akuntan");
INSERT INTO pekerjaan VALUES("71","Konsultan");
INSERT INTO pekerjaan VALUES("72","Dokter");
INSERT INTO pekerjaan VALUES("73","Bidan");
INSERT INTO pekerjaan VALUES("74","Perawat");
INSERT INTO pekerjaan VALUES("75","Apoteker");
INSERT INTO pekerjaan VALUES("76","Psikiater/psikolog");
INSERT INTO pekerjaan VALUES("77","Penyiar televisi");
INSERT INTO pekerjaan VALUES("78","Penyiar radio");
INSERT INTO pekerjaan VALUES("79","Pelaut");
INSERT INTO pekerjaan VALUES("80","Peneliti");
INSERT INTO pekerjaan VALUES("81","Sopir");
INSERT INTO pekerjaan VALUES("82","Pialang");
INSERT INTO pekerjaan VALUES("83","Paranormal");
INSERT INTO pekerjaan VALUES("84","Pedagang");
INSERT INTO pekerjaan VALUES("85","Perangkat desa");
INSERT INTO pekerjaan VALUES("86","Kepala desa");
INSERT INTO pekerjaan VALUES("87","Biarawati");
INSERT INTO pekerjaan VALUES("88","Wiraswasta");



CREATE TABLE `pemeriksa` (
  `id_pemeriksa` int(3) NOT NULL AUTO_INCREMENT,
  `pemeriksa` char(15) NOT NULL,
  PRIMARY KEY (`id_pemeriksa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO pemeriksa VALUES("1","Dokter");
INSERT INTO pemeriksa VALUES("2","Bidan");
INSERT INTO pemeriksa VALUES("3","Dukun");
INSERT INTO pemeriksa VALUES("4","Tidak Ada");



CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT,
  `anak_id` char(18) NOT NULL,
  `anak_ke` int(2) NOT NULL,
  `jum_saudara` int(2) NOT NULL,
  `ayah_id` char(18) NOT NULL,
  `ibu_id` char(18) NOT NULL,
  `status_anak` enum('Proses Daftar','Diterima','Tidak Diterima','') NOT NULL,
  `status_ortuwali` varchar(10) NOT NULL,
  `tgl_pendaftaran` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pendaftaran`),
  KEY `anak_id` (`anak_id`),
  KEY `ayah_id` (`ayah_id`),
  KEY `ibu_id` (`ibu_id`),
  CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`anak_id`) REFERENCES `biodata` (`nik`),
  CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`ayah_id`) REFERENCES `biodata` (`nik`),
  CONSTRAINT `pendaftaran_ibfk_3` FOREIGN KEY (`ibu_id`) REFERENCES `biodata` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO pendaftaran VALUES("1","321010113312135167","2","1","321010113312136667","321010113344556785","Diterima","Kandung","02 March 2020");
INSERT INTO pendaftaran VALUES("2","321234567898765678","1","1","321010113312136667","321010113344556785","Proses Daftar","Kandung","02 March 2020");



CREATE TABLE `pendidikan` (
  `id_pendidikan` int(2) NOT NULL AUTO_INCREMENT,
  `pendidikan` char(7) NOT NULL,
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO pendidikan VALUES("1","SD");
INSERT INTO pendidikan VALUES("2","SMP");
INSERT INTO pendidikan VALUES("3","SMA/SMK");
INSERT INTO pendidikan VALUES("4","D1");
INSERT INTO pendidikan VALUES("5","D2");
INSERT INTO pendidikan VALUES("6","D3");
INSERT INTO pendidikan VALUES("7","D4/S1");
INSERT INTO pendidikan VALUES("8","S2");
INSERT INTO pendidikan VALUES("9","S3");



CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna_grup` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

INSERT INTO pengguna VALUES("113","66","nurulfatimah","344c999a63cd55b3035cbf76c2691f88","Nurul Fatimah","","N");
INSERT INTO pengguna VALUES("114","55","sherly","6cdf6219c2633ddafade9d9278868153","Sherly Astri","","N");
INSERT INTO pengguna VALUES("111","22","admin","21232f297a57a5a743894a0e4a801fc3","Admin","admin.jpg","N");
INSERT INTO pengguna VALUES("112","33","kepsek","21232f297a57a5a743894a0e4a801fc3","Kepala Sekolah","kepsek.jpg","N");
INSERT INTO pengguna VALUES("110","11","superadmin","17c4520f6cfd1ab53d8745e84681eb49","Super Admin","superadmin.jpg","N");



CREATE TABLE `pengguna_grup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

INSERT INTO pengguna_grup VALUES("66","ortu");
INSERT INTO pengguna_grup VALUES("22","admin");
INSERT INTO pengguna_grup VALUES("11","superadmin");
INSERT INTO pengguna_grup VALUES("55","ahli");
INSERT INTO pengguna_grup VALUES("44","guru");



CREATE TABLE `penolong` (
  `id_penolong` int(3) NOT NULL AUTO_INCREMENT,
  `penolong` varchar(15) NOT NULL,
  PRIMARY KEY (`id_penolong`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO penolong VALUES("1","Dokter");
INSERT INTO penolong VALUES("2","Bidan");
INSERT INTO penolong VALUES("3","Dukun");
INSERT INTO penolong VALUES("4","Tidak Ada");



CREATE TABLE `penyakit` (
  `id_penyakit` int(3) NOT NULL AUTO_INCREMENT,
  `penyakit` varchar(40) NOT NULL,
  PRIMARY KEY (`id_penyakit`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO penyakit VALUES("1","Tunagrahita");
INSERT INTO penyakit VALUES("2","Tunanetra");
INSERT INTO penyakit VALUES("3","Tunanetra");
INSERT INTO penyakit VALUES("4","Tunalaras");
INSERT INTO penyakit VALUES("5","Tunadaksa");
INSERT INTO penyakit VALUES("6","Down Syndrom");
INSERT INTO penyakit VALUES("7","Kesulitan Belajar");
INSERT INTO penyakit VALUES("8","Hiperaktif");
INSERT INTO penyakit VALUES("9","Cerdas Istimewa");
INSERT INTO penyakit VALUES("10","Berbakat Istimewa");
INSERT INTO penyakit VALUES("11","Down Syndrom");
INSERT INTO penyakit VALUES("12","Indigo");
INSERT INTO penyakit VALUES("13","Autis");
INSERT INTO penyakit VALUES("14","Tuna Ganda");
INSERT INTO penyakit VALUES("15","Cerebral Palsy (Lumpuh Otak)");
INSERT INTO penyakit VALUES("16","Tunarungu");



CREATE TABLE `perinatal` (
  `id_perinatal` int(11) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `usia_persalinan` char(3) NOT NULL,
  `persalinan_id` int(3) NOT NULL,
  `induksi` enum('Ya','Tidak','','') NOT NULL,
  `penolong_id` int(3) NOT NULL,
  `komplikasi_id` varchar(50) NOT NULL,
  `konbayi_id` int(3) NOT NULL,
  `kelainan_id` varchar(50) NOT NULL,
  `terapi_id` varchar(50) NOT NULL,
  `bb_lahir` char(3) NOT NULL,
  `pb_lahir` char(3) NOT NULL,
  `lk_lahir` char(3) NOT NULL,
  PRIMARY KEY (`id_perinatal`),
  KEY `pendaftaran_id` (`pendaftaran_id`,`persalinan_id`,`penolong_id`,`komplikasi_id`,`konbayi_id`,`kelainan_id`,`terapi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO perinatal VALUES("1","1","8","5","Tidak","2","-","1","-","-","2,1","30","10");
INSERT INTO perinatal VALUES("2","2","8","9","Tidak","2","-","1","-","-","2.3","35","10");



CREATE TABLE `perkiraan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO perkiraan VALUES("1","001","Gaji Pokok","Y","1");
INSERT INTO perkiraan VALUES("2","002","Lembur","Y","1");
INSERT INTO perkiraan VALUES("3","003","Uang Makan","Y","1");
INSERT INTO perkiraan VALUES("4","004","Uang Transport","Y","1");
INSERT INTO perkiraan VALUES("5","005","Tunjangan Keluarga","Y","1");
INSERT INTO perkiraan VALUES("6","006","Tunjangan Kesehatan","Y","1");
INSERT INTO perkiraan VALUES("7","007","THR","Y","1");
INSERT INTO perkiraan VALUES("8","008","Bonus","Y","1");
INSERT INTO perkiraan VALUES("9","101","Pajak","Y","0");
INSERT INTO perkiraan VALUES("10","102","Koperasi","Y","0");
INSERT INTO perkiraan VALUES("11","103","Utang Pinjam","Y","0");
INSERT INTO perkiraan VALUES("14","104","Asuransi Jiwa","Y","0");
INSERT INTO perkiraan VALUES("15","105","Jamsostek","Y","0");



CREATE TABLE `persalinan` (
  `id_persalinan` int(3) NOT NULL AUTO_INCREMENT,
  `persalinan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_persalinan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO persalinan VALUES("1","Spontan");
INSERT INTO persalinan VALUES("2","Sungsang");
INSERT INTO persalinan VALUES("3","Eks vakum");
INSERT INTO persalinan VALUES("4","SC indikasi");
INSERT INTO persalinan VALUES("5","Caesar");
INSERT INTO persalinan VALUES("6","VBAC");
INSERT INTO persalinan VALUES("7","Water birth");
INSERT INTO persalinan VALUES("8","Hypno birth");
INSERT INTO persalinan VALUES("9","Normal");



CREATE TABLE `perubahan_fisik` (
  `id_perubahan_fisik` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `tgl_pengukuran` date NOT NULL,
  `berat_perbulan` int(11) NOT NULL,
  `tinggi_perbulan` int(11) NOT NULL,
  PRIMARY KEY (`id_perubahan_fisik`),
  KEY `siswa_id` (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO perubahan_fisik VALUES("1","12021","2020-02-13","40","135");



CREATE TABLE `postnatal` (
  `id_postnatal` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `bayi_kuning` enum('Ya','Tidak') NOT NULL,
  `sering_biru` enum('Ya','Tidak') NOT NULL,
  `kejang` enum('Ya','Tidak') NOT NULL,
  `lama_kejang` char(4) NOT NULL,
  `kejang_seluruhtubuh` enum('Ya','Tidak') NOT NULL,
  `sering_kejang` varchar(30) NOT NULL,
  `setelah_kejang` varchar(30) NOT NULL,
  `sakit_berat` varchar(40) NOT NULL,
  `asupan_id` int(3) NOT NULL,
  `reflek_hisap` enum('Ya','Tidak') NOT NULL,
  `makan_bubur` varchar(25) NOT NULL,
  `makan_nasitim` varchar(25) NOT NULL,
  `makan_nasibiasa` varchar(25) NOT NULL,
  `kes_mengunyah` enum('Ya','Tidak') NOT NULL,
  `memilih_makanan` enum('Ya','Tidak') NOT NULL,
  `masak_buah` varchar(25) NOT NULL,
  `masak_sayur` varchar(25) NOT NULL,
  `masak_dagingikan` varchar(25) NOT NULL,
  `masalah_bak` enum('Ya','Tidak') NOT NULL,
  `masalah_bab` enum('Ya','Tidak') NOT NULL,
  `masalah_tidur` enum('Ya','Tidak') NOT NULL,
  PRIMARY KEY (`id_postnatal`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `asupan_id` (`asupan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO postnatal VALUES("1","1","Tidak","Tidak","Tidak","-","Tidak","-","-","-","2","Ya","5","8","24","Tidak","Tidak","-","-","Kukus","Tidak","Tidak","Tidak");
INSERT INTO postnatal VALUES("2","2","Tidak","Tidak","Tidak","-","Tidak","-","-","-","1","Tidak","6","9","24","Tidak","Tidak","-","Kukus","-","Tidak","Tidak","Tidak");



CREATE TABLE `prenatal` (
  `id_prenatal` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` char(18) NOT NULL,
  `kehamilan` enum('Ya','Tidak','','') NOT NULL,
  `periksa_kehamilan` enum('Ya','Tidak','','') NOT NULL,
  `pemeriksa_id` int(3) NOT NULL,
  `kebortu_id` varchar(50) NOT NULL,
  `penyakit_ibu` varchar(50) NOT NULL,
  `penyakit_ayah` varchar(50) NOT NULL,
  `kb_id` int(3) NOT NULL,
  `psikologis_ibu` varchar(30) NOT NULL,
  PRIMARY KEY (`id_prenatal`),
  UNIQUE KEY `pendaftaran_id_2` (`pendaftaran_id`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `pemeriksa_id` (`pemeriksa_id`),
  KEY `kebortu_id` (`kebortu_id`),
  KEY `kb_id` (`kb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO prenatal VALUES("1","1","Ya","Ya","2","-","-","-","7","Sehat");
INSERT INTO prenatal VALUES("2","2","Ya","Ya","2","-","-","-","7","Baik");



CREATE TABLE `provinsi` (
  `id_provinsi` char(2) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO provinsi VALUES("31","Daerah Khusus Ibukota Jakarta");
INSERT INTO provinsi VALUES("32","Jawa Barat");
INSERT INTO provinsi VALUES("36","Banten");



CREATE TABLE `psikomotorik` (
  `id_psikomotorik` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `tengkurap` char(3) NOT NULL,
  `balik_badan` char(3) NOT NULL,
  `duduk` char(3) NOT NULL,
  `merangkak` char(3) NOT NULL,
  `tersenyum` char(3) NOT NULL,
  `tertawa` char(3) NOT NULL,
  `mengulang_kata` char(3) NOT NULL,
  `mengucap_mamapapa` char(3) NOT NULL,
  `meniru_kata` char(3) NOT NULL,
  `bicara_bermakna` char(3) NOT NULL,
  PRIMARY KEY (`id_psikomotorik`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO psikomotorik VALUES("1","1","5","7","12","6","2","6","15","36","36","48");
INSERT INTO psikomotorik VALUES("2","2","12","12","24","24","4","7","32","32","32","32");



CREATE TABLE `rekam_medis` (
  `id_rekam_medis` int(10) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `nama_rs` varchar(60) NOT NULL,
  `jabatan_dokter` varchar(40) NOT NULL,
  `file_rekam_medis` varchar(28) NOT NULL,
  PRIMARY KEY (`id_rekam_medis`),
  UNIQUE KEY `pendaftaran_id_2` (`pendaftaran_id`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO rekam_medis VALUES("13","24","popo","popo","popo","24_rekam-medis.pdf");
INSERT INTO rekam_medis VALUES("17","1","dr. Ruslan Kamil","RSUD Bogor","Fisiotrapis","1_rekam-medis.pdf");
INSERT INTO rekam_medis VALUES("18","2","dr. Ruslan kamil","RSUD Bogor","Fisiotrapis","2_rekam-medis.pdf");



CREATE TABLE `sdm` (
  `id_sdm` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` char(40) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Laki-laki','Perempuan','','') NOT NULL,
  `agama_id` char(2) NOT NULL,
  `pendidikan_id` char(5) NOT NULL,
  `pengalaman_kerja` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  PRIMARY KEY (`id_sdm`),
  KEY `pendidikan_id` (`pendidikan_id`),
  KEY `agama_id` (`agama_id`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO sdm VALUES("1","Sherly Astri","Cilibende Timur","1998-12-12","Perempuan","1","7","Magang RSUD Ciawi","085667897098","114");



CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `anak_id` char(18) NOT NULL,
  `no_induk` varchar(20) NOT NULL,
  PRIMARY KEY (`id_siswa`),
  UNIQUE KEY `pendaftaran_id_2` (`pendaftaran_id`),
  KEY `pendaftaran_id` (`pendaftaran_id`),
  KEY `anak_id` (`anak_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO siswa VALUES("4","1","321010113312135167","01.2021.2");



CREATE TABLE `siswa_kelas` (
  `id_siswa_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_id` int(11) NOT NULL,
  `no_induk` varchar(20) NOT NULL,
  PRIMARY KEY (`id_siswa_kelas`),
  KEY `kelas_id` (`kelas_id`),
  KEY `siswa_id` (`no_induk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO siswa_kelas VALUES("1","4","01.2021.2");



CREATE TABLE `tata_laksana_setelah_diagnosa` (
  `id_tata_laksana_setelah_diagnosa` int(5) NOT NULL AUTO_INCREMENT,
  `pendaftaran_id` int(10) NOT NULL,
  `data_tata_laksana_setelah_diagnosa` text NOT NULL,
  PRIMARY KEY (`id_tata_laksana_setelah_diagnosa`),
  KEY `pendaftaran_id` (`pendaftaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tata_laksana_setelah_diagnosa VALUES("1","1","            
            <table border="1" width="100%" style="text-align: center;">
					                <thead>
						                <tr>
						                  <th style="background-color: #bac7a7"><center>Tata Laksana</center></th>
						                  <th style="background-color: #bac7a7"><center>Periode (Bulan)</center></th>
						                  <th style="background-color: #bac7a7"><center>Tempat</center></th>
						                </tr>
					                </thead>
					                <tbody>
						               <tr>
						               	<td>-</td>
						               	<td>-</td>
						               	<td>-</td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
					                </tbody>
				              </table>     
                    				            ");
INSERT INTO tata_laksana_setelah_diagnosa VALUES("2","2","            
            <table border="1" width="100%" style="text-align: center;">
					                <thead>
						                <tr>
						                  <th style="background-color: #bac7a7"><center>Tata Laksana</center></th>
						                  <th style="background-color: #bac7a7"><center>Periode (Bulan)</center></th>
						                  <th style="background-color: #bac7a7"><center>Tempat</center></th>
						                </tr>
					                </thead>
					                <tbody>
						               <tr>
						               	<td>-</td>
						               	<td>-</td>
						               	<td>-</td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
						               <tr>
						               	<td></td>
						               	<td></td>
						               	<td></td>
						               </tr>
					                </tbody>
				              </table>     
                    				            ");



CREATE TABLE `terapi` (
  `id_terapi` int(3) NOT NULL AUTO_INCREMENT,
  `terapi` varchar(20) NOT NULL,
  PRIMARY KEY (`id_terapi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO terapi VALUES("1","Obat");
INSERT INTO terapi VALUES("2","Sinar");
INSERT INTO terapi VALUES("3","Transfusi");
INSERT INTO terapi VALUES("4","Tidak Ada");

