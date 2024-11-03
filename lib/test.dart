import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Banner iPhone 13 Pro
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/Iphone13_Slider.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'iPhone 13 Pro',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ponsel Paling Pro',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search what\'s new',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Kategori
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Top on rating'),
                                SizedBox(height: 8),
                                Icon(Icons.star),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Recommended'),
                                SizedBox(height: 8),
                                Icon(Icons.favorite),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Produk Ponsel
                  Column(
                    children: <Widget>[
                      // Produk ITEL A70 40A
                      Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/images/item_1.png'),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'ITEL A70 40A',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Rp 3.100.000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: <Widget>[
                                    Text('2 Sold'),
                                    SizedBox(width: 8),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star_border),
                                    Icon(Icons.star_border),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Produk Redmi Note 11 Pro
                      // ... (tambahkan produk lainnya dengan format serupa)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}