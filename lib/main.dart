import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/routes.dart';

import 'view/home_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.routes,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    ),
  );
}
