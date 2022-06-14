import 'package:flutter/material.dart';

class PassWordFild extends StatefulWidget {
  final String hintText;
  final String lavelText;
  PassWordFild({Key? key, required this.hintText, required this.lavelText})
      : super(key: key);

  @override
  State<PassWordFild> createState() => _PassWordFildState();
}

class _PassWordFildState extends State<PassWordFild> {
  var _showPassWord = false;
  @override
  void initState() {
    _showPassWord = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: _showPassWord,
      decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: Colors.grey.shade200,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          suffixIcon: IconButton(
            icon: _showPassWord
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _showPassWord = !_showPassWord;
              });
            },
          )),
    );
  }
}
