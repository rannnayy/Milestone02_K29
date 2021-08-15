import 'package:flutter/material.dart';

class BottomNavigationCleanOut extends StatefulWidget {
  @override
  _BottomNavigationCleanOutState createState() =>
      _BottomNavigationCleanOutState();
}

class _BottomNavigationCleanOutState extends State<BottomNavigationCleanOut> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? new Icon(Icons.home)
                    : new Icon(Icons.home),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? new Icon(Icons.article)
                    : new Icon(Icons.article),
                title: Text('Activity')),
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? new Icon(Icons.person)
                    : new Icon(Icons.person),
                title: Text('My Account')),
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? new Icon(Icons.settings)
                    : new Icon(Icons.settings),
                title: Text('Settings'))
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0),
    );
  }
}
