import 'package:flutter/material.dart';


class Comment extends StatelessWidget {
  const Comment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profil_2.png",
                width: 38,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Heru",
                    style: TextStyle(fontFamily: 'Inika', fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Barang bagus dan sangat berguna\nBintang 5 buat adminnya fast respone",
            style: TextStyle(fontFamily: 'Inika', fontSize: 20),
          ),
        ],
      ),
    );
  }
}
