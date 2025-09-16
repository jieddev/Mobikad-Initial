import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF133A70),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/Profile_Picture.jpeg'),
              ),
            ),
            Divider(color: Colors.grey[800], height: 60.0),
            Text(
              "Name",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Text(
              "Cherry Mie Florentino",
              style: TextStyle(
                color: Color(0xFF133A70),
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Address",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Text(
              "Brgy. Margen, Ormoc City, Leyte",
              style: TextStyle(
                color: Color(0xFF133A70),
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Reputation Score",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Text(
              "95",
              style: TextStyle(
                color: Color(0xFF133A70),
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Contacts",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10.0),
                Text("cherrymieflorentino@gmail.com"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.grey[400]),
                SizedBox(width: 10.0),
                Text("09510353733"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}