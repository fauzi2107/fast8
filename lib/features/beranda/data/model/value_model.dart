import 'package:fast8/ui_export.dart';

class ValueModel {
  final IconData icon;
  final String label;
  final String? subLabel;

  ValueModel({required this.icon, required this.label, this.subLabel});
}

List<ValueModel> get keuanganList => [
  ValueModel(icon: Icons.group, label: 'Urun'),
  ValueModel(icon: Icons.personal_injury, label: 'Pembiayaan Persi Haji'),
  ValueModel(icon: Icons.library_books, label: 'Financial Check Up'),
  ValueModel(icon: Icons.car_crash, label: 'Asuransi Mobil'),
  ValueModel(icon: Icons.drive_eta, label: 'Asuransi Properti'),
];

List<ValueModel> get kategoriList => [
  ValueModel(icon: Icons.umbrella, label: 'Hobi'),
  ValueModel(icon: Icons.forward, label: 'Merchandise'),
  ValueModel(icon: Icons.heart_broken, label: 'Gaya Hidup Sehat'),
  ValueModel(icon: Icons.file_copy, label: 'Konseling & Rohani'),
  ValueModel(icon: Icons.adb_rounded, label: 'Self Development'),
  ValueModel(icon: Icons.credit_card, label: 'Perencana Keuangan'),
  ValueModel(icon: Icons.file_copy_outlined, label: 'Konseling Medis'),
  ValueModel(icon: Icons.select_all, label: 'Lihat Semua'),
];

List<ValueModel> get wellness => [
  ValueModel(icon: Icons.credit_card_outlined, label: 'Voucher Digital Indomaret Rp 25.000', subLabel: 'Rp 25.000'),
  ValueModel(icon: Icons.motorcycle, label: 'Voucher Digital Grab Transport Rp 20.000', subLabel: 'Rp 20.000'),
  ValueModel(icon: Icons.credit_card_outlined, label: 'Voucher Digital Indomaret Rp 20.000', subLabel: 'Rp 20.000'),
  ValueModel(icon: Icons.motorcycle, label: 'Voucher Digital Grab Transport Rp 15.000', subLabel: 'Rp 15.000'),
  ValueModel(icon: Icons.credit_card_outlined, label: 'Voucher Digital Indomaret Rp 15.000', subLabel: 'Rp 15.000'),
  ValueModel(icon: Icons.motorcycle, label: 'Voucher Digital Grab Transport Rp 10.000', subLabel: 'Rp 10.000'),
  ValueModel(icon: Icons.credit_card_outlined, label: 'Voucher Digital Indomaret Rp 10.000', subLabel: 'Rp 10.000'),
  ValueModel(icon: Icons.motorcycle, label: 'Voucher Digital Grab Transport Rp 5.000', subLabel: 'Rp 5.000'),
];

List<ValueModel> get profiles => [
  ValueModel(icon: Icons.person_outline, label: 'Informasi Pribadi'),
  ValueModel(icon: Icons.file_copy_outlined, label: 'syarat & Ketentuan'),
  ValueModel(icon: Icons.chat_outlined, label: 'Bantuan'),
  ValueModel(icon: Icons.file_open_outlined, label: 'Kebijakan Privasi'),
  ValueModel(icon: Icons.power_off_outlined, label: 'Log Out'),
  ValueModel(icon: Icons.delete_forever_outlined, label: 'Hapus Akun'),
];

List<ValueModel> get mainMenus => [
  ValueModel(icon: Icons.home_outlined, label: 'Beranda'),
  ValueModel(icon: Icons.search_outlined, label: 'Cari'),
  ValueModel(icon: Icons.add_shopping_cart_outlined, label: 'Keranjang'),
  ValueModel(icon: Icons.card_giftcard, label: 'Daftar Transaksi'),
  ValueModel(icon: Icons.card_travel_outlined, label: 'Voucher Saya'),
  ValueModel(icon: Icons.pin_drop_outlined, label: 'Alamat Pengiriman'),
  ValueModel(icon: Icons.group_outlined, label: 'Daftar Teman'),
];