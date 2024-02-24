import 'package:bottom_nav_demo/screens/about_us_page.dart';
import 'package:bottom_nav_demo/screens/contact_us_page.dart';
import 'package:bottom_nav_demo/screens/home_page.dart';
import 'package:flutter/material.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    ContactUsPage(),
    AboutUsPage(),
    Icon(Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone), label: 'Contact Us'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), label: 'About us'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
      appBar: AppBar(
        title: const Text('My App'),
      ),

      body: pages[_currentIndex],
    );
  }
}
