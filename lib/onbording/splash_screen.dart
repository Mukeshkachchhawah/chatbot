import 'dart:async';

import 'package:chatbot/onbording/onbording.dart';
import 'package:chatbot/onbording/sign_in.dart';
import 'package:chatbot/onbording/sign_up.dart';
import 'package:chatbot/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  static const String LOGINKEY = "LoggedIn";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MysherPre();
    /*  Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBording(),
          ));
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fmeta-q.cdn.bubble.io%2Ff1672952221146x417310664985390140%2FChatbot.png?w=&h=&auto=compress&dpr=1&fit=max",
              scale: 5,
            ),
            Text(
              "ChatBot",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  void MysherPre() async {
    var sherPre = await SharedPreferences.getInstance();
    var isLogin = sherPre.getBool(LOGINKEY);

    Timer(Duration(seconds: 5), () {
      if (isLogin != null) {
        if (isLogin) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignIn(),
              ));
        }
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ));
      }
    });
  }
}
