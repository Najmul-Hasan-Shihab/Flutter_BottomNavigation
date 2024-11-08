import 'package:bottom_navigation/contact_screen.dart';
import 'package:bottom_navigation/dashboard_screen.dart';
import 'package:bottom_navigation/profile_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPageIndex=0;

  void onItemTapped(int index)
  {
    setState(() {
      selectedPageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation', style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: pages.elementAt(selectedPageIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
            backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Contact',
              backgroundColor: Colors.blue),
        ],
        type: BottomNavigationBarType.shifting,
            currentIndex: selectedPageIndex,
            selectedItemColor: Colors.blue,
            iconSize: 25,
            onTap: onItemTapped
            ,)
      );
  }


List<Widget> pages=<Widget>[
  Dashboard(),
  ProfileScreen(),
  ContactScreen(),
];
}