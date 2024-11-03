class Produk {
  final int id;
  final String nama;
  final int harga;
  final String deskripsi;
  final double rating;
  final int terjual;
  final String imageDefault;

  Produk({
    required this.id,
    required this.nama,
    required this.harga,
     required this.deskripsi,
    required this.rating,
    required this.terjual,
    required this.imageDefault,
  });

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga'],
      deskripsi: json['deskripsi'],
      rating: json['rating'].toDouble(),
      terjual: json['terjual'],
      imageDefault: json['image_default'],
    );
  }
}
