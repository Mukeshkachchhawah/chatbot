import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String text;
  Icon icons;
  CustomContainer({super.key, required this.text, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 175, 173, 173)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          SizedBox(
            width: 8,
          ),
          Text(text)
          // Image.asset(name)
        ],
      ),
    );
  }
}

class CustomContaineButton extends StatelessWidget {
  String text1;
  VoidCallback ontap;
  CustomContaineButton({super.key, required this.text1, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
