import 'package:clean_out_co/pages/bantuan.dart';
import 'package:clean_out_co/pages/home_screen.dart';
import 'package:clean_out_co/pages/profile_page.dart';
import 'package:clean_out_co/pages/search_order.dart';
import 'package:flutter/material.dart';

class BottomNavigationCleanOut extends StatefulWidget {
  @override
  _BottomNavigationCleanOutState createState() =>
      _BottomNavigationCleanOutState();
}

class _BottomNavigationCleanOutState extends State<BottomNavigationCleanOut> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchOrder(),
    ProfilePage(),
    Bantuan()
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
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                title: Text('Activity'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
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
