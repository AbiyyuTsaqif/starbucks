import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbucks/controller.dart';
import 'package:starbucks/screen/detailedmenu.dart';
import 'package:starbucks/screen/home.dart';
import 'package:starbucks/screen/splash.dart';
import 'package:starbucks/screen/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Starbucks',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: splash(),
    );
  }
}
