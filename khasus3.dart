import 'dart:io';
 void main(){
  print("=== program Transaksi penjualan ===");

  stdout.write("masukan Nama Pelanggan: ");
  String namapelanggan = stdin.readLineSync()!;

  stdout.write("masukan Nama Barang:");
  String namaBarang = stdin.readLineSync()!;

  stdout.write("masukan Jumlah Barang:");
  int jumlahbarang = int.parse(stdin.readLineSync()!);

  stdout.write("masukan Harga Barang:");
  int hargabarang = int.parse(stdin.readLineSync()!);

  int totalpembelian = jumlahbarang * hargabarang;
  double diskon = 0.0;

  if (totalpembelian > 500000) {
    diskon = 0.2;
  } else if (totalpembelian > 250000) {
    diskon = 0.15;
  } else if (totalpembelian > 100000) {
    diskon = 0.02;
  } else {
    print("anda tidak mendapatkan diskon");
  }

  double jumlahdiskon = diskon *  totalpembelian;
  double totalbayar = totalpembelian - jumlahdiskon;

  stdout.write("masukan jumlah uang tunai: Rp ");
  int uangTunai = int.parse(stdin.readLineSync()!);


  if (uangTunai < totalbayar) {
    print("uang tunai kurang. pembayaran tidak dapat diproses.");
  }

  var Kembalian = uangTunai - totalbayar;

  print("---Struk pembelian ---");
  print("Nama Pelanggan: $namapelanggan");
  print("Nama barang: $namaBarang");
  print("jumlah barang: $jumlahbarang");
  print("Harga Barang: Rp $hargabarang");
  print("Total pembelian: Rp $totalpembelian");
  print("potongan: Rp $jumlahdiskon");
  print("Total bayar: Rp $totalbayar");
  print("Jumlah uang tunai: Rp $uangTunai");
  print("Kembalian: Rp $Kembalian");



 }