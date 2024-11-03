import 'package:flutter/material.dart';
import 'package:origet_app/widget/ulasan.dart'; // Widget ulasan belum diimplementasikan
import 'package:origet_app/model/produk.dart'; // Model Produk yang sudah didefinisikan
import 'package:origet_app/page/pembayaranpage.dart'; // Import halaman PayPage

class DetailPage extends StatelessWidget {
  final Produk produk;

  const DetailPage({Key? key, required this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(produk.imageDefault),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      produk.nama,
                      style: TextStyle(fontFamily: 'Inika', fontSize: 20),
                    ),
                  ),
                  height: height * .07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 5),
                      Text(
                        "${produk.rating} (${produk.terjual} terjual)",
                        style: TextStyle(fontFamily: 'Inika', fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "Rp ${produk.harga}",
                        style: TextStyle(fontFamily: 'Inika', fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TitleDetail(
              title: "Deskripsi",
              detail: produk.deskripsi,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Ulasan",
                style: TextStyle(fontFamily: 'Inika', fontSize: 20),
              ),
            ),
            Comment(), // Widget untuk menampilkan daftar ulasan
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Paypage(produk: produk), // Mengirimkan objek produk ke PayPage
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green[200], // Warna tombol bisa disesuaikan
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "Beli Sekarang",
            style: TextStyle(fontFamily: 'Inika', fontSize: 20),
            selectionColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;

  const TitleDetail({
    Key? key,
    required this.title,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: 'Inika', fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            detail,
            style: TextStyle(fontFamily: 'Inter', fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class CommentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget untuk menampilkan daftar ulasan belum diimplementasikan
    return Container();
  }
}
