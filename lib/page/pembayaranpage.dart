import 'package:flutter/material.dart';
import 'package:origet_app/model/produk.dart';
import 'suksespage.dart';


class Paypage extends StatelessWidget {
  final Produk produk; // Deklarasikan variabel produk

  const Paypage({Key? key, required this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  int hargaProduk = produk.harga; 
  int tambahan = 110000;
  int totalSetelahDitambahkan = hargaProduk + tambahan;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
  decoration: BoxDecoration(
    color: Color(0xFFE5EAF3),
  ),
  child: Container(
    padding: EdgeInsets.fromLTRB(11, 29, 25, 13),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 41),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 239.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x33000000),
                        borderRadius: BorderRadius.circular(15.5),
                      ),
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
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      fontFamily:  'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 27,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 13),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Order Details',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        Container(
  margin: EdgeInsets.fromLTRB(16, 0, 16, 23), // Sesuaikan margin dengan kebutuhan Anda
  decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(20),
  ),
  child: SizedBox(
    height: 173,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 138,
          height: 142,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(produk.imageDefault),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 12), // Jarak antara gambar dan teks
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${produk.nama}',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Blue, 256 GB', // Ganti dengan detail produk yang sesuai
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Color(0xFF757474),
                ),
              ),
              SizedBox(height: 10),
              Text(
                    'Rp ${produk.harga}',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xFF000000),
                    ),
                  ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(13, 8, 10, 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFD2D2D2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 13, 2),
                          width: 18,
                          height: 18,
                          child: Image.asset(
                            'assets/logo/edit.png',
                          ),
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                      
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
),
        Container(
          margin: EdgeInsets.fromLTRB(17, 0, 17, 11),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'My Address',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 1, 22),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(21, 18, 18, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 13, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x753EC444),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 5.5, 2),
                            child: Text(
                              'John Wednesdey',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 0, 5),
                            child: Text(
                              'Dharmahusada Permai Mulyorejo, Surabaya 903129',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: Color(0xFF565252),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '+62 821 9820 334',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 17, 0, 20),
                    width: 16.5,
                    height: 27.9,
                    child: 
                    SizedBox(
                      width: 16.5,
                      height: 27.9,
                      child: Image.asset(
                        'assets/logo/plus.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 11),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Total payment',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(17, 0, 0, 15),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 8, 11.6, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1.8, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 8.5, 0),
                          child: SizedBox(
                            width: 278.5,
                            child: Text(
                              'Amount',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF6F6D6D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Unit price',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Shipping Costs',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0.5, 2),
                              child: Text(
                                'Rp ${produk.harga}',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6D6D),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text(
                                'Rp 100000',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6D6D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 1, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 8.5, 3),
                          child: SizedBox(
                            width: 218.5,
                            child: Text(
                              'Tax & Fee',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Text(
                            'Rp 10000',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF6F6D6D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
  margin: EdgeInsets.fromLTRB(0, 0, 0.2, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 12, 1),
        child: SizedBox(
          width: 158,
          child: Text(
            'Total',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
        child: Text(
          'Rp ${totalSetelahDitambahkan.toString()}',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
    ],
  ),
),
                ],
              ),
            ),
          ),
        ),

        Container(
  margin: EdgeInsets.all(16.0),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderSuccessPage(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Sesuaikan warna tombol sesuai kebutuhan
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(200, 0), // Lebar minimum tombol
      ),
      child: Text(
        'Payment Confirm',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  ),
),
      ],
    ),
  ),
),
      ),
    );
  }
}

