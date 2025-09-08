import 'package:flutter/material.dart';
import 'package:mobikad/components/button_custom.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_sharp, size: 100, color: Colors.grey[800]),
                
                SizedBox(height: 20),
                Text("Mobikad", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.grey[800])),
                SizedBox(height: 40),
                
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

                SizedBox(height: 20),

                ButtonCustom(onTap: () {}, text: "Login"),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(width: 4),
                    Text("Register now", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  ]
                )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
