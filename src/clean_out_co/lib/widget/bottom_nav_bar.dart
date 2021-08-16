import 'package:clean_out_co/pages/bantuan.dart';
import 'package:clean_out_co/pages/main_page.dart';
import 'package:clean_out_co/pages/profile_page.dart';
import 'package:clean_out_co/pages/ready_order.dart';
import 'package:clean_out_co/pages/save_our_planet.dart';
import 'package:flutter/material.dart';

class BottomNavigationCleanOut extends StatefulWidget {
  @override
  _BottomNavigationCleanOutState createState() =>
      _BottomNavigationCleanOutState();
}

class _BottomNavigationCleanOutState extends State<BottomNavigationCleanOut> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    ReadyOrder(), // Activity()
    ProfilePage(),
    SaveOurPlanet(), // Setting()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 52,
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            showUnselectedLabels: true,
            elevation: 0
        ),),
    );
  }
}