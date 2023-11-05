import 'package:chatbot/app_widget/custom_textfild.dart';
import 'package:chatbot/onbording/sign_up.dart';
import 'package:chatbot/screens/home_page.dart';
import 'package:flutter/material.dart';

import '../app_widget/custom_container.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: MyCpliper(),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                //  color: Color.fromARGB(255, 2, 6, 41),
                // image: DecorationImage(
                //     image: AssetImage("assets/images/robot-png.png"),
                //     scale: 5)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Image.asset(
                  "assets/images/robot-png.png",
                  scale: 3,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign In",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFild(hinttext: "Enter Your Email", lebText: "Email"),
          SizedBox(
            height: 20,
          ),
          CustomTextFild(hinttext: "Enter Your Password", lebText: "Passwrod"),
          SizedBox(
            height: 20,
          ),
          Center(
              child: CustomContaineButton(
                  text1: "Sign In",
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  })),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("create new account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  child: Text("sign up"))
            ],
          ),
          Center(child: Text("Sign in with")),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomContainer(text: "fackbook", icons: Icon(Icons.facebook)),
              CustomContainer(text: "Google", icons: Icon(Icons.gps_off)),
              CustomContainer(text: "Micosoft", icons: Icon(Icons.gps_off)),
            ],
          ),
        ],
      ),
    );
  }
}

/// use clippath widget
class MyCpliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width, size.height * 0.75);

    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw true;
  }
}
