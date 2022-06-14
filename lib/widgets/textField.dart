import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String lavelText;
  CustomTextField({
    Key? key,
    required this.hintText,
    required this.lavelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.grey.shade200,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
