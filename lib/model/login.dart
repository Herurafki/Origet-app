import 'dart:convert';
import 'package:http/http.dart' as http;


Future<bool> login(String username, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost/origet/login.php'), // Ganti dengan alamat backend Anda
    body: {
      'username': username,
      'password': password,
      'login': '1', // Parameter untuk menentukan jenis permintaan (login)
    },
  );

  if (response.statusCode == 200) {
    // Berhasil terhubung dengan backend
    final data = jsonDecode(response.body);
    print(data['message']); // Pesan respons dari backend
    return true; // Mengembalikan true jika login berhasil
  } else {
    // Terjadi kesalahan saat terhubung dengan backend
    print('Error: ${response.reasonPhrase}');
    return false; // Mengembalikan false jika login gagal
  }
}

