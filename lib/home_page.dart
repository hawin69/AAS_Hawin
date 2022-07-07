import 'package:aas_0074/list_page.dart';
import 'package:aas_0074/login_page.dart';
import 'package:aas_0074/sign_up.dart';
import 'package:aas_0074/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Image.asset(
                'assets/logo.png',
                width: 116,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 32, left: 32),
              height: 52,
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }));
                },
                child: Text(
                  'Sign Up',
                  style: tombol_signup,
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromRGBO(146, 244, 130, 1),
                    side: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 2)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 32, left: 32),
              height: 52,
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  'Login',
                  style: tombol_login,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListPage();
                }));
              },
              child: Text(
                'Continue as a guest',
                style: textguest,
              ),
            )
          ],
        ),
      ),
    );
  }
}
