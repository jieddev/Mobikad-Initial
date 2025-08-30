import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is Mobikad Application'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text(
            "A Tricycle ride-hailing app to use for your goods or emergency travels.",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],

            )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
          child: Text("Click me"),
        ),
      ),
    ),
  );
}
