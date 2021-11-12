import 'package:cookup/views/interest.dart';
import 'package:cookup/views/login.dart';
import 'package:cookup/views/pers_profile.dart';
import 'package:cookup/views/photo_icon_chng.dart';
import 'package:cookup/views/tcu_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
