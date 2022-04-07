import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/widgets/form_button.dart';
import '../../components/widgets/form_field.dart';

class EditFlightView extends StatelessWidget {
  const EditFlightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Edit Flight';

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: const <Widget>[
          MyFormFied(name: 'Airport Code'),
          MyFormFied(name: 'Location'),
          FormButton(),
        ],
      ),
    );
  }
}
