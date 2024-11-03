import 'package:flutter/material.dart';
import 'package:origet_app/widget/customwidget.dart';
import 'package:origet_app/widget/constant.dart';
import 'loginpage.dart';
import 'package:origet_app/model/register.dart';
import 'package:origet_app/widget/messagealert.dart';

class CreateAccount extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WarnaCustom.themeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Origet',
              style: CustomFont.inika1,
            ),
            SizedBox(height: 50.0),
            Container(
              height: 333.0,
              width: 355.0,
              decoration: BoxDecoration(
                color: WarnaCustom.formColor,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.0,
                  color: Color.fromARGB(132, 128, 127, 127)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: "Inika",
                      color: WarnaCustom.text2Color),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image(
                          image: AssetImage('assets/logo/ic_baseline-email.png'),
                          height: 31.0,
                          width: 31.0,
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Expanded(
                        child: SizedBox(
                          width: 100.0,
                          child: TextFormField(
                            controller: emailController,
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Masukkan alamat email',
                              hintStyle: TextStyle(color: WarnaCustom.text2Color),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image(
                          image: AssetImage('assets/logo/basil_phone-solid.png'),
                          height: 31.0,
                          width: 31.0,
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Expanded(
                        child: SizedBox(
                          width: 100.0,
                          child: TextFormField(
                            controller: phoneNumberController,
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Masukkan nomor telepon',
                              hintStyle: TextStyle(color: WarnaCustom.text2Color),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image(
                          image: AssetImage('assets/logo/material-symbols_lock.png'),
                          height: 31.0,
                          width: 31.0,
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Expanded(
                        child: SizedBox(
                          width: 100.0,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$').hasMatch(value)) {
                                return 'Password must contain at least one uppercase letter, one lowercase letter, and one digit';
                              } else {
                                return null; // Password valid
                              }
                            },  
                            decoration: const InputDecoration(
                              hintText: 'Masukkan password',
                              hintStyle: TextStyle(color: WarnaCustom.text2Color),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            CustomButton(
              teks: 'SIGN IN', 
              fontcolor: Colors.black, 
              onPressed: () async {
                // Memanggil fungsi register
                bool success = await register(emailController.text, phoneNumberController.text, passwordController.text);

                // Menampilkan pesan sesuai hasil registrasi
                if (!success) {
                  // Jika registrasi berhasil
                  DialogUtils.showMessageDialog(context, 'Registrasi berhasil');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),  
                  );
                } else {
                  // Jika registrasi gagal
                  DialogUtils.showMessageDialog(context, 'Gagal melakukan registrasi');
                }
              }
            )
          ],
        ),
      ),
    );
  }
}
