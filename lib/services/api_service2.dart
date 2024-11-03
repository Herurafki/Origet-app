import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:origet_app/model/detailproduk.dart';

class ApiService2 {
  final String apiUrl = "http://127.0.0.1:8000/api/produk";

  Future<List<DetailProduk>> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      // Mengambil objek 'data' dari JSON
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> data = json['data'];
      return data.map((item) => DetailProduk.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}