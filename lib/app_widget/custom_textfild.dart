import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  String hinttext;
  String lebText;
  TextEditingController? mycontroller;
  Widget? iconbutton;
  CustomTextFild(
      {super.key,
      required this.hinttext,
      required this.lebText,
      this.mycontroller,
      this.iconbutton});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
          suffixIcon: iconbutton,
          hintText: hinttext,
          labelText: lebText,
          border: OutlineInputBorder()),
    );
  }
}
