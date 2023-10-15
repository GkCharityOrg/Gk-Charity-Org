// ignore: file_names
import 'package:flutter/material.dart';
import 'package:gk_educational_charity_org/controller/chartProgressController.dart';
import 'package:gk_educational_charity_org/screens/explore.dart';
import 'package:gk_educational_charity_org/screens/heart.dart';
import 'package:gk_educational_charity_org/screens/notifications.dart';
import 'package:gk_educational_charity_org/screens/test.dart';
import 'package:gk_educational_charity_org/screens/volunteers.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Heart(),
    // Categeries(),
    const Explore(),
    BarChart(),
    // filepick(),
    // TestHomePage(),
    const NotificationsPage(),
    Volunteer(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        elevation: 0,
        iconSize: 32,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.heart_1),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.signal),
            label: "Signal",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.bell_1),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            label: "Profile",
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
