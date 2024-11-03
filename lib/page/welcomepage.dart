import 'package:flutter/material.dart';
import 'buatakun.dart';
import 'package:origet_app/widget/constant.dart';
import 'loginpage.dart';


class SignInPage2 extends StatelessWidget {
  const SignInPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gadget Finder',
      home: Scaffold(
        backgroundColor: WarnaCustom.themeColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Origet',style: CustomFont.inika1,
              ),
              SizedBox(height: 20),
              Text('Find Your Own Gagdet',style: TextStyle(fontSize: 24,color: Colors.black,fontFamily: "Inika" ),
              ),
              SizedBox(height: 70),
              SizedBox(
                height: 55,
                width: 355,
              child:  TextButton( 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('LOGIN',style: TextStyle(color: WarnaCustom.text1Color, fontSize: 17, )),
                style: ElevatedButton.styleFrom(
                backgroundColor: WarnaCustom.button1Color,
              ), 
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 355,
                height: 55,
              child:  TextButton( 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount())
                  );
                },
                child: Text('CREATE ACCOUNT',style: TextStyle(color: WarnaCustom.text2Color, fontSize: 17, )),
                style: ElevatedButton.styleFrom(
                backgroundColor: WarnaCustom.button2Color, 
              ),
              ),
              ),
              
            ],
          )),),
    );
  }
}


