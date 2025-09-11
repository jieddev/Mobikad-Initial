import 'package:flutter/material.dart';
import 'package:mobikad/screens/map_screen.dart';
// import 'package:mobikad/services/auth/login_or_register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}
