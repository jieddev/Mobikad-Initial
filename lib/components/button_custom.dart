import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const ButtonCustom({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(color: Colors.black),
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
