import 'package:flutter/material.dart';
import 'package:origet_app/model/produk.dart';

class ProdukCard extends StatelessWidget {
  final Produk produk;

  const ProdukCard({Key? key, required this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            // Gambar Produk
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(produk.imageDefault), // Assuming imageDefault is a URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Detail Produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produk.nama,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Rating: ${produk.rating}"),
                  SizedBox(height: 5),
                  Text("Harga: ${produk.harga}"),
                  SizedBox(height: 5),
                  Text("Terjual: ${produk.terjual}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
