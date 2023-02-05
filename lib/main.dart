import 'package:flutter/material.dart';
import 'package:practice_ch6/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 3',
      theme: ThemeData(
        primarySwatch: Colors.purple,),
      home: Home(),
    );
  }
}