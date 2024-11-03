import 'dart:convert';
import 'package:http/http.dart' as http;


Future<bool> register(String email, String phoneNumber, String password) async {
  final url = Uri.parse('http://localhost/origet/register.php');

  try {
    final response = await http.post(
      url,
      body: {
        'username': email,
        'no_hp': phoneNumber,
        'password': password,
        'register': '1', // Parameter untuk menentukan jenis permintaan (register)
      },
    );

    if (response.statusCode == 200) {
      // Berhasil terhubung dengan backend
      final data = json.decode(response.body);
      print(data['message']); // Pesan respons dari backend
      
      // Registrasi berhasil
      return true;
    } else {
      // Terjadi kesalahan saat terhubung dengan backend
      print('Error: ${response.reasonPhrase}');
      
      // Registrasi gagal
      return false;
    }
  } catch (error) {
    print('Error: $error');
    
    // Registrasi gagal karena error
    return false;
  }
}
