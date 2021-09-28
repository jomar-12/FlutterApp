// ignore_for_file: prefer_const_constructors

import 'package:demoproject/CustomWidgets/login_entry.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/nicebg.png'),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                  width: 200,
                ),
                SizedBox(height: 40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Column(
                    children: [
                      LoginEntry(hintText: 'Email', icon: Icons.email),
                      SizedBox(height: 20),
                      LoginEntry(hintText: 'Password', icon: Icons.lock),
                      SizedBox(height: 30),
                      InkWell(
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1.05,
                              fontWeight: FontWeight.w400),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(230, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Colors.white,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.white,
                          width: 2.5,
                        )),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    ),
                    onPressed: () {}),
                Container(
                  color: Colors.black.withOpacity(0.4),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do not have an account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('Create Account'),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
