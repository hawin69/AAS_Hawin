import 'package:aas_0074/list_page.dart';
import 'package:aas_0074/login_page.dart';
import 'package:aas_0074/style.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 41,
                  margin: EdgeInsets.only(top: 56),
                  padding: EdgeInsets.only(right: 340, left: 22),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/back.png',
                      width: 20,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 36),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 194,
                    height: 67,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  height: 56,
                  margin: EdgeInsets.only(bottom: 15, top: 35),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  height: 56,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  height: 56,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  height: 56,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 22, left: 22),
                  height: 56,
                  margin: EdgeInsets.only(bottom: 22, top: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: tombol_signup,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        primary: Color.fromRGBO(30, 35, 44, 1)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 22, right: 20),
                          child: Divider(
                            color: Color.fromARGB(232, 228, 228, 228),
                            thickness: 2,
                          ),
                        ),
                      ),
                      Text("Or Register with"),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 22),
                          child: Divider(
                            color: Color.fromARGB(232, 228, 228, 228),
                            thickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 115,
                      height: 56,
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/fb.png',
                          width: 28,
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            side: BorderSide(
                              color: Color.fromARGB(232, 228, 228, 228),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      width: 115,
                      height: 56,
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/google.png',
                          width: 32,
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            side: BorderSide(
                              color: Color.fromARGB(232, 228, 228, 228),
                            )),
                      ),
                    ),
                    Container(
                      width: 115,
                      height: 56,
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/apple.png',
                          width: 32,
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            side: BorderSide(
                              color: Color.fromARGB(232, 228, 228, 228),
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Already have an account?',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Text(
                          'Login Now',
                          textAlign: TextAlign.center,
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'See Our Product',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ListPage();
                          }));
                        },
                        child: Text(
                          'Here',
                          textAlign: TextAlign.center,
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
