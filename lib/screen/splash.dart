import 'package:flutter/material.dart';
import 'package:starbucks/controller.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _pushHome();
  }

  _pushHome() async {
    await Future.delayed(
      Duration(milliseconds: 2500),
      () {},
    );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Controller();
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/icon/logo.png',
          width: 148,
          height: 151,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
