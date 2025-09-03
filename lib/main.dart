import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobikad'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blue[900],
              child: Text(
                "First Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blue[900],
              child: Text(
                "Second Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blue[900],
              child: Text(
                "Third Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        child: Text("Click me"),
      ),
    );
  }
}
