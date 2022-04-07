import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      color: Colors.cyan,
      child: const Text('Enviar'),
    );
  }
}
