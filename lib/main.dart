import 'package:flutter/material.dart';
import 'package:login_bank/constrains/constrains.dart';
import 'package:login_bank/login_bank.dart';

void main() {
  runApp(MyBank());
}

class MyBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blueBank,
        colorScheme: ColorScheme.fromSeed(seedColor: blueBank),
      ),
      home: LoginBank()
    );
  }
}
