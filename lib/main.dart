import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// 👇 Your custom pages .
import 'package:super1/Labubu.dart'; // Fav
import 'package:super1/Labubu2.dart'; // Home
import 'package:super1/Login.dart';
import 'package:super1/User.dart'; // Profile

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  // 🔁 Pages match icons by index
  final List<Widget> _pages = [
    Labubu2(), // Home
    Labubu(), // Fav
    Login(), // Profile
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: _pages[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            // 0 - Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.grey,
            ),

            // 1 - Fav
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Fav"),
              selectedColor: Colors.grey,
            ),

            // 2 - Profile (User)
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
