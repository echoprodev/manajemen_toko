

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_status` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("74","AM4-A8","AM4-A8","1","AMD A8-7680 APU - FM2+","","650000","5","20 October 2022 10:07:38 am","13","13","3","3","Processor AMD A8-7680 APU - FM2+","0","3","0","0");
INSERT INTO barang VALUES("75","LGA12-IC310F","LGA12-IC310F","2","Intel Core i3-10105F Comet Lake","","1250000","3","20 October 2022 10:09:39 am","13","13","3","3","Processor Intel Core i3-10105F Comet Lake","0","3","0","0");
INSERT INTO barang VALUES("76","M-A68M","M-A68M","3","Asrock A68M-DG3+ FM2+","","1000000","3","20 October 2022 10:12:21 am","13","13","3","3","Motherboard Asus socket FM2+","0","3","0","0");



CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL,
  PRIMARY KEY (`barang_sn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO barang_sn VALUES("13","46346346457","lcd-01","3","0");
INSERT INTO barang_sn VALUES("14","643645745754","lcd-01","3","0");
INSERT INTO barang_sn VALUES("15","464645754754","lcd-01","3","0");
INSERT INTO barang_sn VALUES("16","6436457457","lcd-01","3","0");
INSERT INTO barang_sn VALUES("17","745754758","lcd-01","1","0");
INSERT INTO barang_sn VALUES("18","745754856","lcd-01","1","0");
INSERT INTO barang_sn VALUES("19","45756856869679","lcd-01","1","0");
INSERT INTO barang_sn VALUES("20","457547568","lcd-01","1","0");
INSERT INTO barang_sn VALUES("21","575485686598659","lcd-01","1","0");
INSERT INTO barang_sn VALUES("22","8658658454","lcd-01","1","0");



CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_date` varchar(250) NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_count_invoice` int(11) NOT NULL,
  `customer_count_servis` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("0","Customer Umum","","","","","","1","1","0","0");
INSERT INTO customer VALUES("5","Asrul","085678900987","","Jl. Kedung Cowek No.350, Tanah Kali Kedinding, Kec. Kenjeran, Kota SBY, Jawa Timur 60129","","11 April 2020 1:35:37 pm","1","0","2","0");
INSERT INTO customer VALUES("10","Pak Budi","085780956487","","Jl. KENJERAN No. 440 Desa Gading Kec. TambaksariKota Surabaya","","19 August 2021 6:05:44 pm","1","0","0","0");
INSERT INTO customer VALUES("12","Doni Afandi","082299078642","senimankoding@gmail.com","Surabaya Jawa Timur","2022-01-15","15 January 2022 8:46:24 pm","1","0","3","0");
INSERT INTO customer VALUES("20","Raka Putra","095764893421","","Surabaya","2022-01-17","17 January 2022 2:32:11 pm","1","0","1","0");
INSERT INTO customer VALUES("21","Rehan","082299078643","","rewr","2022-01-22","22 January 2022 11:30:46 am","1","0","2","0");
INSERT INTO customer VALUES("22","Customer Umum","","","","","","1","0","0","0");
INSERT INTO customer VALUES("23","Doni Afandi","085780956485","","Surabaya","2022-03-01","01 March 2022 5:34:45 pm","1","0","1","1");
INSERT INTO customer VALUES("24","tes","082299078642","","tes","2022-03-01","01 March 2022 5:51:07 pm","1","0","0","1");



CREATE TABLE `data_servis` (
  `ds_id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_nota` text NOT NULL,
  `ds_nota_count` text NOT NULL,
  `ds_customer_id` int(11) NOT NULL,
  `ds_kategori_jenis_barang_servis_id` int(11) NOT NULL,
  `ds_merk` varchar(500) NOT NULL,
  `ds_model_seri` varchar(250) NOT NULL,
  `ds_sn` varchar(250) NOT NULL,
  `ds_imei` varchar(250) NOT NULL,
  `ds_warna` varchar(250) NOT NULL,
  `ds_memory` varchar(250) NOT NULL,
  `ds_kelengkapan` varchar(500) NOT NULL,
  `ds_kerusakan` varchar(500) NOT NULL,
  `ds_kondisi_unit_masuk` varchar(250) NOT NULL,
  `ds_keterangan` text NOT NULL,
  `ds_password` varchar(250) NOT NULL,
  `ds_dp` int(11) NOT NULL,
  `ds_penerima_id` int(11) NOT NULL,
  `ds_terima_date` varchar(250) NOT NULL,
  `ds_terima_date_time` varchar(250) NOT NULL,
  `ds_kondisi_barang` varchar(500) NOT NULL,
  `ds_note` text NOT NULL,
  `ds_total_biaya_jasa` int(11) NOT NULL,
  `ds_total_biaya_sparepart` int(11) NOT NULL,
  `ds_total_biaya_sparepart_beli` int(11) NOT NULL,
  `ds_total` int(11) NOT NULL,
  `ds_total_sisa_bayar` int(11) NOT NULL,
  `ds_teknisi` int(11) NOT NULL,
  `ds_teknisi_disarankan` int(11) NOT NULL,
  `ds_penyerah_id` int(11) NOT NULL,
  `ds_ambil_date` varchar(250) NOT NULL,
  `ds_ambil_date_time` varchar(250) NOT NULL,
  `ds_status` int(11) NOT NULL,
  `ds_garansi` varchar(250) NOT NULL,
  `ds_garansi_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_date` varchar(250) NOT NULL,
  `ds_garansi_komplain_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_penerima_id` int(11) NOT NULL,
  `ds_garansi_komplain_note` text NOT NULL,
  `ds_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ds_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

INSERT INTO data_servis VALUES("88","1","1","12","2","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-24","24 January 2022 3:12:05 pm","Oke","-","50000","0","0","50000","50000","3","0","3","2022-01-24","24 January 2022 3:21:33 pm","6","2022-01-31","31 January 2022","","","0","","0");
INSERT INTO data_servis VALUES("89","2","2","21","2","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-24","24 January 2022 3:12:39 pm","Oke","Sudah Bisa di charger Sudah Bisa di charger Sudah Bisa di charger","160000","450000","0","610000","610000","3","0","3","2022-01-24","24 January 2022 3:14:20 pm","6","2022-02-09","09 February 2022","","","0","","0");
INSERT INTO data_servis VALUES("90","3","3","12","3","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-28","28 January 2022 8:49:41 pm","masih proses","-","0","0","0","0","0","3","0","0","-","-","4","","","","","0","","0");
INSERT INTO data_servis VALUES("91","4","4","5","2","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-29","29 January 2022 9:05:50 pm","Oke","-","50000","450000","200000","500000","500000","3","0","3","2022-01-30","30 January 2022 11:34:45 am","9","2022-03-12","12 March 2022","2022-02-01","01 February 2022 2:34:21 pm","3","Rusak lagi","0");
INSERT INTO data_servis VALUES("92","5","5","20","2","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","100000","15","2022-01-30","30 January 2022 11:19:24 am","Oke","-","50000","450000","200000","500000","400000","3","17","15","2022-02-08","08 February 2022 12:45:32 am","6","2022-03-07","07 March 2022","2022-02-01","01 February 2022 1:49:45 pm","3","Masih error","0");
INSERT INTO data_servis VALUES("94","6","6","21","3","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-30","30 January 2022 7:23:59 pm","","","0","0","0","0","0","18","18","0","-","-","4","","","","","0","","0");
INSERT INTO data_servis VALUES("95","7","7","12","3","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-01-30","30 January 2022 7:26:05 pm","Oke","-","50000","1200000","0","1250000","1250000","3","0","0","-","-","5","","","","","0","","0");
INSERT INTO data_servis VALUES("96","8","8","5","3","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-02-01","01 February 2022 1:39:02 pm","Oke","Ganti LCD","100000","1200000","0","1300000","1300000","18","18","0","-","-","5","","","","","0","","0");
INSERT INTO data_servis VALUES("97","1","1","23","4","Samsung","A300","24242553","24235235","Hitam","16","Btre","Flash","Nyala","","","0","3","2022-03-01","01 March 2022 5:36:28 pm","","","0","0","0","0","0","0","0","0","-","-","1","","","","","0","","1");



CREATE TABLE `data_servis_sparepart` (
  `dss_id` int(11) NOT NULL AUTO_INCREMENT,
  `dss_nama` varchar(500) NOT NULL,
  `dss_harga_beli` varchar(250) NOT NULL,
  `dss_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `dss_qty` int(11) NOT NULL,
  `dss_barang_sn_id` int(11) NOT NULL,
  `dss_barang_option_sn` int(11) NOT NULL,
  `dss_sn` text NOT NULL,
  `dss_id_teknisi` int(11) NOT NULL,
  `dss_nota` varchar(500) NOT NULL,
  `dss_cek` int(11) NOT NULL,
  `dss_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO data_servis_sparepart VALUES("5","Monitor LG 2","","1200000","66","BRG-007","1","0","0","0","18","8","661808","0");
INSERT INTO data_servis_sparepart VALUES("6","SSD WD Green 128GB Sata III","100000","250000","73","SMG-10192022","1","0","1","0","18","9","731809","0");
INSERT INTO data_servis_sparepart VALUES("8","SSD WD Green 128GB Sata III","100000","250000","73","SMG-10192022","1","0","0","0","18","6","731806","0");



CREATE TABLE `data_servis_teknisi` (
  `dst_id` int(11) NOT NULL AUTO_INCREMENT,
  `dst_id_nota` int(11) NOT NULL,
  `dst_teknisi_id` int(11) NOT NULL,
  `dst_id_servis` int(11) NOT NULL,
  `dst_kategori_servis` int(11) NOT NULL,
  `dst_nama_servis` varchar(500) NOT NULL,
  `ds_biaya_jasa_teknisi` int(11) NOT NULL,
  `ds_biaya_profit` int(11) NOT NULL,
  `dst_servis_biaya` int(11) NOT NULL,
  `dst_pengambilan_date` varchar(250) NOT NULL,
  `dst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`dst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO data_servis_teknisi VALUES("19","2","3","2","3","Servis Lcd","20000","30000","50000","2022-01-24","0");
INSERT INTO data_servis_teknisi VALUES("20","2","3","5","2","Servis Touch","50000","60000","110000","2022-01-24","0");
INSERT INTO data_servis_teknisi VALUES("21","1","3","2","3","Servis Lcd","20000","30000","50000","2022-01-24","0");
INSERT INTO data_servis_teknisi VALUES("22","4","3","2","3","Servis Lcd","20000","30000","50000","2022-01-30","0");
INSERT INTO data_servis_teknisi VALUES("23","5","3","2","3","Servis Lcd","20000","30000","50000","2022-01-30","0");
INSERT INTO data_servis_teknisi VALUES("24","6","3","2","3","Servis Lcd","20000","30000","50000","","0");
INSERT INTO data_servis_teknisi VALUES("25","7","3","2","3","Servis Lcd","20000","30000","50000","","0");
INSERT INTO data_servis_teknisi VALUES("26","8","18","6","2","Flash Hp","60000","40000","100000","","0");
INSERT INTO data_servis_teknisi VALUES("27","9","18","2","3","Servis Lcd","20000","30000","50000","","0");
INSERT INTO data_servis_teknisi VALUES("28","6","18","5","2","Servis Touch Screen","50000","60000","110000","","0");
INSERT INTO data_servis_teknisi VALUES("29","6","18","6","2","Flash Hp","60000","40000","100000","","0");



CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL,
  PRIMARY KEY (`ekspedisi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO ekspedisi VALUES("2","JNE","1","0");
INSERT INTO ekspedisi VALUES("3","TIKI","1","0");
INSERT INTO ekspedisi VALUES("4","POS","1","0");
INSERT INTO ekspedisi VALUES("5","JNE Cabang","1","1");



CREATE TABLE `history_servis_tekinis` (
  `hst_id` int(11) NOT NULL AUTO_INCREMENT,
  `hst_nota` varchar(500) NOT NULL,
  `hst_teknisi` int(11) NOT NULL,
  `hst_status` int(11) NOT NULL,
  `hst_date` varchar(250) NOT NULL,
  `hst_date_time` varchar(250) NOT NULL,
  `hst_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

INSERT INTO history_servis_tekinis VALUES("112","2","3","4","2022-01-24","24 January 2022 3:12:50 pm","0");
INSERT INTO history_servis_tekinis VALUES("113","1","3","4","2022-01-24","24 January 2022 3:12:54 pm","0");
INSERT INTO history_servis_tekinis VALUES("114","2","3","5","2022-01-24","24 January 2022 3:13:52 pm","0");
INSERT INTO history_servis_tekinis VALUES("115","2","3","6","2022-01-24","24 January 2022 3:14:20 pm","0");
INSERT INTO history_servis_tekinis VALUES("116","1","3","5","2022-01-24","24 January 2022 3:21:17 pm","0");
INSERT INTO history_servis_tekinis VALUES("117","1","3","6","2022-01-24","24 January 2022 3:21:33 pm","0");
INSERT INTO history_servis_tekinis VALUES("118","3","3","4","2021-01-28","28 January 2021 8:58:22 pm","0");
INSERT INTO history_servis_tekinis VALUES("119","3","3","2","2022-01-28","28 January 2022 10:16:53 pm","0");
INSERT INTO history_servis_tekinis VALUES("120","3","3","3","2022-01-28","28 January 2022 10:47:06 pm","0");
INSERT INTO history_servis_tekinis VALUES("121","3","3","4","2022-01-28","28 January 2022 10:48:07 pm","0");
INSERT INTO history_servis_tekinis VALUES("122","4","3","4","2022-01-30","30 January 2022 11:31:47 am","0");
INSERT INTO history_servis_tekinis VALUES("123","4","3","5","2022-01-30","30 January 2022 11:34:15 am","0");
INSERT INTO history_servis_tekinis VALUES("124","4","3","6","2022-01-30","30 January 2022 11:34:45 am","0");
INSERT INTO history_servis_tekinis VALUES("125","5","3","4","2022-01-30","30 January 2022 11:40:30 am","0");
INSERT INTO history_servis_tekinis VALUES("126","5","3","5","2022-01-30","30 January 2022 11:41:24 am","0");
INSERT INTO history_servis_tekinis VALUES("127","5","3","6","2022-01-30","30 January 2022 11:41:54 am","0");
INSERT INTO history_servis_tekinis VALUES("129","7","3","4","2022-01-30","30 January 2022 7:26:17 pm","0");
INSERT INTO history_servis_tekinis VALUES("130","5","3","9","2022-02-01","01 February 2022 1:46:28 pm","0");
INSERT INTO history_servis_tekinis VALUES("133","5","3","5","2022-02-01","01 February 2022 2:05:27 pm","0");
INSERT INTO history_servis_tekinis VALUES("134","4","3","9","2022-02-01","01 February 2022 2:11:28 pm","0");
INSERT INTO history_servis_tekinis VALUES("135","5","3","6","2022-02-08","08 February 2022 12:45:32 am","0");
INSERT INTO history_servis_tekinis VALUES("136","7","3","5","2022-02-08","08 February 2022 12:52:23 am","0");
INSERT INTO history_servis_tekinis VALUES("137","8","18","4","2022-10-10","10 October 2022 12:49:34 pm","0");
INSERT INTO history_servis_tekinis VALUES("138","8","18","5","2022-10-10","10 October 2022 12:53:54 pm","0");
INSERT INTO history_servis_tekinis VALUES("139","9","18","4","2022-10-19","19 October 2022 7:08:02 pm","0");
INSERT INTO history_servis_tekinis VALUES("140","6","18","4","2022-10-19","19 October 2022 7:17:29 pm","0");



CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hutang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO hutang VALUES("1","643645745890","20211110430","2021-11-10","10 November 2021 6:52:48 pm","3","10000","0","0");
INSERT INTO hutang VALUES("2","643645745890","20211110430","2021-11-10","10 November 2021 6:53:09 pm","3","25000","1","0");



CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL AUTO_INCREMENT,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`hl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO hutang_kembalian VALUES("1","643645745890","20211110430","2021-11-10","10 November 2021 6:53:09 pm","5000","0");



CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO invoice VALUES("3","202210193","3","19 October 2022 7:02:41 am","0","0","1","0","0","60000","0","60000","100000","40000","15","2022-10-19"," "," ","0","60000","0","60000","100000","40000","","0","-","-","0","0","0","0","0");



CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO invoice_pembelian VALUES("1","6436457457","20211109130","09 November 2021 7:35:56 pm","4","5000","5000","0","3                                  ","2021-11-09"," "," ","5000","5000","0","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("2","6436457458","20211109230","09 November 2021 7:37:12 pm","4","4000","4000","0","3                                  ","2021-11-09"," "," ","4000","4000","0","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("3","6436457465","20211109330","09 November 2021 7:40:21 pm","4","7500","7500","0","3                                  ","2021-11-09"," "," ","7500","7500","0","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("4","643645745890","20211110430","10 November 2021 6:51:44 pm","4","40000","45000","5000","3                                  ","2021-11-10"," "," ","40000","10000","-30000","0","10000","2021-11-17","1","0");
INSERT INTO invoice_pembelian VALUES("7","645654yfdyry","20211114730","14 November 2021 8:51:36 pm","2","1000000","1000000","0","3                                  ","2021-11-14"," "," ","1000000","1000000","0","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("8","65465445436","20220130830","30 January 2022 11:31:07 am","4","800000","800000","0","3                                  ","2022-01-30"," "," ","800000","800000","0","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("9","TPP-0001","20221010980","10 October 2022 12:29:31 pm","4","250000","300000","50000","8                                  ","2022-10-10"," "," ","250000","300000","50000","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("10","SMS-001","20221019880","19 October 2022 6:56:58 am","2","50000","75000","25000","8                                  ","2022-10-19"," "," ","50000","75000","25000","0","0","0","0","0");
INSERT INTO invoice_pembelian VALUES("11","SMS-002","20221019980","19 October 2022 7:03:12 pm","4","200000","300000","100000","8                                  ","2022-10-19"," "," ","200000","300000","100000","0","0","0","0","0");



CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`invoice_pembelian_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO invoice_pembelian_number VALUES("9","1234567876","2021071912","3","202107191230","0");
INSERT INTO invoice_pembelian_number VALUES("10","6436457457","202110233","3","20211023330","0");
INSERT INTO invoice_pembelian_number VALUES("11","6436457457","202110233","3","20211023331","1");



CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO kategori VALUES("13","sparepart","1","0");
INSERT INTO kategori VALUES("14","Komputer/Laptop","1","0");
INSERT INTO kategori VALUES("15","Printer","1","0");



CREATE TABLE `kategori_servis` (
  `kategori_servis_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_servis_nama` varchar(500) NOT NULL,
  `kategori_servis_status` int(11) NOT NULL,
  `kategori_servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`kategori_servis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO kategori_servis VALUES("2","Printer","1","0");
INSERT INTO kategori_servis VALUES("3","Komputer/Laptop","1","0");
INSERT INTO kategori_servis VALUES("4","Handphone","1","1");
INSERT INTO kategori_servis VALUES("5","Proyektor","1","0");



CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;




CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`keranjang_transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL AUTO_INCREMENT,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL,
  PRIMARY KEY (`lb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO laba_bersih VALUES("1","500000","400000","150000","0","0","0","0","0","0","0");



CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO pembelian VALUES("1","53","53","1","3","6436457457","20211109130","2021-11-09","1","1","5000","0");
INSERT INTO pembelian VALUES("2","53","53","1","3","6436457458","20211109230","2021-11-09","1","1","4000","0");
INSERT INTO pembelian VALUES("3","54","54","1","3","6436457465","20211109330","2021-11-09","1","1","2000","0");
INSERT INTO pembelian VALUES("4","53","53","1","3","6436457465","20211109330","2021-11-09","1","1","5500","0");
INSERT INTO pembelian VALUES("5","54","54","5","3","643645745890","20211110430","2021-11-10","5","5","5000","0");
INSERT INTO pembelian VALUES("6","53","53","3","3","643645745890","20211110430","2021-11-10","3","3","5000","0");
INSERT INTO pembelian VALUES("9","62","62","50","3","645654yfdyry","20211114730","2021-11-14","50","50","5000","0");
INSERT INTO pembelian VALUES("10","54","54","50","3","645654yfdyry","20211114730","2021-11-14","50","50","10000","0");
INSERT INTO pembelian VALUES("11","53","53","50","3","645654yfdyry","20211114730","2021-11-14","50","50","5000","0");
INSERT INTO pembelian VALUES("12","72","72","4","3","65465445436","20220130830","2022-01-30","4","4","200000","0");
INSERT INTO pembelian VALUES("13","72","72","5","8","TPP-0001","20221010980","2022-10-10","5","5","50000","0");
INSERT INTO pembelian VALUES("14","53","53","5","8","SMS-001","20221019880","2022-10-19","5","5","10000","0");
INSERT INTO pembelian VALUES("15","73","73","2","8","SMS-002","20221019980","2022-10-19","2","2","100000","0");



CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `penjualan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`penjualan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO penjualan VALUES("3","63","63","3","","20000","15","202210193","2022-10-19","3","3","0","0","0","0");



CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL AUTO_INCREMENT,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL,
  PRIMARY KEY (`piutang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO piutang_kembalian VALUES("1","202111102","2021-11-10","10 November 2021 6:43:57 pm","1000","0");



CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL AUTO_INCREMENT,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL,
  PRIMARY KEY (`retur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO retur VALUES("12","5","202004209","3","2020-04-20"," ","1");
INSERT INTO retur VALUES("13","5","202004209","3","2020-04-20"," ","1");



CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO satuan VALUES("1","KG","1","0");
INSERT INTO satuan VALUES("2","PCS","1","0");
INSERT INTO satuan VALUES("3","Unit","1","0");



CREATE TABLE `servis` (
  `servis_id` int(11) NOT NULL AUTO_INCREMENT,
  `servis_kode` varchar(500) NOT NULL,
  `servis_kode_slug` varchar(500) NOT NULL,
  `servis_nama` varchar(500) NOT NULL,
  `servis_desc` text NOT NULL,
  `servis_biaya_jasa_teknisi` int(11) NOT NULL,
  `servis_biaya_profit` int(11) NOT NULL,
  `servis_biaya` varchar(500) NOT NULL,
  `servis_kategori` int(11) NOT NULL,
  `servis_status` int(11) NOT NULL,
  `servis_date` varchar(250) NOT NULL,
  `servis_date_time` varchar(250) NOT NULL,
  `servis_id_user_create` int(11) NOT NULL,
  `servis_id_user_edit` int(11) NOT NULL,
  `servis_date_edit` varchar(250) NOT NULL,
  `servis_date_time_edit` varchar(250) NOT NULL,
  `servis_cabang` int(11) NOT NULL,
  PRIMARY KEY (`servis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO servis VALUES("8","SMS-P001","SMS-P001","LCD","Perbaikan LCD","150000","50000","200000","3","1","2022-10-20","20 October 2022 10:01:24 am","3","0","","","0");
INSERT INTO servis VALUES("9","SMS-P002","SMS-P002","Permbaikan Motherboard","Perbaikan/Ganti Motherboard","300000","100000","400000","3","1","2022-10-20","20 October 2022 10:03:02 am","3","0","","","0");
INSERT INTO servis VALUES("10","SMS-P003","SMS-P003","Upgrade Komponen","Build Up komponen","75000","25000","100000","3","1","2022-10-20","20 October 2022 10:04:24 am","3","0","","","0");
INSERT INTO servis VALUES("11","SMS-P004","SMS-P004","Katrit","Perbaikan/Penggantian Katrit","75000","25000","100000","2","1","2022-10-20","20 October 2022 11:46:27 am","3","0","","","0");
INSERT INTO servis VALUES("12","SMS-P005","SMS-P005","Matot","Mesin tidak nyala","125000","75000","200000","5","1","2022-10-20","20 October 2022 11:48:33 am","3","3","2022-10-20","20 October 2022 11:48:43 am","0");



CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("2","Doni Afandi","085780978675","Surabaya","PT Pemasok Produk","1","14 November 2020 7:31:51 pm","0");
INSERT INTO supplier VALUES("4","Afandi","085787654321","Surabaya","PT ABC","1","15 November 2020 7:46:06 pm","0");
INSERT INTO supplier VALUES("6","Bagong","0989012378213","Jonggol","PT Abal-abal","1","20 October 2022 11:50:28 am","0");



CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  PRIMARY KEY (`terlaris_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO terlaris VALUES("1","71","1");
INSERT INTO terlaris VALUES("2","66","1");
INSERT INTO terlaris VALUES("3","69","1");
INSERT INTO terlaris VALUES("4","72","5");
INSERT INTO terlaris VALUES("5","63","3");



CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL AUTO_INCREMENT,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_tipe_print_toko` int(11) NOT NULL,
  `toko_lebar_print_toko` int(11) NOT NULL,
  `toko_tipe_print_servis` int(11) NOT NULL,
  `toko_lebar_print_servis` int(11) NOT NULL,
  `toko_link` varchar(250) NOT NULL,
  `toko_teks_nota_servis_masuk` text NOT NULL,
  `toko_teks_nota_servis_ambil` text NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_cabang` int(11) NOT NULL,
  PRIMARY KEY (`toko_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO toko VALUES("1","Pusat IT","Pasuruan Jawa Timur","RT 1/ RW 2 Jln Pahlawan Pertama","031890876","085780956487","echoprogrammung@gmail.com","0","8","0","8","http://localhost/pos-servis-seniman-koding","Garansi Servis maksimal 1 Minggu","Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil","1","0","0");



CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO transfer VALUES("1","2021111001","1","2021-11-10","10 November 2021 10:35:35 pm","2021-11-10","10 November 2021 10:38:43 pm","Transfer Dari Gudang Pusat","0","1","0","1","2","3","16","0");



CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO transfer_produk_keluar VALUES("1","54","54","BRG-001","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");
INSERT INTO transfer_produk_keluar VALUES("2","53","53","12345678","2","2021111001","2021-11-10","10 November 2021 10:35:15 pm","0","0","0","3","0","1","0");



CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tpm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL,
  PRIMARY KEY (`tsc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_gaji_pokok` int(11) NOT NULL,
  `user_bonus` int(11) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("3","Echo Progrmming","086798890000","Surabaya","echoprogramming@gmail.com","092fdc5a86cee649b5636c293c851d91","30 March 2020 9:17:00 pm","super admin","0","0","1","0");
INSERT INTO user VALUES("7","Naga Afandi ","086798890000","Surabaya","superadmin@senimankoding.com","550e1bafe077ff0b0b67f4e32f29d751","16 April 2020 9:31:04 pm","super admin","0","0","0","0");
INSERT INTO user VALUES("8","Riadus","085780956487","Surabaya","admin@echoprogramming.com","092fdc5a86cee649b5636c293c851d91","16 April 2020 9:32:06 pm","admin","0","0","1","0");
INSERT INTO user VALUES("12","M. Rafsanjani Mulyo Utomo","082299878989","Kediri jln pahlawan","kurir@echoprorgramming.com","668b5b4bb5a5e12cc0508815d0ea174b","18 August 2021 5:21:01 pm","kurir","0","0","1","0");
INSERT INTO user VALUES("15","Rachmad Riadi","087654567809","Surabaya","kasir@echoprorgramming.com","668b5b4bb5a5e12cc0508815d0ea174b","04 September 2021 1:31:34 pm","kasir","500000","0","1","0");
INSERT INTO user VALUES("18","Aditya Yoga Setiawan","096796796776","Surabaya","teknisi2@echoprogramming.com","092fdc5a86cee649b5636c293c851d91","30 January 2022 6:56:29 pm","teknisi","0","0","1","0");

