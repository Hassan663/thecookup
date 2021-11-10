import 'package:cookup/views/chips.dart';
import 'package:cookup/views/interest.dart';
import 'package:cookup/views/login.dart';
import 'package:cookup/views/profile_pic_shape.dart';
import 'package:cookup/views/settings.dart';
import 'package:flutter/material.dart';

void main() {;
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
      home: const InterestScreen(),
    );
  }
}
