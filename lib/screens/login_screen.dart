import 'package:flutter/material.dart';
import 'package:mobikad/components/textfield_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Icon(Icons.location_on_sharp, size: 100, color: Colors.grey[800]),
                
                SizedBox(height: 20),
                
                TextFieldCustom(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                SizedBox(height: 20),
                
                TextFieldCustom(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
