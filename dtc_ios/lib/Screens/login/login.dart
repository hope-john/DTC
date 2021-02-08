import 'package:flutter/material.dart';
import 'package:dtc_ios/Screens/register/register.dart';
import 'package:dtc_ios/components/background.dart';
import 'package:dtc_ios/Screens/map.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTextLogin(),
            SizedBox(height: size.height * 0.03),
            buildUser(),
            SizedBox(height: size.height * 0.03),
            buildPassword(),
            buildForgotPassword(),
            SizedBox(height: size.height * 0.05),
            buildButtonLogin(size),
            buildSignUp(context),
            buildMap(context)
          ],
        ),
      ),
    );
  }

  Container buildSignUp(BuildContext context) {
    return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
              },
              child: Text(
                "Don't Have an Account? Sign up",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA)
                ),
              ),
            ),
          );
  }
  Container buildMap(BuildContext context) {
    return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample()))
              },
              child: Text(
                "Check your Location Google map",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA)
                ),
              ),
            ),
          );
  }

  Container buildButtonLogin(Size size) {
    return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.5,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: new LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 136, 34),
                      Color.fromARGB(255, 255, 177, 41)
                    ]
                  )
                ),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          );
  }

  Container buildForgotPassword() {
    return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              "",
              style: TextStyle(
                fontSize: 12,
                color: Color(0XFF2661FA)
              ),
            ),
          );
  }

  Container buildPassword() {
    return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password"
              ),
              obscureText: true,
            ),
          );
  }

  Container buildUser() {
    return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Username"
              ),
            ),
          );
  }

  Container buildTextLogin() {
    return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2661FA),
                fontSize: 36
              ),
              textAlign: TextAlign.left,
            ),
          );
  }
}