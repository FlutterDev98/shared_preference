import 'package:flutter/material.dart';
import 'package:shared_preference/pages/home_page.dart';
import 'package:shared_preference/pages/signUp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SharedPreference(),
      routes: {
        SharedPreference.id: (context) => SharedPreference(),
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}
