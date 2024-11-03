import 'package:flutter/material.dart';
import 'package:origet_app/page/welcomepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(247, 20, 172, 25)),
        useMaterial3: true,
      ),
      home: const SignInPage2(),
    );
  }
}

