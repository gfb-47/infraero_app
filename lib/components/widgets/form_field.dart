import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFormFied extends StatelessWidget {
  const MyFormFied({
    Key? key,
    required this.name,
    this.isPassword = false,
  }) : super(key: key);

  final String name;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      placeholder: name,
      placeholderStyle: const TextStyle(color: Colors.white54),
      obscureText: isPassword,
      decoration: const BoxDecoration(
          color: Colors.green,
          border: Border(bottom: BorderSide(color: Colors.white54))),
    );
  }
}
