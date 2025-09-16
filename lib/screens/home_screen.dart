import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mobikad/services/auth/auth_service.dart';
import 'package:mobikad/screens/map_screen.dart';
import 'package:mobikad/components/button_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // final List<Widget> _pages = const [
  //   Center(child: Text('Home Page')),
  //   Center(child: Text('Search Page')),
  //   Center(child: Text('Favorites Page')),
  //   Center(child: Text('Profile Page')),
  // ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void signOut() async {
    final authService = Provider.of<AuthService>(context, listen: false);

    authService.signOut(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: MapScreen(),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}
