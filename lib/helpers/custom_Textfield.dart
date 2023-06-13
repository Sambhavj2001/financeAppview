import 'package:flutter/material.dart';

import '../colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String hinttext;
  final Icon icon;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.text,
    required this.hinttext,
    required this.icon,
    required this.controller,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.03),
              spreadRadius: 10,
              blurRadius: 3,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Color(0xFF67727d),
                ),
              ),
              TextField(
                obscureText: obscureText,
                controller: controller,
                cursorColor: black,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: icon,
                  prefixIconColor: black,
                  hintText: hinttext,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
