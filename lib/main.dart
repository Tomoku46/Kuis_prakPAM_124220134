import 'package:flutter/material.dart';

import 'package:kuis_prakpam_124220134/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'homepage',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Loginpage(),
    );
  }
}