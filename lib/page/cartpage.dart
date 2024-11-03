import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE5EAF3),
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 27,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(width: 36), // Spacer
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'List Item',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/image_3.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Iphone 13 Pro Max',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Blue, 256 GB ',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Color(0xFF757474),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Rp 8.880.000',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Restricted Stock',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFF2BE06),
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xFF757474)),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove, size: 18, color: Color(0xFF757474)),
                                        SizedBox(width: 8),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(Icons.add, size: 18, color: Color(0xFF757474)),
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
              ),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/rectangle_13.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Apple Watch Series 1',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Black, 1 GB, Single Rope',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Color(0xFF757474),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Rp 5.000.000',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Restricted Stock',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFF2BE06),
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xFF757474)),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove, size: 18, color: Color(0xFF757474)),
                                        SizedBox(width: 8),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(Icons.add, size: 18, color: Color(0xFF757474)),
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
              ),
              SizedBox(height: 261),
              
            ],
          ),
        ),
      ),
    );
  }
}
