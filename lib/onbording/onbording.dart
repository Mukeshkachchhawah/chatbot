import 'package:chatbot/app_widget/custom_container.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: MyCpliper(),
            child: Container(
              height: 300,
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
            "Let's Sign In",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sign in with",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
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
          SizedBox(
            height: 40,
          ),
          CustomContaineButton(
            text1: "Start with email or phone",
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              TextButton(onPressed: () {}, child: Text("sign in"))
            ],
          )
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
    mPath.cubicTo(size.width * 0.75, size.height, size.width * 0.25,
        size.height * 0.5, 0, size.height * 0.7);

    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw true;
  }
}
