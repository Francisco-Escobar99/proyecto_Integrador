import 'package:flutter/material.dart';
import 'package:app_proyecto/presentation/pages/login/login_welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppQuoware',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginWelcome(),
    );
  }
}
