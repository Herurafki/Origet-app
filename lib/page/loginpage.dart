import 'package:flutter/material.dart';
import 'package:origet_app/widget/customwidget.dart';
import 'package:origet_app/widget/constant.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
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
              height: 260.0,
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
                    'Login to your account',
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
                        image: AssetImage(
                            'assets/logo/ic_baseline-email.png'),
                        height: 31.0,
                        width: 31.0,
                        
                      ),),
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
                        image: AssetImage(
                            'assets/logo/material-symbols_lock.png'),
                        height: 31.0,
                        width: 31.0,
                        
                      ),),
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
                  SizedBox(height: 20.0,),
                  Text(
                    'Forgot your password? Click here',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Inika",
                        color: WarnaCustom.text2Color),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            CustomButton(teks: 'LOGIN', fontcolor: Colors.black, onPressed: () async {
              // bool success = await login(emailController.text, passwordController.text);
              //       if (success) {
              //       Navigator.pushReplacement(
              //         context,
              //         MaterialPageRoute(builder: (context) => Homepage()),
              //       );
              //     }else{
              //     showDialog(
              //       context: context,
              //       builder: (BuildContext context) {
              //         return AlertDialog(
              //           title: Text('Login Gagal'),
              //           content: Text('Username atau password salah.'),
              //           actions: <Widget>[
              //             TextButton(
              //               onPressed: () => Navigator.pop(context),
              //               child: Text('OK'),
              //             ),
              //           ],
              //         );
              //       },
              //     );
              //     }
              Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
            }),
            SizedBox(height: 10,),
            SizedBox(
                width: 355,
                height: 55,
              child:  TextButton( 
                onPressed: () {
                  
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Login with google',style: TextStyle(color: WarnaCustom.text2Color, fontSize: 17, )),
                    SizedBox(width: 20,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.0),
                      child: Image(
                        image: AssetImage(
                            'assets/logo/devicon_google.png'),
                        height: 31.0,
                        width: 31.0,
                        
                      ),),
                      
                  ],
                ),
                style: ElevatedButton.styleFrom(
                backgroundColor: WarnaCustom.button2Color, 
              ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
