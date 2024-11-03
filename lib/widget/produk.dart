import 'package:flutter/material.dart';
import 'package:origet_app/page/detailpage.dart';
import 'package:origet_app/model/produk.dart';

class CoffeShop2 extends StatelessWidget {
  final Produk produk;

  const CoffeShop2({
    Key? key,
    required this.produk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(produk: produk)),
        );
      },
      child: SizedBox(
        width: 180,
        height: 230,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 130,
                    child: Image.network(produk.imageDefault, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 5,
              child: SizedBox(
                height: 82,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                produk.nama,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Rp ${produk.harga}",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.store_mall_directory, color: Colors.black45),
                              Text(
                                produk.terjual.toString(),
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 70),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.amber),
                              Text(
                                produk.rating.toString(),
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeShopGrid extends StatelessWidget {
  final List<CoffeShop2> coffeShops;

  const CoffeShopGrid({
    Key? key,
    required this.coffeShops,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: coffeShops.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        mainAxisSpacing: 10.0, // Spacing between rows
        crossAxisSpacing: 10.0, // Spacing between columns
        childAspectRatio: 0.8, // Aspect ratio (width / height) of each item
      ),
      itemBuilder: (context, index) {
        return coffeShops[index];
      },
    );
  }
}
