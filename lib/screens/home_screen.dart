import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:mobikad/services/auth/auth_service.dart';
import 'package:mobikad/screens/map_screen.dart';
import 'package:mobikad/screens/profile_screen.dart';
import 'package:mobikad/components/button_navigation_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _screens = const [
    MapScreen(),
    Center(child: Text('Search Page')),
    ProfileScreen(),
  ];

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
        actions: [IconButton(onPressed: signOut, icon: const Icon(Icons.logout_rounded))],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}
