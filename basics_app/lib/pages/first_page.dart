import 'package:basics_app/pages/homepage.dart';
import 'package:basics_app/pages/profile_page.dart';
import 'package:basics_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // homepage
    HomePage(),

    // Profile page
    ProfilePage(),
    // settings page
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('First Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            // home
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'.toUpperCase()),
            // profile
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Profile".toUpperCase()),
            // settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
      body: _pages[_selectedIndex],
    );
  }
}
