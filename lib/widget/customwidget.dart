import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String teks;
  final double height; 
  final double width;
  final double fontsize;  
  final Color fontcolor;
  final Function() onPressed;
  final Color warnaLatar;

  const CustomButton({
    Key? key,
    required this.teks,
    this.height = 55.0,
    this.width = 355.0,
    this.fontsize = 17.0,
    required this.fontcolor,
    required this.onPressed,
    this.warnaLatar = const Color.fromRGBO(255, 253, 245, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(teks,style: TextStyle(fontSize: fontsize,color: fontcolor)),
        style: ElevatedButton.styleFrom(
          backgroundColor: warnaLatar,
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 40,
          height: 50,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 27,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                title,
                style: TextStyle(fontFamily: 'Inika',fontSize: 11,fontWeight: FontWeight.bold,),
              )
            ],
          ),
        ),
      ),
    );
  }
}