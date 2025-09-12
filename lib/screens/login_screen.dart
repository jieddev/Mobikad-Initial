import 'package:flutter/material.dart';
import 'package:mobikad/components/button_custom.dart';
import 'package:mobikad/components/textfield_custom.dart';
import 'package:mobikad/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;

  const LoginScreen({super.key, required this.onTap});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void handleUserLogin() async {
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signInWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: ${e.toString()}')),
      );
    }
  }

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
                Icon(
                  Icons.location_on_sharp,
                  size: 100,
                  color: Colors.grey[800],
                ),

                SizedBox(height: 20),
                Text(
                  "Mobikad",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
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

                ButtonCustom(onTap: handleUserLogin, text: "Login"),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
